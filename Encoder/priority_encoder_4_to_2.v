module priority_encoder_4_to_2 (input wire enable, input wire [3:0] in, output wire [1:0] out);
    wire out_0;
    wire out_1;
    
    wire in2_not;
    not(in2_not, in[2]);

    wire and_in1_in2not;
    and(and_in1_in2not, in[1], in2_not);

    or(out_0, in[3], and_in1_in2not);
    or(out_1, in[2], in[3]);

    and(out[0], enable, out_0);
    and(out[1], enable, out_1);
endmodule;