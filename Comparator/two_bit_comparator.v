module two_bit_comparator(input [1:0] a, b, output eq, gt, lt);
    // dataflow implementation
    assign eq = a == b;
    assign gt = a > b;
    assign lt = a < b;
endmodule