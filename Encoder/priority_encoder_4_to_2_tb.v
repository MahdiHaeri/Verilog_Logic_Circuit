module priority_encoder_4_to_2_tb;

    reg enable;
    reg [3:0] in;
    wire [1:0] out;

    priority_encoder_4_to_2 dut (
        .enable(enable),
        .in(in),
        .out(out)
    );

    initial begin

        $dumpfile("priority_encoder_4_to_2_tb.vcd"); // Specify the VCD file name
        $dumpvars(0, priority_encoder_4_to_2_tb); // Dump all variables at time 

        $monitor("Time=%0t: Enable=%b, In=%b, Out=%b", $time, enable, in, out);
        
        // active high enable
        enable = 1;

        // Test all 16 input combinations
        in = 4'b0000; #10;
        in = 4'b0001; #10;
        in = 4'b0010; #10;
        in = 4'b0011; #10;
        in = 4'b0100; #10;
        in = 4'b0101; #10;
        in = 4'b0110; #10;
        in = 4'b0111; #10;
        in = 4'b1000; #10;
        in = 4'b1001; #10;
        in = 4'b1010; #10;
        in = 4'b1011; #10;
        in = 4'b1100; #10;
        in = 4'b1101; #10;
        in = 4'b1110; #10;
        in = 4'b1111; #10;

        enable = 0;

        #10; // Wait for 10 time units

        $finish; // End simulation
    end 

endmodule;