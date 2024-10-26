`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 09:23:10 AM
// Design Name: 
// Module Name: tb
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

module quantum_teleportation_tb ();

    // Inputs
    logic clk = 0;
    logic rst = 1;
    reg [1:0] switches;

    // Outputs
    wire [1:0] bob_state;
    localparam CLK_PERIOD = 10;
    localparam RST_COUNT = 10;

    // Clock generation
    always begin
           clk = #(CLK_PERIOD/2) ~clk;
    end
      // 10ns period clock

    // Test sequence
    initial begin
        // Initialize inputs
        clk = 0;
        rst = 1;  // Start with reset
        switches = 2'b10;  // Default value for switches

        #10;
        rst = 0;  // Release reset after 10ns

        // Test case 1: Alice's classical result (00)
        #10;
        switches = 2'b00;  // Apply I gate (no change)
        #10;
        $display("Test 1 - Input: (00), Bob's state: %b", bob_state);

        // Test case 2: Alice's classical result (01)
        #10;
        switches = 2'b01;  // Apply X gate
        #10;
        $display("Test 2 - Input: (01), Bob's state: %b", bob_state);

        // Test case 3: Alice's classical result (10)
        #10;
        switches = 2'b10;  // Apply Z gate
        #10;
        $display("Test 3 - Input: (10), Bob's state: %b", bob_state);

        // Test case 4: Alice's classical result (11)
        #10;
        switches = 2'b11;  // Apply X and Z gates
        #10;
        $display("Test 4 - Input: (11), Bob's state: %b", bob_state);

        // End of test
        #10;
        $stop;
    end
    
        // Instantiate the Unit Under Test (UUT)
    quantum_teleportation   
    quantum_teleportation_i (
        .clk(clk),
        .rst_n(~rst),
        .switches(switches),
        .bob_state(bob_state)
    );
endmodule
