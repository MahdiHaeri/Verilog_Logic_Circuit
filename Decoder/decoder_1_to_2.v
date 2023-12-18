// active low enable and output decoder
module decoder_1_to_2 (input wire enable, in, output wire out0, out1);
    // gate-level implementation
    // wire in_not;
    // wire enable_not;

    // not(in_not, in);
    // not(enable_not, enable);

    // nand(out0, enable_not, in_not);
    // nand(out1, enable_not, in);

    // ------------------------------------------------

    // dataflow implementation
    assign out0 = ~(~enable & ~in);
    assign out1 = ~(~enable & in);

    // ------------------------------------------------

    // behavioral implementation --> for behavioral implementation, we need to change wire out0, out1 to reg out0, out1
    // always @ (enable or in) begin
    //     if (enable) begin 
    //         out0 = 1;
    //         out1 = 1;
    //     end else begin
    //         if (in) begin
    //             out0 = 1;
    //             out1 = 0;
    //         end else begin
    //             out0 = 0;
    //             out1 = 1;
    //         end
    //     end
    // end

endmodule