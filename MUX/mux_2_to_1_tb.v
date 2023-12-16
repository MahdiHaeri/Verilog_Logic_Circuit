module mux_2_to_1_tb;

    reg a, b, sel;
    wire y;

    mux_2_to_1 uut(a, b, sel, y);

    initial begin
        $dumpfile("mux_2_to_1_tb.vcd");
        $dumpvars(0, mux_2_to_1_tb);
        $monitor("a=%b, b=%b, sel=%b, y=%b", a, b, sel, y);

        a = 0;
        b = 0;
        sel = 0;

        #10;
        a = 0;
        b = 0;
        sel = 1;

        #10;
        a = 0;
        b = 1;
        sel = 0;

        #10;
        a = 0;
        b = 1;
        sel = 1;

        #10;
        a = 1;
        b = 0;
        sel = 0;

        #10;
        a = 1;
        b = 0;
        sel = 1;

        #10;
        a = 1;
        b = 1;
        sel = 0;

        #10;
        a = 1;
        b = 1;
        sel = 1;

        #10;
        $finish;
    end

endmodule