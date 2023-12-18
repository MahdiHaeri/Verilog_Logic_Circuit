// active low enable and output decoder
module decoder_2_to_4 (input wire enable, input wire [1:0] in, output wire [3:0] out);
    // gate-level implementation
    // wire [1:0] in_not;
    // wire enable_not;
    
    // not(in_not[0], in[0]);
    // not(in_not[1], in[1]);

    // not(enable_not, enable);

    // nand(out[0], enable_not, in_not[0], in_not[1]);
    // nand(out[1], enable_not, in[0], in_not[1]);
    // nand(out[2], enable_not, in_not[0], in[1]);
    // nand(out[3], enable_not, in[0], in[1]);

    // ------------------------------------------------

    // dataflow implementation
    assign out[0] = ~(~enable & ~in[0] & ~in[1]);
    assign out[1] = ~(~enable & in[0] & ~in[1]);
    assign out[2] = ~(~enable & ~in[0] & in[1]);
    assign out[3] = ~(~enable & in[0] & in[1]);

    // ------------------------------------------------

    // behavioral implementation --> change output wire to reg 
    // always @ (enable or in) begin
    //     if (enable) begin 
    //         out = 4'b1111;
    //     end else begin
    //         case (in) 
    //             2'b00: begin
    //                 out = 4'b1110;
    //             end
    //             2'b01: begin
    //                 out = 4'b1101;
    //             end
    //             2'b10: begin
    //                 out = 4'b1011;
    //             end
    //             2'b11: begin
    //                 out = 4'b0111;
    //             end
    //         endcase
    //     end
    // end
endmodule