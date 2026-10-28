/*
 * acq_test.c  —  Sesion 2  (prueba del bus SPI5 con los Arduinos)
 *
 *  Log esperado cada 1 s, por ejemplo:
 *    [ACQ] m1 ok=100 err=0 gap=0 v=512 | m2 ok=100 err=0 gap=0 v=37
 *
 *  ok  = tramas validas (cabecera + id + xor)
 *  err = tramas invalidas (basura, 0xFF = nadie maneja MISO, 0x00 = MISO a masa...)
 *  gap = saltos de seq (tramas que el Arduino no llego a renovar o se perdieron)
 *  La primera trama valida de cada micro se loguea cruda.
 */

#include "acq_test.h"
#include "spi5_bus.h"
#include "log.h"
#include "cmsis_os2.h"

typedef struct {
  uint32_t ok;
  uint32_t err;
  uint32_t gap;
  uint8_t  last_seq;
  uint8_t  have_seq;
  uint16_t last_val;
  uint8_t  raw_logged;
} acq_stats_t;

static acq_stats_t s_st[2];

static int frame_valid(const uint8_t *f, uint8_t id)
{
  uint8_t x = 0;
  for (uint32_t i = 0; i < ACQ_FRAME_LEN - 1U; i++) { x ^= f[i]; }
  return (f[0] == ACQ_FRAME_HDR) && (f[1] == id) && (f[5] == x);
}

static void read_micro(spi5_dev_t dev, uint8_t id, acq_stats_t *st)
{
  uint8_t tx[ACQ_FRAME_LEN] = {0};
  uint8_t rx[ACQ_FRAME_LEN] = {0};

  if (SPI5_Bus_TransmitReceive(dev, tx, rx, ACQ_FRAME_LEN, 5) != HAL_OK) {
    st->err++;
    return;
  }

  if (!frame_valid(rx, id)) {
    st->err++;
    if (st->err <= 3U) {   /* las primeras 3 malas, crudas, para diagnosticar */
      Log_Printf("[ACQ] m%u MAL %02X %02X %02X %02X %02X %02X", id,
                 rx[0], rx[1], rx[2], rx[3], rx[4], rx[5]);
    }
    return;
  }

  if (!st->raw_logged) {
    st->raw_logged = 1;
    Log_Printf("[ACQ] m%u OK  %02X %02X %02X %02X %02X %02X", id,
               rx[0], rx[1], rx[2], rx[3], rx[4], rx[5]);
  }

  if (st->have_seq && (uint8_t)(st->last_seq + 1U) != rx[2]) { st->gap++; }
  st->last_seq = rx[2];
  st->have_seq = 1;
  st->last_val = (uint16_t)((rx[3] << 8) | rx[4]);
  st->ok++;
}

static void AcqTestFn(void *arg)
{
  (void)arg;
  uint32_t tick  = osKernelGetTickCount();
  uint32_t ciclo = 0;

  Log_Printf("[ACQ] prueba arrancada (%u ms)", ACQ_PERIOD_MS);

  for (;;)
  {
    tick += ACQ_PERIOD_MS;
    osDelayUntil(tick);

    read_micro(SPI5_DEV_MICRO1, 1, &s_st[0]);
#if ACQ_TEST_USE_MICRO2
    read_micro(SPI5_DEV_MICRO2, 2, &s_st[1]);
#endif

    if (++ciclo >= (1000U / ACQ_PERIOD_MS)) {
      ciclo = 0;
      /* una linea por micro: el log corta los mensajes en 63 caracteres */
      Log_Printf("[ACQ] m1 ok=%lu err=%lu gap=%lu v=%u",
                 (unsigned long)s_st[0].ok, (unsigned long)s_st[0].err,
                 (unsigned long)s_st[0].gap, (unsigned)s_st[0].last_val);
#if ACQ_TEST_USE_MICRO2
      Log_Printf("[ACQ] m2 ok=%lu err=%lu gap=%lu v=%u",
                 (unsigned long)s_st[1].ok, (unsigned long)s_st[1].err,
                 (unsigned long)s_st[1].gap, (unsigned)s_st[1].last_val);
#endif
    }
  }
}

void Acq_Test_CreateTask(void)
{
  const osThreadAttr_t attrs = {
    .name       = "AcqTest",
    .stack_size = 512 * 4,
    .priority   = (osPriority_t)osPriorityAboveNormal,
  };
  osThreadNew(AcqTestFn, NULL, &attrs);
}
