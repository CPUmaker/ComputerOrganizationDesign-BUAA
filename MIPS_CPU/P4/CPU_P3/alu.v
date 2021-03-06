module alu(
    input [31:0] A,
    input [31:0] B,
    input [1:0] ALUOp,
    output reg [31:0] C,
    output zero
);

    always @(*) begin
        case(ALUOp)
            2'b00:      C = A + B;
            2'b01:      C = A - B;
            2'b10:      C = A | B;
            2'b11:      C = 32'hxxxx_xxxx;
            default:    C = 32'hxxxx_xxxx;
        endcase
    end 

    assign zero = (A==B) ? 1'b1 : 1'b0;

endmodule // alu