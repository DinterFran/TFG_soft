/*
 * log.c  —  Log por UART desde una tarea (CM7)
 */

#include "log.h"
#include "cmsis_os2.h"
#include "FreeRTOS.h"
#include "queue.h"
#include <stdio.h>
#include <stdarg.h>

#define LOG_QUEUE_LEN   16
#define LOG_TEXT_LEN    64

typedef struct
{
  const char *tag;            /* != NULL -> mensaje de ISR: "tag" + value */
  uint32_t    value;
  char        text[LOG_TEXT_LEN];
} log_item_t;

static UART_HandleTypeDef *s_huart;
static QueueHandle_t       s_queue;
static volatile uint32_t   s_dropped;

void Log_Init(UART_HandleTypeDef *huart)
{
  s_huart = huart;
  s_queue = xQueueCreate(LOG_QUEUE_LEN, sizeof(log_item_t));
}

void Log_Printf(const char *fmt, ...)
{
  log_item_t item;
  item.tag   = NULL;
  item.value = 0;

  va_list ap;
  va_start(ap, fmt);
  vsnprintf(item.text, sizeof(item.text), fmt, ap);
  va_end(ap);

  if ((s_queue == NULL) || (xQueueSend(s_queue, &item, 0) != pdTRUE))
  {
    s_dropped++;
  }
}

void Log_ValueFromISR(const char *tag, uint32_t value)
{
  log_item_t item;
  item.tag     = tag;
  item.value   = value;
  item.text[0] = '\0';

  BaseType_t woken = pdFALSE;
  if ((s_queue == NULL) || (xQueueSendFromISR(s_queue, &item, &woken) != pdTRUE))
  {
    s_dropped++;
  }
  portYIELD_FROM_ISR(woken);
}

uint32_t Log_GetDropped(void)
{
  return s_dropped;
}

static void LogTask(void *arg)
{
  (void)arg;
  log_item_t item;
  char line[96];

  for (;;)
  {
    if (xQueueReceive(s_queue, &item, portMAX_DELAY) == pdTRUE)
    {
      int n;
      if (item.tag != NULL)
      {
        n = snprintf(line, sizeof(line), "%s%lu\r\n", item.tag, (unsigned long)item.value);
      }
      else
      {
        n = snprintf(line, sizeof(line), "%s\r\n", item.text);
      }
      if (n < 0)                    { continue; }
      if (n > (int)sizeof(line) - 1) { n = (int)sizeof(line) - 1; }

      HAL_UART_Transmit(s_huart, (uint8_t *)line, (uint16_t)n, 100);
    }
  }
}

void Log_CreateTask(void)
{
  const osThreadAttr_t attrs = {
    .name       = "Log",
    .stack_size = 384 * 4,
    .priority   = (osPriority_t)osPriorityBelowNormal,
  };
  osThreadNew(LogTask, NULL, &attrs);
}
