`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 08:34:24 AM
// Design Name: 
// Module Name: quantum_teleportation
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module quantum_teleportation(
    input clk,
    input rst_n,
    input switches,
    output reg [1:0] bob_state
    );
    
    
    // State encoding for Alice's classical output (00, 01, 10, 11)
    parameter S00 = 2'b00;  // No gate
    parameter S01 = 2'b01;  // X gate
    parameter S10 = 2'b10;  // Z gate
    parameter S11 = 2'b11;  // X and Z gates

    // Internal signal to store the current state
    reg [1:0] current_state;

    // State machine: Apply the appropriate gates based on the classical measurement from Alice
    always_ff@(posedge clk or negedge rst_n) begin
        if (rst_n) begin
            // Reset the state
            current_state <= S00;
            bob_state <= 2'b00;  // Assume Bob's initial state is |00> (can be modified)
        end
        else begin
            // Update the state based on the input switches (Alice's measurement)
            current_state <= switches;
            
            // Perform the operations on Bob's qubit based on the state
            case (current_state)
                S00: begin
                    // Apply identity (no change)
                    bob_state <= bob_state;  
                end

                S01: begin
                    // Apply X gate (bit-flip on Bob's qubit)
                    bob_state[0] <= ~bob_state[0];  // Apply X on the least significant qubit
                end

                S10: begin
                    // Apply Z gate (phase-flip on Bob's qubit)
                    bob_state[1] <= ~bob_state[1];  // Apply Z on the most significant qubit
                end

                S11: begin
                    // Apply X and Z gates (bit-flip and phase-flip on Bob's qubit)
                    bob_state[0] <= ~bob_state[0];  // Apply X on the least significant qubit
                    bob_state[1] <= ~bob_state[1];  // Apply Z on the most significant qubit
                end
 
                default: begin
                    // Default case to avoid latches
                    bob_state <= bob_state;
                end
            endcase
        end
    end
endmodule
