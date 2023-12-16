module mux_8_to_1 (input [7:0] in, input [2:0] sel, output out);
    wire out0, out1;

    mux_4_to_1 mux0 (in[3:0], sel[1:0], out0);
    mux_4_to_1 mux1 (in[7:4], sel[1:0], out1);
    mux_2_to_1 mux2 (out0, out1, sel[2], out);
endmodule;