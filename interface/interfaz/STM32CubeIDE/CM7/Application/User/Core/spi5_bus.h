/*
 * spi5_bus.h  —  Sesion 2
 *
 *  Bus SPI5 compartido entre:
 *    - MAX7219 (cadena de 4 matrices)  CS_MAX    = PK1 (D10)
 *    - Arduino 1                        CS_Micro1 = PJ6 (D9)
 *    - Arduino 2                        CS_Micro2 = PJ5 (D8)
 *  SCK = PK0 (D13), MISO = PJ11 (D12), MOSI = PJ10 (D11)
 *
 *  Regla: toda transaccion es  lock -> CS bajo -> transferir -> CS alto -> unlock.
 *  Antes de que arranque el scheduler el mutex no se usa (no hace falta).
 */

#ifndef APPLICATION_USER_CORE_SPI5_BUS_H_
#define APPLICATION_USER_CORE_SPI5_BUS_H_

#include "main.h"
#include <stdint.h>

typedef enum {
  SPI5_DEV_MAX7219 = 0,
  SPI5_DEV_MICRO1,
  SPI5_DEV_MICRO2,
  SPI5_DEV_COUNT
} spi5_dev_t;

/* Tiempos para los Arduinos (esclavo AVR por interrupcion) */
#define SPI5_MICRO_CS_SETUP_US   50U   /* CS bajo -> primer flanco de SCK (el AVR carga SPDR) */
#define SPI5_MICRO_CS_HOLD_US    10U   /* ultimo byte -> CS alto                              */
#define SPI5_MICRO_CS_GAP_US     30U   /* CS alto -> siguiente seleccion (el AVR suelta MISO) */

void SPI5_Bus_Init(void);   /* crea el mutex y habilita DWT. Idempotente. Antes del scheduler. */

void SPI5_Bus_Lock(void);
void SPI5_Bus_Unlock(void);
void SPI5_Bus_Select(spi5_dev_t dev);
void SPI5_Bus_Deselect(spi5_dev_t dev);

/* Transaccion completa con lock + CS incluidos */
HAL_StatusTypeDef SPI5_Bus_Transmit(spi5_dev_t dev, uint8_t *tx, uint16_t len, uint32_t timeout);
HAL_StatusTypeDef SPI5_Bus_TransmitReceive(spi5_dev_t dev, uint8_t *tx, uint8_t *rx,
                                           uint16_t len, uint32_t timeout);

void SPI5_DelayUs(uint32_t us);   /* espera activa con DWT->CYCCNT */

#endif /* APPLICATION_USER_CORE_SPI5_BUS_H_ */
