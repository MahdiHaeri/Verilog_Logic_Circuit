module four_bit_equality_tb;

    reg [3:0] a;
    reg [3:0] b;
    wire eq;
    
    // Add module declaration for "4_bit_equality"
    four_bit_equality uut(a, b, eq);
    
    initial begin
        $dumpfile("4_bit_equality_tb.vcd");
        $dumpvars(0, four_bit_equality_tb);
        $monitor("a=%b, b=%b, eq=%b", a, b, eq);

        for (integer i = 0; i < 16; i = i + 1) begin
            a = i;
            for (integer j = 0; j < 16; j = j + 1) begin
                b = j;
                #10;
            end
        end
    
        $finish; // Add this line to terminate the simulation
    end

endmodule;