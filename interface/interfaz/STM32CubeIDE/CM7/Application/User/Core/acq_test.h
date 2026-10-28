/*
 * acq_test.h  —  Sesion 2
 *
 *  Tarea de PRUEBA del bus: cada 10 ms lee una trama de 6 bytes de cada
 *  Arduino y cada 1 s loguea estadisticas. No es todavia la AcqTask final
 *  (esa va a empujar al ring SPSC y correr solo durante el patron).
 *
 *  Trama (la arma el Arduino):
 *    [0] 0xA5  cabecera
 *    [1] id    1 o 2
 *    [2] seq   contador que sube 1 por trama leida
 *    [3] val_H
 *    [4] val_L
 *    [5] xor de [0..4]
 */

#ifndef APPLICATION_USER_CORE_ACQ_TEST_H_
#define APPLICATION_USER_CORE_ACQ_TEST_H_

#include <stdint.h>

#define ACQ_FRAME_LEN     6U
#define ACQ_FRAME_HDR     0xA5U
#define ACQ_PERIOD_MS     10U

/* Poner en 0 para probar con un solo Arduino conectado (paso 6 de la guia) */
#ifndef ACQ_TEST_USE_MICRO2
#define ACQ_TEST_USE_MICRO2   1   /* S2 paso 21: los dos Arduinos */
#endif

void Acq_Test_CreateTask(void);   /* despues de osKernelInitialize() */

#endif /* APPLICATION_USER_CORE_ACQ_TEST_H_ */
