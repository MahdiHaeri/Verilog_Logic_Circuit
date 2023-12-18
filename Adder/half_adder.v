module half_adder (input a, input b, output sum, output carry);

    // gate-level implementation
    // xor(sum, a, b);
    // and(carry, a, b);

    // -----------------------------------------------------

    // dataflow implementation
    assign sum = a ^ b;
    assign carry = a & b;

endmodule