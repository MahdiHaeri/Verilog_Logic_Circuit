module encoder_8_to_3 (input wire enable, input wire [7:0] in, output wire [2:0] out);
    
    wire out_0;
    wire out_1;
    wire out_2;

    or(out_0, in[1], in[3], in[5], in[7]);
    or(out_1, in[2], in[3], in[6], in[7]);
    or(out_2, in[4], in[5], in[6], in[7]);

    and(out[0], enable, out_0);
    and(out[1], enable, out_1);
    and(out[2], enable, out_2);

endmodule