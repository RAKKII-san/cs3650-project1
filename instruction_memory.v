// Submodule: Instruction Memory

`timescale 1ns / 1ns
module InstructionMem(instruction, address);

input [31:0] address;
output [31:0] instruction;
reg [31:0] instrmem[1023:0] //
reg [31:0] temp;

endmodule