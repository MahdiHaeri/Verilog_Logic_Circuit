module four_bit_equality(input [3:0] a, b, output eq);

    // gate-level implementation
    // wire c0, c1, c2, c3;

    // xnor(c0, a[0], b[0]);
    // xnor(c1, a[1], b[1]);
    // xnor(c2, a[2], b[2]);
    // xnor(c3, a[3], b[3]);

    // and(eq, c0, c1, c2, c3);

    // -----------------------------------------------------

    // dataflow implementation
    assign eq = a == b;
endmodule;