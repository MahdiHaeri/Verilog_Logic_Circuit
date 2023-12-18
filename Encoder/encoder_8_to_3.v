// active high enable and output encoder
module encoder_8_to_3 (input wire enable, input wire [7:0] in, output wire [2:0] out);

    // gate-level implementation
    // wire out_0;
    // wire out_1;
    // wire out_2;

    // or(out_0, in[1], in[3], in[5], in[7]);
    // or(out_1, in[2], in[3], in[6], in[7]);
    // or(out_2, in[4], in[5], in[6], in[7]);

    // and(out[0], enable, out_0);
    // and(out[1], enable, out_1);
    // and(out[2], enable, out_2);

    // ------------------------------------------------

    // dataflow implementation
    assign out[0] = enable & (in[1] | in[3] | in[5] | in[7]);
    assign out[1] = enable & (in[2] | in[3] | in[6] | in[7]);
    assign out[2] = enable & (in[4] | in[5] | in[6] | in[7]);

    // ------------------------------------------------

    // behavioral implementation --> change output wire to reg

    // always @ (enable or in) begin
    //     if (~enable) begin
    //         out = 3'b000;
    //     end else begin
    //         case (in)
    //             8'b00000001: out = 3'b000;
    //             8'b00000010: out = 3'b001;
    //             8'b00000100: out = 3'b010;
    //             8'b00001000: out = 3'b011;
    //             8'b00010000: out = 3'b100;
    //             8'b00100000: out = 3'b101;
    //             8'b01000000: out = 3'b110;
    //             8'b10000000: out = 3'b111;
    //             default: out = 3'b000;
    //         endcase
    //     end
    // end

endmodule