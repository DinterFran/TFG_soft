/*
 * shared_flag.h
 *
 *  Created on: 26 ago 2026
 *      Author: frand
 */

#ifndef APPLICATION_USER_CORE_SHARED_FLAG_H_
#define APPLICATION_USER_CORE_SHARED_FLAG_H_

#include <stdint.h>

#define HSEM_ID_SYNC_BOOT   (0U)   /* reservado por CubeMX, no tocar */
#define HSEM_ID_FLAG_NOTIFY (1U)   /* el que usamos nosotros */

typedef struct
{
  volatile uint32_t flag;
  volatile uint32_t counter;
} shared_flag_t;

extern shared_flag_t g_shared_flag;



#endif /* APPLICATION_USER_CORE_SHARED_FLAG_H_ */
