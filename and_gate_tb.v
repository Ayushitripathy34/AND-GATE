`timescale 1ps/1ps
`include "and_gate.v"
module tb_and_gate;

    reg A;
    reg B;
    wire Y;

    and_gate uut (
        .A(A),
        .B(B),
        .Y(Y)
    );
    initial begin
        $dumpvars;
        $dumpfile("and_gate_tb.vcd");
    end
    initial begin
        A = 0; B = 0;
        #10 A = 0; B = 1;
        #10 A = 1; B = 0;
        #10 A = 1; B = 1;
        #10 $display("complete");
        #10 $finish;


    end
   
endmodule
