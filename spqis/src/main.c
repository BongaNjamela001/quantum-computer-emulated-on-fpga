//********************************************************************
//*                    Quantum State Initialisation Module           *
//*==================================================================*
//* WRITTEN BY: Bonga Njamela                                        *
//* DATE CREATED: 24/10/2024                                         *
//*==================================================================*
//* PROGRAMMED IN: Atollic True Studio                               *
//* TARGET:        STM32F0                                           *
//*==================================================================*
//* DESCRIPTION:                                                     *
//* This module initialises and displays quantum states using LEDs.  *
//* Each LED represents a qubit, and the LEDs' states (on/off)       *
//* correspond to the qubit values of the quantum state.             *
//********************************************************************

// INCLUDE FILES
//====================================================================
#include "stm32f0xx.h"
#include <stdint.h>

//====================================================================
// GLOBAL CONSTANTS
//--------------------------------------------------------------------
#define DELAY1 231885 // Delay for approximately 1 second
#define DELAY2 65535

// N.O. push buttons PA0-PA3
#define SW0 (GPIOA->IDR & GPIO_IDR_0)
#define SW1 (GPIOA->IDR & GPIO_IDR_1)
#define SW2 (GPIOA->IDR & GPIO_IDR_2)
#define SW3 (GPIOA->IDR & GPIO_IDR_3)

// LEDs PB0-PB7 representing qubits (Q0-Q7)
#define LED0 (GPIOB->ODR & GPIO_ODR_0)
#define LED1 (GPIOB->ODR & GPIO_ODR_1)
#define LED2 (GPIOB->ODR & GPIO_ODR_2)
#define LED3 (GPIOB->ODR & GPIO_ODR_3)
#define LED4 (GPIOB->ODR & GPIO_ODR_4)
#define LED5 (GPIOB->ODR & GPIO_ODR_5)
#define LED6 (GPIOB->ODR & GPIO_ODR_6)
#define LED7 (GPIOB->ODR & GPIO_ODR_7)

// ON and OFF states
#define FALSE 0
#define TRUE 1

//====================================================================
// FUNCTION DECLARATIONS
//--------------------------------------------------------------------
void initGPIO(void);
void delay(void);
void setQuantumState(uint8_t state);
void displayQuantumState(uint8_t state);

//====================================================================
// MAIN FUNCTION
//--------------------------------------------------------------------
int main (void)
{
    initGPIO();  // Initialise GPIOs

    while(1) {
        // Example: Initialise |011> quantum state
        uint8_t quantumState = 0b0101011; // Quantum state |011>
        displayQuantumState(quantumState);  // Set and display state
        delay();  // Hold the state for a while
        quantumState = 0b00000000;
        displayQuantumState(quantumState);  // Set and display state
        delay();

    }
}

//====================================================================
// FUNCTION DEFINITIONS
//--------------------------------------------------------------------

// Initialise GPIO ports for LEDs and switches
void initGPIO() {
    uint32_t *RCCADDR = (uint32_t*)(0x40021000 + 0x14);

    *RCCADDR |= 0b1 << 18;  // Enable clock for port B
    *RCCADDR |= 0b1 << 17;  // Enable clock for port A

    // Enable mode register for port B as output (for LEDs)
    GPIOB->MODER |= GPIO_MODER_MODER0_0;
    GPIOB->MODER |= GPIO_MODER_MODER1_0;
    GPIOB->MODER |= GPIO_MODER_MODER2_0;
    GPIOB->MODER |= GPIO_MODER_MODER3_0;
    GPIOB->MODER |= GPIO_MODER_MODER4_0;
    GPIOB->MODER |= GPIO_MODER_MODER5_0;
    GPIOB->MODER |= GPIO_MODER_MODER6_0;
    GPIOB->MODER |= GPIO_MODER_MODER7_0;

    // Set mode register for port A as input (for switches)
    GPIOA->MODER &= ~GPIO_MODER_MODER0_0;
    GPIOA->MODER &= ~GPIO_MODER_MODER1_0;
    GPIOA->MODER &= ~GPIO_MODER_MODER2_0;
    GPIOA->MODER &= ~GPIO_MODER_MODER3_0;

    // Enable pull-up resistors for switches
    GPIOA->PUPDR |= GPIO_PUPDR_PUPDR0_0;
    GPIOA->PUPDR |= GPIO_PUPDR_PUPDR1_0;
    GPIOA->PUPDR |= GPIO_PUPDR_PUPDR2_0;
    GPIOA->PUPDR |= GPIO_PUPDR_PUPDR3_0;
}

// Delay function
void delay(void) {
    volatile uint32_t i;
    for (i = 0; i < DELAY1; i++);
}

// Set quantum state by controlling LEDs
void setQuantumState(uint8_t state) {
    // Turn off all LEDs first
    GPIOB->ODR &= ~(0xFF); // Clear PB0-PB7

    // Set the bits in the output data register corresponding to the quantum state
    GPIOB->ODR |= (state & 0xFF);  // Set PB0-PB7 based on the quantum state
}

// Display a quantum state on the LEDs
void displayQuantumState(uint8_t state) {
    setQuantumState(state);  // Set the quantum state
}
