module encoder_8_to_3_tb;

    reg enable;
    reg [7:0] in;
    wire [2:0] out;

    encoder_8_to_3 dut (
        .enable(enable),
        .in(in),
        .out(out)
    );

    initial begin

        $dumpfile("encoder_8_to_3_tb.vcd"); // Specify the VCD file name
        $dumpvars(0, encoder_8_to_3_tb); // Dump all variables at time 

        $monitor("Time=%0t: Enable=%b, In=%b, Out=%b", $time, enable, in, out);
        
        // active high enable
        enable = 1;

        // Test all 8 input combinations
        in = 8'b00000001; #10;
        in = 8'b00000010; #10;
        in = 8'b00000100; #10;
        in = 8'b00001000; #10;
        in = 8'b00010000; #10;
        in = 8'b00100000; #10;
        in = 8'b01000000; #10;
        in = 8'b10000000; #10;

        enable = 0;

        #10; // Wait for 10 time units

        $finish; // End simulation
    end

endmodule