module mux_2_to_1 (input a, b, sel, output out);
    // gate-level implementation
    wire sel_not;
    wire a_and_sel_not;
    wire b_and_sel;

    not(sel_not, sel);

    and(a_and_sel_not, a, sel_not);
    and(b_and_sel, b, sel);

    or(out, a_and_sel_not, b_and_sel);

    // dataflow implementation
    // assign out = (sel == 1'b0) ? a : b;
endmodule