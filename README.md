# Quantum Computer Emulation on FPGA

This project emulates fundamental quantum computing operations on an FPGA, modeled through four main subsystems. Each subsystem contributes to a specific part of the emulation process, utilising hardware description languages, high-level synthesis tools, and fixed-point calculations. The code is organised for easy synthesis and simulation on the Xilinx Nexys A7 board.

## Directory Structure

The repository's main directories include:

- fqds: Contains SystemVerilog module for detecting resistance states using Pmod JD.
- matlab-project-scripts: MATLAB scripts to simulate and test QFT and Grover's algorithms.
- presentation: Oral presentation slides, posters, and related visual content.
- qaes: Source files and reports for quantum algorithms.
- quantum_teleportation: Files for emulating the quantum teleportation algorithm.
- report: Thesis files and LaTeX documents detailing the project.

## Subsystem Overview

1. Single-Photon Qubit Initialisation<br>
Initialises qubits in a specific state, allowing single-photon-level emulation using LEDs and photodetectors.

2. Flying-Qubit Detection
Detects qubit states with a light detection setup, translating optical signals into a usable data format for FPGA processing.

3. Quantum Algorithm Emulation
Implements QFT, Grover’s, and teleportation algorithms in SystemVerilog, leveraging DSP slices and adders for matrix operations.

4. User Interface Subsystem
Provides an interface for monitoring and adjusting parameters of the FPGA-based quantum emulator, enhancing usability during experiments.

This structure offers a compact overview while enabling future expansion as additional features or experiments are added. Let me know if you need more details in any section.
