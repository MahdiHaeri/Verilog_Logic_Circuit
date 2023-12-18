// active low enable and output decoder
module decoder_4_to_16 (input wire enable, input wire [3:0] in, output wire [15:0] out);
    // wire in3_not;

    // wire enable_1;
    // wire enable_2;

    // not(in3_not, in[3]);

    // or(enable_1, enable, in[3]);
    // or(enable_2, enable, in3_not);
    
    // decoder_3_to_8 dut1 (
    //     .enable(enable_1),
    //     .in(in[2:0]),
    //     .out(out[7:0])
    // );

    // decoder_3_to_8 dut2 (
    //     .enable(enable_2),
    //     .in(in[2:0]),
    //     .out(out[15:8])
    // );

    // -----------------------------------------------------------

    // // dataflow implementation
    decoder_3_to_8 dut1 (
        .enable(enable | in[3]),
        .in(in[2:0]),
        .out(out[7:0])
    );

    decoder_3_to_8 dut2 (
        .enable(enable | ~in[3]),
        .in(in[2:0]),
        .out(out[15:8])
    );

    // -----------------------------------------------------------

    // behavioral implementation --> change output wire to reg
    // always @ (enable or in) begin
    //     if (enable) begin
    //         out = 16'b1111111111111111;
    //     end else begin
    //         case (in)
    //             4'b0000: begin
    //                 out = 16'b1111111111111110;
    //             end
    //             4'b0001: begin
    //                 out = 16'b1111111111111101;
    //             end
    //             4'b0010: begin
    //                 out = 16'b1111111111111011;
    //             end
    //             4'b0011: begin
    //                 out = 16'b1111111111110111;
    //             end
    //             4'b0100: begin
    //                 out = 16'b1111111111101111;
    //             end
    //             4'b0101: begin
    //                 out = 16'b1111111111011111;
    //             end
    //             4'b0110: begin
    //                 out = 16'b1111111110111111;
    //             end
    //             4'b0111: begin
    //                 out = 16'b1111111101111111;
    //             end
    //             4'b1000: begin
    //                 out = 16'b1111111011111111;
    //             end
    //             4'b1001: begin
    //                 out = 16'b1111110111111111;
    //             end
    //             4'b1010: begin
    //                 out = 16'b1111101111111111;
    //             end
    //             4'b1011: begin
    //                 out = 16'b1111011111111111;
    //             end
    //             4'b1100: begin
    //                 out = 16'b1110111111111111;
    //             end
    //             4'b1101: begin
    //                 out = 16'b1101111111111111;
    //             end
    //             4'b1110: begin
    //                 out = 16'b1011111111111111;
    //             end
    //             4'b1111: begin
    //                 out = 16'b0111111111111111;
    //             end
    //         endcase
    //     end
    // end

endmodule