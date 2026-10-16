/*
 * led_matrix_control.h
 *
 *  Created on: Jul 21, 2025
 *      Author: Franco Dinter
 */

#ifndef APPLICATION_USER_CORE_LED_MATRIX_CONTROL_H_
#define APPLICATION_USER_CORE_LED_MATRIX_CONTROL_H_

#include "main.h"
#include "stm32h747i_discovery_qspi.h"

#define  	NUM_FILAS 					8
#define  	NUM_MATRICES				4
#define  	MAX_BRIGTHNESS				15
#define  	INTENSITY_ADD				0x0A
#define		MAX_SELECTIONS 				100
#define		TIME_DELAY_SHOW_LED			1500    // tiempo en milisegundos

#define MAX7219_DIGIT_FONT { \
    {0x3C,0x66,0x66,0x66,0x66,0x66,0x66,0x3C}, /* 0 */ \
    {0x3C,0x18,0x18,0x18,0x18,0x18,0x1C,0x18}, /* 1 */ \
    {0x7E,0x06,0x0C,0x18,0x30,0x60,0x66,0x3C}, /* 2 */ \
    {0x3C,0x66,0x60,0x60,0x38,0x60,0x66,0x3C}, /* 3 */ \
    {0x30,0x30,0x30,0x7E,0x32,0x34,0x38,0x30}, /* 4 */ \
    {0x3C,0x66,0x60,0x60,0x3E,0x06,0x06,0x7E}, /* 5 */ \
    {0x3C,0x66,0x66,0x66,0x3E,0x06,0x66,0x3C}, /* 6 */ \
    {0x0C,0x0C,0x0C,0x0C,0x18,0x30,0x60,0x7E}, /* 7 */ \
    {0x3C,0x66,0x66,0x66,0x3C,0x66,0x66,0x3C}, /* 8 */ \
    {0x3C,0x66,0x60,0x7C,0x66,0x66,0x66,0x3C}  /* 9 */ \
}

#define MATRIX_TENS_INDEX   1   // matriz del medio, dígito de las decenas
#define MATRIX_UNITS_INDEX  2   // matriz del medio, dígito de las unidades
// Structurs

typedef struct {
    uint8_t n_matrix;   // Número de matriz (0..N)
    uint8_t n_row;     // Número de fila (0..N)
    uint8_t n_column;      // Número de bit/columna (0..N)
} SeleccionLED;


// Led Matrix functions
HAL_StatusTypeDef MAX7219_SendToAll(uint8_t address, uint8_t data, uint8_t pos);
void MAX7219_Test_Brightness(void);
void MAX7219_Init(SPI_HandleTypeDef *hspi);
void MatrizLedSelect(uint8_t num_mx, uint8_t row, uint8_t column);
void MAX7219_ResetAll(void);
void MAX7219_ClearAll(void);
void MAX7219_CS_Enable(void);
void MAX7219_CS_Disable(void);
void MAX7219_LightSingleLed(uint8_t matrix_index, uint8_t row, uint8_t bit_position);
void MAX7219_SaveSelection(uint8_t num_mx, uint8_t row, uint8_t column);
void MAX7219_ShowSelecctions(uint8_t index);
void MAX7219_Set_Brigth(int brillo);
void MAX7219_ShowNumber(uint8_t number);
void MAX7219_ClearSelections(void);
// Varibles externas

extern uint8_t current_matrix;
extern uint8_t current_row;   // de 1 a 8
extern uint8_t current_bit;
extern uint8_t in_data_count;
#endif /* APPLICATION_USER_CORE_LED_MATRIX_CONTROL_H_ */
