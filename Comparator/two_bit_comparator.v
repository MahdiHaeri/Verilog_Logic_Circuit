module two_bit_comparator(input [1:0] a, b, output eq, gt, lt);
    // wire xnor_A_C, xnor_B_D;
    // wire A_not, B_not, C_not, D_not;

    // wire a_not_and_b_not_and_d, a_not_and_c, b_not_and_c_and_d;
    // wire b_and_c_not_and_d_not, a_and_c_not, a_and_b_and_d_not;

    // not(A_not, a[1]);
    // not(B_not, a[0]);
    // not(C_not, b[1]);
    // not(D_not, b[0]);

    // // LT = A'B'D + A'C + B'CD
    // and(a_not_and_b_not_and_d, A_not, B_not, b[0]);
    // and(a_not_and_c, A_not, b[1]);
    // and(b_not_and_c_and_d, B_not, b[1], b[0]);

    // or(lt, a_not_and_b_not_and_d, a_not_and_c, b_not_and_c_and_d);


    // // EQ = (A xnor B) . (C xnor D)
    // xnor(xnor_A_C, a[1], b[1]);
    // xnor(xnor_B_D, a[0], b[0]);
    // and(eq, xnor_A_C, xnor_B_D);


    // // GT = BC'D' + AC' + ABD'
    // and(b_and_c_not_and_d_not, a[0], C_not, D_not);
    // and(a_and_c_not, a[1], C_not);
    // and(a_and_b_and_d_not, a[1], a[0], D_not);

    // or(gt, b_and_c_not_and_d_not, a_and_c_not, a_and_b_and_d_not);

    // -----------------------------------------------------

    // dataflow implementation
    // assign eq = a == b;
    // assign gt = a > b;
    // assign lt = a < b;

endmodule