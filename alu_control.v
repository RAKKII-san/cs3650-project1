// Submodule: ALU Control Unit

module ALUCtrlrol(
    input [1:0] ALUOp,
    input [5:0] funct,
    output reg [2:0] ALUCtrl
);
always @(*)
    case(ALUOp)
        2'b00: ALUCtrl <= 3'b010; // add for lw/sw
        2'b01: ALUCtrl <= 3'b110; // sub for beq
        default: case (funct) // R-type instructions
            6'b100000: ALUCtrl <= 3'b010; // add
            6'b100010: ALUCtrl <= 3'b010; // sub
            6'b100100: ALUCtrl <= 3'b010; // logical and
            6'b100101: ALUCtrl <= 3'b010; // logical or
            6'b101010: ALUCtrl <= 3'b010; // set on less (slt)
            default: ALUCtrl <= 3'b101; // should never happen
        endcase
    endcase

endmodule