module decoder_1_to_2_tb;
    
        // Declare signals
        reg enable;
        reg in;
        wire out0;
        wire out1;
    
        // Instantiate decoder module
        decoder_1_to_2 dut (
            .enable(enable),
            .in(in),
            .out0(out0),
            .out1(out1)
        );
    
        // Stimulus generation
        initial begin
            $dumpfile("decoder_1_to_2_tb.vcd"); // Output VCD file
            $dumpvars(0, decoder_1_to_2_tb); // Dump variables
    
            $monitor("enable = %b, in = %b, out0 = %b, out1 = %b", enable, in, out0, out1); // Monitor variables
    
            // Test case 1: Enable = 1, in = 0
            enable = 0;
            in = 1'b0;
            #10; // Wait for a few time units
    
            // Test case 2: Enable = 1, in = 1
            in = 1'b1;
            #10;
    
            // Test case 3: Enable = 0 (disabled)
            enable = 1;
            #10;
    
            $finish; // End simulation
        end
endmodule