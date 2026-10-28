/*
 * spi5_bus.c  —  Sesion 2
 *
 *  Reemplaza el mutex privado que tenia led_matrix_control.c (Sesion 1):
 *  ahora el mutex es del BUS, y lo comparten la LEDTask/TouchGFX (MAX7219)
 *  y la tarea de adquisicion (Arduinos).
 */

#include "spi5_bus.h"
#include "FreeRTOS.h"
#include "semphr.h"
#include "task.h"

extern SPI_HandleTypeDef hspi5;

static SemaphoreHandle_t s_bus_mutex = NULL;

/* ---------- Delay en microsegundos (DWT) ---------- */

static void dwt_init(void)
{
  CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk;
  DWT->LAR = 0xC5ACCE55;            /* desbloqueo, necesario en el M7 */
  DWT->CYCCNT = 0;
  DWT->CTRL |= DWT_CTRL_CYCCNTENA_Msk;
}

void SPI5_DelayUs(uint32_t us)
{
  const uint32_t start  = DWT->CYCCNT;
  const uint32_t cycles = us * (SystemCoreClock / 1000000U);
  while ((DWT->CYCCNT - start) < cycles) { }
}

/* ---------- Mutex ---------- */

static int rtos_running(void)
{
  return (s_bus_mutex != NULL) &&
         (xTaskGetSchedulerState() == taskSCHEDULER_RUNNING);
}

void SPI5_Bus_Init(void)
{
  if (s_bus_mutex == NULL) {
    s_bus_mutex = xSemaphoreCreateMutex();
    dwt_init();
  }
}

void SPI5_Bus_Lock(void)
{
  if (rtos_running()) { xSemaphoreTake(s_bus_mutex, portMAX_DELAY); }
}

void SPI5_Bus_Unlock(void)
{
  if (rtos_running()) { xSemaphoreGive(s_bus_mutex); }
}

/* ---------- Chip selects (etiquetas de CubeMX) ---------- */

static void cs_write(spi5_dev_t dev, GPIO_PinState st)
{
  switch (dev) {
    case SPI5_DEV_MAX7219: HAL_GPIO_WritePin(CS_MAX_GPIO_Port,    CS_MAX_Pin,    st); break;
    case SPI5_DEV_MICRO1:  HAL_GPIO_WritePin(CS_Micro1_GPIO_Port, CS_Micro1_Pin, st); break;
    case SPI5_DEV_MICRO2:  HAL_GPIO_WritePin(CS_Micro2_GPIO_Port, CS_Micro2_Pin, st); break;
    default: break;
  }
}

void SPI5_Bus_Select(spi5_dev_t dev)   { cs_write(dev, GPIO_PIN_RESET); }
void SPI5_Bus_Deselect(spi5_dev_t dev) { cs_write(dev, GPIO_PIN_SET);   }

/* ---------- Transacciones completas ---------- */

HAL_StatusTypeDef SPI5_Bus_Transmit(spi5_dev_t dev, uint8_t *tx, uint16_t len, uint32_t timeout)
{
  SPI5_Bus_Lock();
  SPI5_Bus_Select(dev);
  HAL_StatusTypeDef ret = HAL_SPI_Transmit(&hspi5, tx, len, timeout);
  SPI5_Bus_Deselect(dev);
  SPI5_Bus_Unlock();
  return ret;
}

HAL_StatusTypeDef SPI5_Bus_TransmitReceive(spi5_dev_t dev, uint8_t *tx, uint8_t *rx,
                                           uint16_t len, uint32_t timeout)
{
  const int is_micro = (dev == SPI5_DEV_MICRO1) || (dev == SPI5_DEV_MICRO2);

  SPI5_Bus_Lock();
  SPI5_Bus_Select(dev);
  if (is_micro) { SPI5_DelayUs(SPI5_MICRO_CS_SETUP_US); }

  HAL_StatusTypeDef ret = HAL_SPI_TransmitReceive(&hspi5, tx, rx, len, timeout);

  if (is_micro) { SPI5_DelayUs(SPI5_MICRO_CS_HOLD_US); }
  SPI5_Bus_Deselect(dev);
  if (is_micro) { SPI5_DelayUs(SPI5_MICRO_CS_GAP_US); }
  SPI5_Bus_Unlock();
  return ret;
}
