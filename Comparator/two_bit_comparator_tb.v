module two_bit_comparator_tb;
    
    reg [1:0] a;
    reg [1:0] b;
    wire eq;
    wire gt;
    wire lt;
    
    // Add module declaration for "two_bit_comparator"
    two_bit_comparator uut(a, b, eq, gt, lt);
    
    initial begin
        $dumpfile("two_bit_comparator_tb.vcd");
        $dumpvars(0, two_bit_comparator_tb);
        $monitor("a=%b, b=%b, eq=%b, gt=%b, lt=%b", a, b, eq, gt, lt);

        for (integer i = 0; i < 4; i = i + 1) begin
            a = i;
            for (integer j = 0; j < 4; j = j + 1) begin
                b = j;
                #10;
            end
        end
    
        $finish; // Add this line to terminate the simulation
    end

endmodule