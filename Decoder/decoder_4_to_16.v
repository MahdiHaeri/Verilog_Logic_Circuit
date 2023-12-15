module decoder_4_to_16 (input wire enable, input wire [3:0] in, output wire [15:0] out);
    wire in3_not;

    wire enable_1;
    wire enable_2;

    not(in3_not, in[3]);

    or(enable_1, enable, in[3]);
    or(enable_2, enable, in3_not);
    
    decoder_3_to_8 dut1 (
        .enable(enable_1),
        .in({in[2], in[1], in[0]}),
        .out({out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]})
    );

    decoder_3_to_8 dut2 (
        .enable(enable_2),
        .in({in[2], in[1], in[0]}),
        .out({out[15], out[14], out[13], out[12], out[11], out[10], out[9], out[8]})
    );
    
endmodule