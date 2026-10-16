/*
 * app_m7.h
 *
 *  Created on: 26 ago 2026
 *      Author: frand
 */

#ifndef APPLICATION_USER_CORE_APP_M7_H_
#define APPLICATION_USER_CORE_APP_M7_H_

#include "main.h"

void App_M7_Init(void);        /* activa la notificacion HSEM M4->M7 */
void App_M7_CreateTask(void);  /* despues de osKernelInitialize()    */

#endif /* APPLICATION_USER_CORE_APP_M7_H_ */
