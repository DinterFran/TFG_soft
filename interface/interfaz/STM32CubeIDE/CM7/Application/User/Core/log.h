/*
 * log.h  —  Log por UART desde una tarea (CM7)
 *
 *  - Log_Printf():       desde TAREAS (formatea y encola, no bloquea).
 *  - Log_ValueFromISR(): desde INTERRUPCIONES (solo encola un texto fijo + un numero).
 *  - La UART la usa unicamente LogTask. Nunca transmitir por UART dentro de una ISR.
 */

#ifndef APPLICATION_USER_CORE_LOG_H_
#define APPLICATION_USER_CORE_LOG_H_

#include "stm32h7xx_hal.h"
#include <stdint.h>

void Log_Init(UART_HandleTypeDef *huart);   /* antes de usar cualquier Log_* */
void Log_CreateTask(void);                  /* despues de osKernelInitialize() */

void Log_Printf(const char *fmt, ...);                     /* SOLO desde tareas */
void Log_ValueFromISR(const char *tag, uint32_t value);    /* SOLO desde ISR; tag = literal */

uint32_t Log_GetDropped(void);  /* mensajes perdidos por cola llena */

#endif /* APPLICATION_USER_CORE_LOG_H_ */
