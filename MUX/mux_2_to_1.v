module mux_2_to_1 (input wire a, b, sel, output wire out);
    // gate-level implementation
    // wire sel_not;
    // wire a_and_sel_not;
    // wire b_and_sel;

    // not(sel_not, sel);

    // and(a_and_sel_not, a, sel_not);
    // and(b_and_sel, b, sel);

    // or(out, a_and_sel_not, b_and_sel);

    // ------------------------------------------------

    // dataflow implementation
    assign out = (sel) ? b : a;

    // ------------------------------------------------

    // behavioral implementation --> output should be reg

    // always @(*) begin
    //     if (sel) begin
    //         out = b;
    //     end else begin
    //         out = a;
    //     end
    // end
endmodule