// count_ones_tb.v
`timescale 1ns / 1ps

module count_ones_tb;
  reg [7:0] in;
  wire [3:0] out;

  // Instantiate count_ones module
  count_ones dut (
    .in(in),
    .out(out)
  );

  // Initial block for simulation setup
  initial begin
    $dumpfile("count_ones.vcd"); // Set the name of the VCD file
    $dumpvars(0, count_ones_tb); // Dump all variables in the testbench

    // Test case 1
    in = 8'b01010111;
    #10;
    $display("Test case 1 - Input: %b, Number of ones in input: %d", in, out);

    // Test case 2
    in = 8'b11001100;
    #10;
    $display("Test case 2 - Input: %b, Number of ones in input: %d", in, out);

    // Test case 3
    in = 8'b00110011;
    #10;
    $display("Test case 3 - Input: %b, Number of ones in input: %d", in, out);

    // Test case 4
    in = 8'b11111111;
    #10;
    $display("Test case 4 - Input: %b, Number of ones in input: %d", in, out);

    // Test case 5
    in = 8'b00000000;
    #10;
    $display("Test case 5 - Input: %b, Number of ones in input: %d", in, out);

    $finish; // End the simulation
  end

  // Simulation loop to keep the simulation running
  always begin
    #1; // Wait for 1 time unit
  end

endmodule

