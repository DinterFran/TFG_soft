#include <gui/waitingscreen_screen/WaitingScreenView.hpp>
#include <gui/waitingscreen_screen/WaitingScreenPresenter.hpp>
extern "C" {
#include "log.h"
}
#define HEAP_LOG(tag) Log_Printf("[%s] heap=%u tareas=%u\r\n", tag, \
        (unsigned)xPortGetFreeHeapSize(), (unsigned)uxTaskGetNumberOfTasks())
/*
 * Sesion 1 — arreglos:
 *  1. La cola se crea UNA sola vez (antes se creaba en cada entrada a la pantalla
 *     y nunca se borraba -> se perdia heap).
 *  2. Cola, handle y bandera de parada son static: no dependen del presenter,
 *     que TouchGFX destruye al salir de la pantalla.
 *  3. Start no crea una segunda tarea si ya hay una corriendo.
 *  4. Al salir de la pantalla no se hace vTaskDelete() desde afuera (podia cortar
 *     a la tarea con el mutex de SPI5 tomado o con el CS en bajo). Se pide parar
 *     y la tarea termina sola en menos de 50 ms.
 */

#define LED_WAIT_SLICE_MS   50U

static QueueHandle_t  s_progressQueue = NULL;
static TaskHandle_t   s_ledTask       = NULL;
static volatile bool  s_stopRequested = false;

WaitingScreenPresenter::WaitingScreenPresenter(WaitingScreenView& v)
    : view(v)
{
    if (s_progressQueue == NULL)
    {
        s_progressQueue = xQueueCreate(5, sizeof(uint8_t));
    }
}

void WaitingScreenPresenter::activate()
{
	HEAP_LOG("WS in");
    xQueueReset(s_progressQueue);   // descarta progreso viejo de una corrida anterior
}

void WaitingScreenPresenter::deactivate()
{
	HEAP_LOG("WS out");
    s_stopRequested = true;         // la tarea termina sola
}

void WaitingScreenPresenter::Start_Pattern()
{
    if (s_ledTask != NULL)   { HEAP_LOG("LED ignorado"); return; }
    if (in_data_count == 0)  { return; }

    s_stopRequested = false;
    xQueueReset(s_progressQueue);

    xTaskCreate(
        ledDisplayTask,   // Funcion de la tarea
        "LEDTask",        // Nombre
        512,              // Stack (palabras)
        NULL,             // Ya no se pasa 'this'
        2,                // Prioridad
        &s_ledTask        // Handle
    );
    HEAP_LOG("LED start");
}

void WaitingScreenPresenter::ledDisplayTask(void* pvParameters)
{
    (void)pvParameters;
    const uint8_t total = in_data_count;

    for (uint8_t i = 0; (i < total) && !s_stopRequested; i++)
    {
        MAX7219_ShowSelecctions(i);

        // Espera en tramos cortos para poder cortar rapido si salen de la pantalla
        for (uint32_t t = 0; (t < TIME_DELAY_SHOW_LED) && !s_stopRequested; t += LED_WAIT_SLICE_MS)
        {
            vTaskDelay(pdMS_TO_TICKS(LED_WAIT_SLICE_MS));
        }

        uint8_t progress = (uint8_t)(((i + 1U) * 100U) / total);
        xQueueSend(s_progressQueue, &progress, 0);
    }

    MAX7219_ClearAll();

    if (!s_stopRequested)
    {
        uint8_t finalProgress = 100;
        xQueueSend(s_progressQueue, &finalProgress, 0);
    }
    HEAP_LOG(s_stopRequested ? "LED fin cortado" : "LED fin normal");
    s_ledTask = NULL;
    vTaskDelete(NULL);
}

void WaitingScreenPresenter::checkProgressUpdate()
{
    uint8_t progress;

    // Verificar si hay datos en la cola (no bloquear)
    if (xQueueReceive(s_progressQueue, &progress, 0) == pdTRUE)
    {
        view.ProgressBar(progress);
    }
}
