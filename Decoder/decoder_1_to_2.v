module decoder_1_to_2 (input wire enable, input wire in, output wire out0, output wire out1);
    // gate-level implementation
    wire in_not;
    wire enable_not;

    not(in_not, in);
    not(enable_not, enable);

    nand(out0, enable_not, in_not);
    nand(out1, enable_not, in);

endmodule