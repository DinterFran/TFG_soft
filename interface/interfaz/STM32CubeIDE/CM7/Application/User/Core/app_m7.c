/*
 * app_m7.c  —  Sesion 1
 *
 *  - Cada 1 s escribe from_m7 y libera HSEM_ID_M7_TO_M4 (interrumpe al M4).
 *  - Recibe la interrupcion de HSEM_ID_M4_TO_M7 y la manda al log (sin UART en la ISR).
 *  - Cada 10 s loguea el heap libre (sirve para la prueba de WaitingScreen).
 */

#include "app_m7.h"
#include "shared_flag.h"
#include "log.h"
#include "cmsis_os2.h"
#include "FreeRTOS.h"

__attribute__((section(".shared_data")))
shared_flag_t g_shared_flag;   /* vive en RAM_D3 (SRAM4), no cacheable por MPU */

/* ISR: el M4 libero su semaforo -> hay dato nuevo del M4.
 * Solo encola para el log; nada de UART ni snprintf aca. */
void HAL_HSEM_FreeCallback(uint32_t SemMask)
{
  if (SemMask & __HAL_HSEM_SEMID_TO_MASK(HSEM_ID_M4_TO_M7))
  {
    Log_ValueFromISR("[M4] n=", g_shared_flag.from_m4);
    Log_ValueFromISR("[M4] eco M7=", g_shared_flag.echo_m7);

    /* HAL_HSEM_IRQHandler desactiva la notificacion: hay que reactivarla */
    HAL_HSEM_ActivateNotification(__HAL_HSEM_SEMID_TO_MASK(HSEM_ID_M4_TO_M7));
  }
}

static void TaskFn(void *arg)
{
  (void)arg;
  uint32_t counter = 0;

  for (;;)
  {
    osDelay(1000);
    counter++;

    g_shared_flag.from_m7 = counter;
    __DMB();                                     /* el dato antes que el aviso */
    HAL_HSEM_FastTake(HSEM_ID_M7_TO_M4);
    HAL_HSEM_Release(HSEM_ID_M7_TO_M4, 0);       /* dispara IRQ en el M4 */

    if ((counter % 10U) == 0U)
    {
      Log_Printf("[CM7] t=%lus heap libre=%u perdidos log=%lu",
                 (unsigned long)counter,
                 (unsigned)xPortGetFreeHeapSize(),
                 (unsigned long)Log_GetDropped());
    }
  }
}

void App_M7_Init(void)
{
  Log_Printf("[CM7] arrancado");
  HAL_HSEM_ActivateNotification(__HAL_HSEM_SEMID_TO_MASK(HSEM_ID_M4_TO_M7));
}

void App_M7_CreateTask(void)
{
  const osThreadAttr_t attrs = {
    .name       = "AppM7",
    .stack_size = 512 * 4,
    .priority   = (osPriority_t)osPriorityLow,
  };
  osThreadNew(TaskFn, NULL, &attrs);
}
