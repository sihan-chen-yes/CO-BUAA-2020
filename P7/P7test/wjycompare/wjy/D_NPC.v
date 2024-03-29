`timescale 1ns / 1ps
`include "const.v"

module D_NPC (
    input req,
    input eret,
    input [31:0] EPC,

    input [31:0] D_pc,
    input [31:0] F_pc,
    input [25:0] imm26,
    input [31:0] rs,
    input [2:0] Br,
    input b_jump,
    output [31:0] npc
);
    assign npc =    req ? 32'h0000_4180 :
                    eret ? EPC :
                    (Br == `BR_pc4) ? F_pc + 4 :
                    (Br == `BR_addr) ? {D_pc[31:28], imm26, 2'b0} :
                    (Br == `BR_reg) ? rs :
                    (Br == `BR_branch && b_jump) ? D_pc + 4 + {{14{imm26[15]}}, imm26[15:0], 2'b0} :
                    F_pc + 4;
    wire [31:28] test1 = D_pc[31:28];
endmodule