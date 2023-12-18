module decoder_3_to_8 (input wire enable, input wire [2:0] in, output wire [7:0] out);
    // gate-level implementation
    // wire in2_not;
    // wire enable_1;
    // wire enable_2;

    // not(in2_not, in[2]);

    // or(enable_1, enable, in[2]);
    // or(enable_2, enable, in2_not); 

    // decoder_2_to_4 dut1 (
    //     .enable(enable_1),
    //     .in(in[1:0]),
    //     .out(out[3:0])
    // );

    // decoder_2_to_4 dut2 (
    //     .enable(enable_2),
    //     .in(in[1:0]),
    //     .out(out[7:4])
    // );

    // ------------------------------------------------

    // dataflow implementation
    decoder_2_to_4 dut1 (
        .enable(enable | in[2]),
        .in(in[1:0]),
        .out(out[3:0])
    );

    decoder_2_to_4 dut2 (
        .enable(enable | ~in[2]),
        .in(in[1:0]),
        .out(out[7:4])
    );

    // ------------------------------------------------

    // behavioral implementation --> change output wire to reg
    // always @ (enable or in) begin
    //     if (enable) begin
    //         out = 8'b11111111;
    //     end else begin
    //         case (in)
    //             3'b000: begin
    //                 out = 8'b11111110;
    //             end
    //             3'b001: begin
    //                 out = 8'b11111101;
    //             end
    //             3'b010: begin
    //                 out = 8'b11111011;
    //             end
    //             3'b011: begin
    //                 out = 8'b11110111;
    //             end
    //             3'b100: begin
    //                 out = 8'b11101111;
    //             end
    //             3'b101: begin
    //                 out = 8'b11011111;
    //             end
    //             3'b110: begin
    //                 out = 8'b10111111;
    //             end
    //             3'b111: begin
    //                 out = 8'b01111111;
    //             end
    //         endcase
    //     end
    // end

endmodule