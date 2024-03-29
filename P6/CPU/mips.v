`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:41:38 12/14/2020 
// Design Name: 
// Module Name:    mips 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mips(
    input clk,
    input reset
    );
	 //------------------ATcontroller---------------
	 wire [1:0] MF_RD1_Sel,MF_RD2_Sel,MF_ALUA_Sel,MF_ALUB_Sel;
	 wire MF_DMWD_Sel,PC_en,D_en,E_clr,busy,start,MD_instr;
	 wire [4:0] rs_D,rs_E,rt_D,rt_E,rt_M,A3_M,A3_E,A3_W;
	 wire [1:0] Tuse_rs,Tuse_rt,Tnew_E,Tnew_M;
	 ATcontroller ATcontroller(
		.rs_D(rs_D),
		.rt_D(rt_D),
		.rs_E(rs_E),
		.rt_E(rt_E),
		.rt_M(rt_M),
		.A3_E(A3_E),
		.A3_M(A3_M),
		.A3_W(A3_W),
		.Tuse_rs(Tuse_rs),
		.Tuse_rt(Tuse_rt),
		.Tnew_E(Tnew_E),
		.Tnew_M(Tnew_M),
		.MF_RD1_Sel(MF_RD1_Sel),
		.MF_RD2_Sel(MF_RD2_Sel),
		.MF_ALUA_Sel(MF_ALUA_Sel),
		.MF_ALUB_Sel(MF_ALUB_Sel),
		.MF_DMWD_Sel(MF_DMWD_Sel),
		.MD_instr(MD_instr),
		.busy(busy),
		.start(start),
		.PC_en(PC_en),
		.D_en(D_en),
		.E_clr(E_clr) 
	 );

	 //------------------stageF---------------
	 wire [31:0] NPC,instr_F,PC_F,PC8_F;
	 
	 
	 stageF stageF(
		.clk(clk),
		.reset(reset),
		.NPC(NPC),
		.PC_en(PC_en),
		.instr_F(instr_F),
		.PC_F(PC_F),
		.PC8_F(PC8_F)
	 );
	//------------------regD---------------
	wire [31:0] instr_D,PC_D,PC8_D;
	
	regD regD(
		.clk(clk),
		.reset(reset),
		.D_en(D_en),
		.instr_F(instr_F),
		.PC_F(PC_F),
		.PC8_F(PC8_F),
		.instr_D(instr_D),
		.PC_D(PC_D),
		.PC8_D(PC8_D)
	);
	//------------------stageD---------------
	wire [15:0] imm16;
	wire [25:0] addr26;
	wire [1:0] NPCOp;
	wire EXTOp,Equ,Ltz,Gtz,Br;
	wire [31:0] RFWD_W,RD1_D,RD2_D,imm32_D,C_M,PC8_E,RFWD_M,PC_W;
	wire [4:0] A3_D;
	
	controller controller_D(
		.instr(instr_D),
		.EXTOp(EXTOp),
		.rs(rs_D),
		.rt(rt_D),
		.NPCOp(NPCOp),
		.imm16(imm16),
		.addr26(addr26),
		.Tuse_rs(Tuse_rs),
		.Tuse_rt(Tuse_rt),
		.A3(A3_D),
		.Br(Br),
		.Equ(Equ),
		.Ltz(Ltz),
		.Gtz(Gtz),
		.MD_instr(MD_instr)
	);
	
	stageD stageD(
		.clk(clk),
		.reset(reset),
		.A1_D(rs_D),
		.A2_D(rt_D),
		.A3_W(A3_W),
		.PC_D(PC_D),
		.PC_F(PC_F),
		.PC_W(PC_W),
		.imm16(imm16),
		.addr26(addr26),
		.EXTOp(EXTOp),
		.RFWD_M(RFWD_M),
		.RFWD_W(RFWD_W),
		.NPCOp(NPCOp),
		.PC8_E(PC8_E),
		.MF_RD1_Sel(MF_RD1_Sel),
		.MF_RD2_Sel(MF_RD2_Sel),
		.RD1_D(RD1_D),
		.RD2_D(RD2_D),
		.imm32_D(imm32_D),
		.Next_PC(NPC),
		.Equ(Equ),
		.Ltz(Ltz),
		.Gtz(Gtz),
		.Br(Br)
	);
	
	//------------------regE---------------
	wire [31:0] RD1_E,RD2_E,imm32_E,instr_E,PC_E;
	regE regE(
		.clk(clk),
		.reset(reset),
		.E_clr(E_clr),
		.A3_D(A3_D),
		.instr_D(instr_D),
		.PC_D(PC_D),
		.PC8_D(PC8_D),
		.RD1_D(RD1_D),
		.RD2_D(RD2_D),
		.imm32_D(imm32_D),
		.RD1_E(RD1_E),
		.RD2_E(RD2_E),
		.imm32_E(imm32_E),
		.instr_E(instr_E),
		.PC_E(PC_E),
		.PC8_E(PC8_E),
		.A3_E(A3_E)
	);
	
	//------------------stageE---------------
	wire [3:0] ALUOp;
	wire BSel,VSel,CSel;
	wire [3:0] MDOp;
	wire [4:0] shamt;
	wire [31:0] C_E,RD2_E_new;
	controller controller_E(
		.instr(instr_E),
		.ALUOp(ALUOp),
		.BSel(BSel),
		.VSel(VSel),
		.start(start),
		.CSel(CSel),
		.MDOp(MDOp),
		.rs(rs_E),
		.rt(rt_E),
		.shamt(shamt),
		.Tnew_E(Tnew_E)
	);
	
	stageE stageE(
		.RD1_E(RD1_E),
		.RD2_E(RD2_E),
		.imm32_E(imm32_E),
		.ALUOp(ALUOp),
		.VSel(VSel),
		.clk(clk),
		.reset(reset),
		.start(start),
		.busy(busy),
		.CSel(CSel),
		.MDOp(MDOp),
		.shamt(shamt),
		.RFWD_M(RFWD_M),
		.RFWD_W(RFWD_W),
		.MF_ALUA_Sel(MF_ALUA_Sel),
		.MF_ALUB_Sel(MF_ALUB_Sel),
		.BSel(BSel),
		.C_E(C_E),
		.RD2_new(RD2_E_new)
	);
	
	//------------------regM---------------
	wire [31:0] RD2_M,instr_M,PC_M,PC8_M;
	regM regM(
		.clk(clk),
		.reset(reset),
		.instr_E(instr_E),
		.A3_E(A3_E),
		.PC_E(PC_E),
		.PC8_E(PC8_E),
		.C_E(C_E),
		.RD2_E(RD2_E_new),
		.C_M(C_M),
		.RD2_M(RD2_M),
		.instr_M(instr_M),
		.PC_M(PC_M),
		.PC8_M(PC8_M),
		.A3_M(A3_M)
	);
	
	//------------------stageM---------------
	wire [31:0] D_M;
	wire [1:0] WDSel_M,DAOp;
	wire SSel;
	controller controller_M(
		.instr(instr_M),
		.DMWr(DMWr),
		.DAOp(DAOp),
		.SSel(SSel),
		.rt(rt_M),
		.Tnew_M(Tnew_M),
		.WDSel(WDSel_M)
	);
	
	stageM stageM(
		.clk(clk),
		.reset(reset),
		.PC_M(PC_M),
		.DMWr(DMWr),
		.DAOp(DAOp),
		.SSel(SSel),
		.A_M(C_M),
		.WD_M(RD2_M),
		.RFWD_W(RFWD_W),
		.MF_DMWD_Sel(MF_DMWD_Sel),
		.D_M(D_M),
		.C_M(C_M),
		.RFWD_M(RFWD_M),
		.WDSel_M(WDSel_M),
		.PC8_M(PC8_M)
	);
	
	//------------------regW---------------
	wire [31:0] instr_W,PC8_W,D_W,C_W;
	regW regW(
		.clk(clk),
		.reset(reset),
		.A3_M(A3_M),
		.instr_M(instr_M),
		.PC_M(PC_M),
		.PC_W(PC_W),
		.PC8_M(PC8_M),
		.D_M(D_M),
		.C_M(C_M),
		.instr_W(instr_W),
		.PC8_W(PC8_W),
		.D_W(D_W),
		.C_W(C_W),
		.A3_W(A3_W)
	);
	
	//------------------stageW---------------
	wire [1:0] WDSel_W;
	controller controller_W(
		.instr(instr_W),
		.WDSel(WDSel_W)
	);
	stageW stageW(
		.D_W(D_W),
		.C_W(C_W),
		.PC8_W(PC8_W),
		.WDSel_W(WDSel_W),
		.RFWD_W(RFWD_W)
	);
endmodule
