`timescale 1ns/1ns // Set the timescale as needed

module decoder_3_to_8_tb();

    reg enable;
    reg [2:0] in;
    wire [7:0] out;

    decoder_3_to_8 dut (
        .enable(enable),
        .in(in),
        .out(out)
    );

    initial begin

        $dumpfile("decoder_3_to_8_tb.vcd"); // Specify the VCD file name
        $dumpvars(0, decoder_3_to_8_tb); // Dump all variables at time 

        $monitor("Time=%0t: Enable=%b, In=%b, Out=%b", $time, enable, in, out);
        
        enable = 0;

        // Test all 8 input combinations
        for (integer i = 0; i < 8; i = i + 1) begin
            in = i;
            #10; // Wait for 10 time units
        end

        enable = 1;

        #10; // Wait for 10 time units

        $finish; // End simulation
    end

endmodule
