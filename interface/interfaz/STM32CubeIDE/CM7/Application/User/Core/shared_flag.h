/*
 * shared_flag.h  —  MISMO archivo en CM7 y CM4 (copiarlo igual en los dos)
 *
 *  Sesion 1: un HSEM por sentido y un campo por nucleo.
 *  Cada campo lo escribe UN solo nucleo -> no hay pisadas.
 */

#ifndef APPLICATION_USER_CORE_SHARED_FLAG_H_
#define APPLICATION_USER_CORE_SHARED_FLAG_H_

#include <stdint.h>

/* HSEM 0: arranque sincronizado generado por CubeMX. NO TOCAR. */
#define HSEM_ID_SYNC_BOOT   (0U)

/* Un semaforo por sentido. Cada nucleo activa la notificacion
 * SOLO del semaforo que libera el otro nucleo. */
#define HSEM_ID_M4_TO_M7    (1U)   /* lo libera el M4 -> interrumpe al M7 */
#define HSEM_ID_M7_TO_M4    (2U)   /* lo libera el M7 -> interrumpe al M4 */

typedef struct
{
  volatile uint32_t from_m7;   /* escribe SOLO el M7 (contador del M7)        */
  volatile uint32_t from_m4;   /* escribe SOLO el M4 (contador del M4)        */
  volatile uint32_t echo_m7;   /* escribe SOLO el M4 (ultimo from_m7 que vio) */
} shared_flag_t;

/* Instancia unica en SRAM4 (0x38000000), seccion .shared_data.
 * Se define en app_m7.c y en app_m4.c (cada binario tiene la suya,
 * pero las dos caen en la misma direccion fisica). */
extern shared_flag_t g_shared_flag;

#endif /* APPLICATION_USER_CORE_SHARED_FLAG_H_ */
