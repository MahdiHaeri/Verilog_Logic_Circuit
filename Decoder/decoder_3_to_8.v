module decoder_3_to_8 (input wire enable, input wire [2:0] in, output wire [7:0] out);
    // gate-level implementation
    wire in2_not;
    wire enable_1;
    wire enable_2;

    not(in2_not, in[2]);

    or(enable_1, enable, in[2]);
    or(enable_2, enable, in2_not); 

    decoder_2_to_4 dut1 (
        .enable(enable_1),
        .in({in[1], in[0]}),
        .out({out[3], out[2], out[1], out[0]})
    );

    decoder_2_to_4 dut2 (
        .enable(enable_2),
        .in({in[1], in[0]}),
        .out({out[7], out[6], out[5], out[4]})
    );

endmodule