/*
 * shared_flag.h
 *
 *  Created on: 26 ago 2026
 *      Author: frand
 */

#ifndef APPLICATION_USER_CORE_SHARED_FLAG_H_
#define APPLICATION_USER_CORE_SHARED_FLAG_H_


/* Semaforo 0: lo usa CubeMX por defecto para el arranque sincronizado
 * (CM4 espera a que CM7 configure los relojes antes de arrancar).
 * NO lo toques si tu proyecto ya lo genera automaticamente. */
#define HSEM_ID_SYNC_BOOT   (0U)

/* Semaforo 1: lo usamos nosotros para avisar "hay un flag nuevo".
 * Cuando un nucleo hace HAL_HSEM_FastTake() + HAL_HSEM_Release() de este
 * semaforo, el OTRO nucleo recibe una interrupcion HSEM si la tiene
 * habilitada (HAL_HSEM_ActivateNotification). */
#define HSEM_ID_FLAG_NOTIFY (1U)

typedef enum
{
  FLAG_SRC_NONE = 0,
  FLAG_SRC_M7   = 1,
  FLAG_SRC_M4   = 2,
} flag_source_t;

typedef struct
{
  volatile uint32_t flag;
  volatile uint32_t counter;
  volatile flag_source_t last_writer;
} shared_flag_t;

/* Instancia unica, compartida, ubicada en SRAM4 (D3).
 * La definicion real (sin extern) va una sola vez, en app_m7.c,
 * con __attribute__((section(".shared_data"))). */
extern shared_flag_t g_shared_flag;


#endif /* APPLICATION_USER_CORE_SHARED_FLAG_H_ */
