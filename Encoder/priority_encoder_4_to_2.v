module priority_encoder_4_to_2 (input wire enable, input wire [3:0] in, output wire [1:0] out, output wire valid);
    // wire out_0;
    // wire out_1;
    
    // wire in2_not;
    // not(in2_not, in[2]);

    // wire and_in1_in2not;
    // and(and_in1_in2not, in[1], in2_not);

    // or(out_0, in[3], and_in1_in2not);
    // or(out_1, in[2], in[3]);

    // and(out[0], enable, out_0);
    // and(out[1], enable, out_1);
    // or(valid, in[0], in[1], in[2], in[3]);

    // ------------------------------------------------

    // dataflow implementation
    assign out[0] = enable & (in[3] | (in[1] & ~in[2]));
    assign out[1] = enable & (in[2] | in[3]);
    assign valid = in[0] | in[1] | in[2] | in[3];

    // ------------------------------------------------

    // behavioral implementation --> output should be reg

    // always @(*) begin
    //     if (enable) begin
    //         if (in[3]) begin
    //             out = 2'b11;
    //         end else if (in[2]) begin
    //             out = 2'b10;
    //         end else if (in[1]) begin
    //             out = 2'b01;
    //         end else if (in[0]) begin
    //             out = 2'b00;
    //         end else begin
    //             out = 2'b00;
    //         end
    //     end else begin
    //         out = 2'b00;
    //     end

    //     if (in[0] | in[1] | in[2] | in[3]) begin
    //         valid = 1'b1;
    //     end else begin
    //         valid = 1'b0;
    //     end
    // end

endmodule;