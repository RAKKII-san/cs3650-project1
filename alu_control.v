// Submodule: ALU Control Unit

module ALUControl(ALUControl, ALUOp, Funct);
    output [1:0] ALUControl;
    reg [1:0] ALUControl;
    input [1:0] ALUOp;
    input [5:0] Funct;
    wire [7:0] ALUControlIn;
    assign ALUControlIn = {ALUOp,Funct};
    always @(ALUControlIn)
    casex (ALUControlIn)
        8'b11xxxxxx: ALUControl=2'b01; // xor for xori
        8'b00xxxxxx: ALUControl=2'b00; // add for lw or sw
        8'b01xxxxxx: ALUControl=2'b10; // sub for bne
        8'b10100000: ALUControl=2'b00; // add
        8'b10100010: ALUControl=2'b10; // sub
        8'b10101010: ALUControl=2'b11; // slt
        default: ALUControl=2'b00; // shouldn't happen
    endcase
endmodule