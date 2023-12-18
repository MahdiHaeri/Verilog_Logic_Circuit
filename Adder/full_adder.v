module full_adder(input a, b, cin, output sum, cout);

    // gate-level implementation
    // wire s1, c1, c2;

    // half_adder ha1(a, b, s1, c1);
    // half_adder ha2(s1, cin, sum, c2);
    // or(cout, c1, c2);

    // -----------------------------------------------------

    // dataflow implementation
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);

endmodule