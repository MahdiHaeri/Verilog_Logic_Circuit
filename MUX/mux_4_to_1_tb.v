module mux_4_to_1_tb;
    
    reg [3:0] in;
    reg [1:0] sel;
    wire out;
    
    // Add module declaration for "mux_4_to_1"
    mux_4_to_1 uut(in, sel, out);
    
    initial begin
        $dumpfile("mux_4_to_1_tb.vcd");
        $dumpvars(0, mux_4_to_1_tb);
        $monitor("in=%b, sel=%b, out=%b", in, sel, out);

        for (integer i = 0; i < 16; i = i + 1) begin
            in = i;
            for (integer j = 0; j < 4; j = j + 1) begin
                sel = j;
                #10;
            end
        end
    
        $finish; // Add this line to terminate the simulation
    end

endmodule