/*
 * app_m7.c
 *
 *  Created on: 26 ago 2026
 *      Author: frand
 */




#include "app_m7.h"
#include "shared_flag.h"
#include "cmsis_os2.h"
#include <stdio.h>
#include <string.h>

__attribute__((section(".shared_data")))
shared_flag_t g_shared_flag;   /* unica definicion real, vive en RAM_D3 */

static UART_HandleTypeDef *s_huart;

static void SendId(void)
{
  static const char msg[] = "\r\n[CM7] arrancado.\r\n";
  HAL_UART_Transmit(s_huart, (uint8_t *)msg, strlen(msg), HAL_MAX_DELAY);
}

/* interrupcion HSEM: el M4 libero el semaforo -> hay flag nuevo */
void HAL_HSEM_FreeCallback(uint32_t SemMask)
{
  if (SemMask & (1U << HSEM_ID_FLAG_NOTIFY))
  {
    char buf[64];
    int n = snprintf(buf, sizeof(buf), "[CM4] recibido, flag=%lu\r\n",
                      (unsigned long)g_shared_flag.flag);
    HAL_UART_Transmit(s_huart, (uint8_t *)buf, n, HAL_MAX_DELAY);
    HAL_HSEM_ActivateNotification(1U << HSEM_ID_FLAG_NOTIFY);
  }
}

static void TaskFn(void *arg)
{
  uint32_t counter = 0;
  for (;;)
  {
    osDelay(1000);
    counter++;
    HAL_HSEM_FastTake(HSEM_ID_FLAG_NOTIFY);
    g_shared_flag.flag = counter;
    HAL_HSEM_Release(HSEM_ID_FLAG_NOTIFY, 0);   /* dispara IRQ en el M4 */
  }
}

void App_M7_Init(UART_HandleTypeDef *huart)
{
  s_huart = huart;
  SendId();
  HAL_HSEM_ActivateNotification(1U << HSEM_ID_FLAG_NOTIFY);
}

void App_M7_CreateTask(void)
{
  const osThreadAttr_t attrs = { .name = "AppM7", .stack_size = 512*4,
                                  .priority = (osPriority_t) osPriorityLow };
  osThreadNew(TaskFn, NULL, &attrs);
}
