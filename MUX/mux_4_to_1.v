module mux_4_to_1 (input wire [3:0] in, input wire [1:0] sel, output wire out);
    // gate-level implementation
    // wire sel0_not, sel1_not;
    // not(sel0_not, sel[0]);
    // not(sel1_not, sel[1]);

    // wire out0, out1, out2, out3;

    // and(out0, in[0], sel0_not, sel1_not);
    // and(out2, in[1], sel0_not, sel[1]);
    // and(out1, in[2], sel[0], sel1_not);
    // and(out3, in[3], sel[0], sel[1]);

    // or(out, out0, out1, out2, out3);

    // ------------------------------------------------

    // dataflow implementation
    assign out = (sel[1]) ? ((sel[0]) ? in[3] : in[2]) : ((sel[0]) ? in[1] : in[0]);

    // ------------------------------------------------

    // behavioral implementation --> output should be reg
    // always @(*) begin
    //     if (sel[1]) begin
    //         if (sel[0]) begin
    //             out = in[3];
    //         end else begin
    //             out = in[2];
    //         end
    //     end else begin
    //         if (sel[0]) begin
    //             out = in[1];
    //         end else begin
    //             out = in[0];
    //         end
    //     end
    // end
endmodule