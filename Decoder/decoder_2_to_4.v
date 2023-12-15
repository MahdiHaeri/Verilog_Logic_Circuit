module decoder_2_to_4 (input wire enable, input wire [1:0] in, output wire [3:0] out);
    // gate-level implementation
    wire [1:0] in_not;
    wire enable_not;
    
    not(in_not[0], in[0]);
    not(in_not[1], in[1]);

    not(enable_not, enable);

    nand(out[0], enable_not, in_not[0], in_not[1]);
    nand(out[1], enable_not, in[0], in_not[1]);
    nand(out[2], enable_not, in_not[0], in[1]);
    nand(out[3], enable_not, in[0], in[1]);
endmodule