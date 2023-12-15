`timescale 1ns / 1ps  // Define timescale

module decoder_2_to_4_tb;

    // Declare signals
    reg enable;
    reg [1:0] in;
    wire [3:0] out;

    // Instantiate decoder module
    decoder_2_to_4 dut (
        .enable(enable),
        .in(in),
        .out(out)
    );

    // Stimulus generation
    initial begin
        $dumpfile("decoder_2_to_4_tb.vcd"); // Output VCD file
        $dumpvars(0, decoder_2_to_4_tb); // Dump variables

        $monitor("enable = %b, in = %b, out = %b", enable, in, out); // Monitor variables

        // Test case 1: Enable = 1, in = 00
        enable = 0;
        in = 2'b00;
        #10; // Wait for a few time units

        // Test case 2: Enable = 1, in = 01
        in = 2'b01;
        #10;

        // Test case 3: Enable = 1, in = 10
        in = 2'b10;
        #10;

        // Test case 4: Enable = 1, in = 11
        in = 2'b11;
        #10;

        // Test case 5: Enable = 0 (disabled)
        enable = 1;
        #10;

        $finish; // End simulation
    end

endmodule
