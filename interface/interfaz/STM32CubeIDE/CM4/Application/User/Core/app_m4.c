/*
 * app_m4.c  —  Sesion 1
 *
 *  - Recibe la interrupcion de HSEM_ID_M7_TO_M4 y guarda el ultimo from_m7.
 *  - Cada 1,5 s escribe from_m4 (contador) y echo_m7 (ultimo valor del M7)
 *    y libera HSEM_ID_M4_TO_M7 (interrumpe al M7).
 *  El M4 no tiene UART: lo que pasa aca se ve en el log del M7.
 */

#include "app_m4.h"
#include "shared_flag.h"
#include "cmsis_os2.h"

__attribute__((section(".shared_data")))
shared_flag_t g_shared_flag;   /* misma direccion fisica que en el CM7 */

static volatile uint32_t s_last_from_m7;

/* ISR: el M7 libero su semaforo -> hay dato nuevo del M7 */
void HAL_HSEM_FreeCallback(uint32_t SemMask)
{
  if (SemMask & __HAL_HSEM_SEMID_TO_MASK(HSEM_ID_M7_TO_M4))
  {
    s_last_from_m7 = g_shared_flag.from_m7;
    HAL_HSEM_ActivateNotification(__HAL_HSEM_SEMID_TO_MASK(HSEM_ID_M7_TO_M4));
  }
}

static void TaskFn(void *arg)
{
  (void)arg;
  uint32_t counter = 1000;

  for (;;)
  {
    osDelay(1500);
    counter++;

    g_shared_flag.from_m4 = counter;
    g_shared_flag.echo_m7 = s_last_from_m7;
    __DMB();
    HAL_HSEM_FastTake(HSEM_ID_M4_TO_M7);
    HAL_HSEM_Release(HSEM_ID_M4_TO_M7, 0);   /* dispara IRQ en el M7 */
  }
}

void App_M4_Init(void)
{
  HAL_HSEM_ActivateNotification(__HAL_HSEM_SEMID_TO_MASK(HSEM_ID_M7_TO_M4));
}

void App_M4_CreateTask(void)
{
  const osThreadAttr_t attrs = {
    .name       = "AppM4",
    .stack_size = 512 * 4,
    .priority   = (osPriority_t)osPriorityNormal,
  };
  osThreadNew(TaskFn, NULL, &attrs);
}
