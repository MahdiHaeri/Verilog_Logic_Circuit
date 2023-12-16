module mux_8_to_1_tb;
    
    reg [7:0] in;
    reg [2:0] sel;
    wire out;
    
    // Add module declaration for mux_8_to_1
    mux_8_to_1 mux_inst(
        .in(in),
        .sel(sel),
        .out(out)
    );
    
    initial begin
        $dumpfile("mux_8_to_1_tb.vcd");
        $dumpvars(0, mux_8_to_1_tb);
        $monitor("in=%b, sel=%b, out=%b", in, sel, out);
        
        for (integer i = 0; i < 256; i = i + 1) begin
            in = i;
            for (integer j = 0; j < 8; j = j + 1) begin
                sel = j;
                #10;
            end
        end
    
        $finish; // Add this line to terminate the simulation
    end

endmodule