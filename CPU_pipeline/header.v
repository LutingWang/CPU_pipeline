`define OpCode 31:26
`define rs 25:21
`define rt 20:16
`define rd 15:11
`define Funct 5:0

`define mf_pc4e 3'b100
`define mf_ao 3'b011
`define mf_pc4m 3'b010
`define mf_wd 3'b001
`define mf_rd 3'b000

`define hzd_nop 4'b0000
`define hzd_cal_r 4'b0001
`define hzd_cal_i 4'b0010
`define hzd_load 4'b0011
`define hzd_store 4'b0100
`define hzd_b 4'b0101
`define hzd_j 4'b0110
`define hzd_jr 4'b0111
`define hzd_jal 4'b1000
`define hzd_jalr 4'b1001

`define npc_add4 2'b00
`define npc_jump 2'b01
`define npc_branch 2'b10
`define npc_jr 2'b11

`define alu_nop 3'b000
`define alu_add 3'b001
`define alu_sub 3'b010
`define alu_and 3'b011
`define alu_or 3'b100
`define alu_xor 3'b101
`define alu_lt 3'b110
`define alu_B 3'b111

`define ext_unsigned 2'b00
`define ext_signed 2'b01
`define ext_lui 2'b10
`define ext_clear 2'b11

`define RegDst_A3 2'b00
`define RegDst_A2 2'b01
`define RegDst_ra 2'b10

`define DataSrc_alu 2'b00
`define DataSrc_dm 2'b01
`define DataSrc_pc4 2'b10

`define R 6'b000000
`define nop 6'b000000
`define jr 6'b001000
`define jalr 6'b001001
`define addu 6'b100001
`define subu 6'b100011
`define slt 6'b101010

`define beq 6'b000100
`define addiu 6'b001001
`define ori 6'b001101
`define lui 6'b001111
`define lw 6'b100011
`define sw 6'b101011
`define j 6'b000010
`define jal 6'b000011

