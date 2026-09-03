#include "app_m4.h"
#include "shared_flag.h"
#include "cmsis_os2.h"

__attribute__((section(".shared_data")))
shared_flag_t g_shared_flag;   /* misma direccion fisica que en el CM7 */

static void TaskFn(void *arg)
{
  uint32_t counter = 1000;
  for (;;)
  {
    osDelay(1500);
    counter++;
    HAL_HSEM_FastTake(HSEM_ID_FLAG_NOTIFY);
    g_shared_flag.flag = counter;
    HAL_HSEM_Release(HSEM_ID_FLAG_NOTIFY, 0);   /* dispara IRQ en el M7 */
  }
}

void App_M4_Init(void)
{
  /* nada que inicializar por ahora: no hay UART de este lado */
}

void App_M4_CreateTask(void)
{
  const osThreadAttr_t attrs = { .name = "AppM4", .stack_size = 512*4,
                                  .priority = (osPriority_t) osPriorityNormal };
  osThreadNew(TaskFn, NULL, &attrs);
}
