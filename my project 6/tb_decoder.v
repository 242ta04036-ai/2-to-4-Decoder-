`timescale 1ns/1ps

module tb_decoder;

reg A;
reg B;

wire Y0;
wire Y1;
wire Y2;
wire Y3;

decoder uut(
    .A(A),
    .B(B),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3)
);

initial begin

    $dumpfile("decoder.vcd");
    $dumpvars(0, tb_decoder);

    $display("-----------------------------------");
    $display("A B | Y3 Y2 Y1 Y0");
    $display("-----------------------------------");

    A=0; B=0; #10;
    $display("%b %b |  %b  %b  %b  %b",A,B,Y3,Y2,Y1,Y0);

    A=0; B=1; #10;
    $display("%b %b |  %b  %b  %b  %b",A,B,Y3,Y2,Y1,Y0);

    A=1; B=0; #10;
    $display("%b %b |  %b  %b  %b  %b",A,B,Y3,Y2,Y1,Y0);

    A=1; B=1; #10;
    $display("%b %b |  %b  %b  %b  %b",A,B,Y3,Y2,Y1,Y0);

    $finish;

end

endmodule