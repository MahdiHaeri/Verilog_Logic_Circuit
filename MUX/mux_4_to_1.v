module mux_4_to_1 (input [3:0] in, input [1:0] sel, output out);
    // gate-level implementation
    wire sel0_not, sel1_not;
    not(sel0_not, sel[0]);
    not(sel1_not, sel[1]);

    wire out0, out1, out2, out3;

    and(out0, in[0], sel0_not, sel1_not);
    and(out1, in[1], sel0_not, sel[1]);
    and(out2, in[2], sel[0], sel1_not);
    and(out3, in[3], sel[0], sel[1]);

    or(out, out0, out1, out2, out3);
endmodule