//********************************************************************
//*                    quantum_state.h                               *
//*==================================================================*
//* WRITTEN BY: Bonga Njamela                                        *
//* DATE CREATED: 24/10/2024                                         *
//*==================================================================*
//* DESCRIPTION:                                                     *
//* This header file defines structures and variables to store       *
//* quantum state amplitudes for 1, 2, and 3 qubit registers.        *
//********************************************************************

#ifndef QUANTUM_STATE_H
#define QUANTUM_STATE_H

#include <stdint.h>

//====================================================================
// TYPE DEFINITIONS
//--------------------------------------------------------------------

// Define a complex number structure to represent quantum amplitudes
typedef struct {
    float real;    // Real part of the amplitude
    float imag;    // Imaginary part of the amplitude
} complex_t;

//====================================================================
// GLOBAL VARIABLES FOR QUANTUM STATES
//--------------------------------------------------------------------

// 1-qubit quantum register (2 possible states: |0> and |1>)
complex_t quantum_state_1q[2] = {
    {1.0, 0.0},  // Amplitude of |0> state
    {0.0, 0.0}   // Amplitude of |1> state
};

// 2-qubit quantum register (4 possible states: |00>, |01>, |10>, |11>)
complex_t quantum_state_2q[4] = {
    {1.0, 0.0},  // Amplitude of |00> state
    {0.0, 0.0},  // Amplitude of |01> state
    {0.0, 0.0},  // Amplitude of |10> state
    {0.0, 0.0}   // Amplitude of |11> state
};

// 3-qubit quantum register (8 possible states: |000>, |001>, |010>, ..., |111>)
complex_t quantum_state_3q[8] = {
    {1.0, 0.0},  // Amplitude of |000> state
    {0.0, 0.0},  // Amplitude of |001> state
    {0.0, 0.0},  // Amplitude of |010> state
    {0.0, 0.0},  // Amplitude of |011> state
    {0.0, 0.0},  // Amplitude of |100> state
    {0.0, 0.0},  // Amplitude of |101> state
    {0.0, 0.0},  // Amplitude of |110> state
    {0.0, 0.0}   // Amplitude of |111> state
};

// 4-qubit quantum register (16 possible states: |000>, |001>, |010>, ..., |111>)
complex_t quantum_state_4q[8] = {
    {1.0, 0.0},  // Amplitude of |0000> state
    {0.0, 0.0},  // Amplitude of |0001> state
    {0.0, 0.0},  // Amplitude of |0010> state
    {0.0, 0.0},  // Amplitude of |0011> state
    {0.0, 0.0},  // Amplitude of |0100> state
    {0.0, 0.0},  // Amplitude of |0101> state
    {0.0, 0.0},  // Amplitude of |0110> state
    {0.0, 0.0},  // Amplitude of |0111> state
    {0.0, 0.0},  // Amplitude of |1000> state
	{0.0, 0.0},  // Amplitude of |1001> state
	{0.0, 0.0},  // Amplitude of |1010> state
	{0.0, 0.0},  // Amplitude of |1011> state
	{0.0, 0.0},  // Amplitude of |1100> state
	{0.0, 0.0},  // Amplitude of |1101> state
	{0.0, 0.0},  // Amplitude of |1110> state
	{0.0, 0.0}   // Amplitude of |1111> state
};

// 5-qubit quantum register (32 possible states: |000>, |001>, |010>, ..., |111>)
complex_t quantum_state_5q[8] = {
    {1.0, 0.0},  // Amplitude of |00000> state
    {0.0, 0.0},  // Amplitude of |00001> state
    {0.0, 0.0},  // Amplitude of |00010> state
    {0.0, 0.0},  // Amplitude of |00011> state
    {0.0, 0.0},  // Amplitude of |00100> state
    {0.0, 0.0},  // Amplitude of |00101> state
    {0.0, 0.0},  // Amplitude of |00110> state
    {0.0, 0.0},  // Amplitude of |00111> state
    {0.0, 0.0},  // Amplitude of |01000> state
	{0.0, 0.0},  // Amplitude of |01001> state
	{0.0, 0.0},  // Amplitude of |01010> state
	{0.0, 0.0},  // Amplitude of |01011> state
	{0.0, 0.0},  // Amplitude of |01100> state
	{0.0, 0.0},  // Amplitude of |01101> state
	{0.0, 0.0},  // Amplitude of |01110> state
	{0.0, 0.0},  // Amplitude of |01111> state
	{1.0, 0.0},  // Amplitude of |10000> state
	{0.0, 0.0},  // Amplitude of |10001> state
	{0.0, 0.0},  // Amplitude of |10010> state
	{0.0, 0.0},  // Amplitude of |10011> state
	{0.0, 0.0},  // Amplitude of |10100> state
	{0.0, 0.0},  // Amplitude of |10101> state
	{0.0, 0.0},  // Amplitude of |10110> state
	{0.0, 0.0},  // Amplitude of |10111> state
	{0.0, 0.0},  // Amplitude of |11000> state
	{0.0, 0.0},  // Amplitude of |11001> state
	{0.0, 0.0},  // Amplitude of |11010> state
	{0.0, 0.0},  // Amplitude of |11011> state
	{0.0, 0.0},  // Amplitude of |11100> state
	{0.0, 0.0},  // Amplitude of |11101> state
	{0.0, 0.0},  // Amplitude of |11110> state
	{0.0, 0.0}   // Amplitude of |11111> state
};
//====================================================================
// FUNCTION DECLARATIONS
//--------------------------------------------------------------------

// Function to initialize the quantum state amplitudes for n qubits
void initQuantumState(complex_t* state, uint8_t num_states);

// Function to prepare an entangled quantum state pair (Bell state)
void prepareEntangledPair(complex_t* state);

// Prepare an entangled quantum state pair (Bell state |+> = (|00> + |11>) / √2)
void prepareEntangledPair(complex_t* state) {
    float norm = 1.0 / sqrt(2);  // Normalization factor (1/√2)

    // Set the amplitudes for the Bell state |+⟩ = (|00> + |11>) / √2
    state[0].real = norm;  // Amplitude of |00>
    state[0].imag = 0.0;

    state[3].real = norm;  // Amplitude of |11>
    state[3].imag = 0.0;

    // Set other states' amplitudes to 0 (|01> and |10>)
    state[1].real = 0.0;   // Amplitude of |01>
    state[1].imag = 0.0;

    state[2].real = 0.0;   // Amplitude of |10>
    state[2].imag = 0.0;
}


#endif /* QUANTUM_STATE_H */
