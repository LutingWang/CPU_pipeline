.text
# init
addiu $t0, $0, 10
addiu $t1, $0, 11

# cal_r
addu $s0, $t0, $t1
addu $s1, $s0, $t0 # r_e_rs
addu $s2, $s0, $s1 # r_e_rt, r_m_rs
addu $s3, $s0, $s1 # r_m_rt, r_w_rs
addu $s4, $s3, $s1 # r_w_rt
addiu $s0, $t0, 11 
subu $s1, $s0, $t1 # i_e_rs
subu $s2, $s0, $t1 # i_m_rs
subu $s3, $s0, $t1 # i_w_rs
addiu $s0, $t1, 20
subu $s1, $t1, $s0 # i_e_rt
subu $s2, $t1, $s0 # i_m_rt
subu $s3, $t1, $s0 # i_w_rt
sw $s0, 0x00000000
sw $s1, 0x00000004
sw $s2, 0x00000008
sw $s3, 0x0000000c
lw $s4, 0x00000000
slt $s5, $s4, $t0 # load_e_rs
slt $t6, $s4, $t0 # load_m_rs
slt $t7, $s4, $t0 # loadw_rs
lw $s4, 0x00000004
slt $s5, $t0, $s4 # load_e_rt
slt $s6, $t0, $s4 # load_m_rt 
slt $s7, $t0, $s4 # load_w_rt
jal mark1
	addu $s0, $t0, $ra # jal_e_rt
	addu $t2, $s1, $ra
mark1:
addu $s1, $t0, $ra # jal_m_rt
addu $s2, $t0, $ra # jal_w_rt
jal mark2
	addu $s0, $t1, $ra # jal_e_rs
	addu $t3, $s1, $ra 
mark2:
addu $s1, $ra, $t1 # jal_m_rs
addu $s2, $ra, $t1 # jal_w_rs
jal mark3
	addu $s1, $t0, $ra # jalr_m_rt
	addu $s2, $t0, $ra # jalr_w_rt
	j mark5
	nop
mark3:
jalr $ra
addu $s0, $t0, $ra # jalr_e_rt
mark5:
jal mark4
	addu $s4, $t0, $ra # jalr_m_rs
	addu $s5, $t0, $ra # jalr_w_rs
mark4:
jalr $ra
addu $s3, $t0, $ra # jalr_e_rs


ori $s0, $0, 0
ori $s1, $0, 0
ori $s2, $0, 0
ori $s3, $0, 0
ori $s4, $0, 0
ori $s5, $0, 0
ori $s6, $0, 0
ori $s7, $0, 0
ori $t2, $0, 0
# cal_i
addu $s0, $t0, $t1
addiu $s1, $s0, 1 # r_e
addiu $s2, $s0, 2 # r_m
addiu $s3, $s0, 3 # r_w
lui $s3, 5
addiu $s4, $s3, 4 # i_e
addiu $s5, $s3, 5 # i_m
addiu $s6, $s3, 6 # i_w
lw $s0, 0x00000000
ori $s1, $s0, 0x00000020 # load_e
ori $s2, $s0, 0x00000020 # load_m
ori $s3, $s0, 0x00000020 # load_w
jal mark6
	sw $ra, 0x00000010 # jal_e
	addiu $t2, $ra, 100
mark6:
sw $ra, 0x00000004 # jal_m
sw $ra, 0x00000008 # jal_w
jal mark7
nop
	addiu $s2, $s0, 2 # jalr_m
	addiu $s3, $s0, 3 # jalr_w
	j mark8
	nop
mark7:
jalr $s0, $ra
addiu $s1, $s0, 1
mark8:


ori $s0, $0, 0
ori $s1, $0, 0
ori $s2, $0, 0
ori $s3, $0, 0
ori $s4, $0, 0
ori $s5, $0, 0
ori $s6, $0, 0
ori $s7, $0, 0
ori $t2, $0, 0
# b
addu $s0, $t0, $t1 
addu $s1, $t0, $s0
beq $s0, $s1, mark9 # r_m_rs, r_e_rt
	nop
	ori $t3, $0, 1
mark9:
ori $s0, $0, 0
ori $s1, $0, 0
addu $s0, $t0, $t1 
nop
addu $s1, $t0, $s0
beq $s1, $s0, mark10 # r_e_rs, r_w_rt
	nop
	ori $t3, $0, 1
mark10:
ori $s0, $0, 0
ori $s1, $0, 1
addu $s0, $t0, $t1
addu $s1, $t0, $t1
nop
beq $s0, $s1, mark11 # r_w_rs, r_m_rt
	nop
	ori $t3, $0, 1
mark11:
ori $s0, $0, 0
ori $s1, $0, 0
ori $s0, $0, 1
ori $s1, $0, 2
beq $s0, $s1, mark12 # i_m_rs, i_e_rt
	nop
	ori $t3, $0, 1
mark12:
ori $s0, $0, 3
ori $s1, $0, 3
ori $s0, $0, 4
nop
ori $s1, $0, 5
beq $s1, $s0, mark13 # i_e_rs, i_w_rt
	nop
	ori $t3, $0, 1
mark13:
ori $s0, $0, 6
ori $s1, $0, 6
ori $s0, $0, 7
ori $s1, $0, 8
nop
beq $s0, $s1, mark14 # i_w_rs, i_m_rt
	nop
	ori $t3, $0, 1
mark14:
ori $s0, $0, 0
ori $s1, $0, 0
lw $s0, 0x00000000
lw $s1, 0x00000004
beq $s0, $s1, mark15 # load_m_rs, load_e_rt
	nop
	ori $t3, $0, 1
mark15:
ori $s0, $0, 3
ori $s1, $0, 3
lw $s0, 0x00000000
nop
lw $s1, 0x00000004
beq $s1, $s0, mark16 # load_e_rs, load_w_rt
	nop
	ori $t3, $0, 1
mark16:
ori $s0, $0, 6
ori $s1, $0, 6
lw $s0, 0x00000004
lw $s1, 0x00000004
nop
beq $s0, $s1, mark17 # load_w_rs, load_m_rt
	nop
	ori $t3, $0, 1
mark17:


ori $s0, $0, 0
ori $s1, $0, 0
ori $s2, $0, 4
ori $s3, $0, 0
ori $s4, $0, 0
ori $s5, $0, 0
ori $s6, $0, 0
ori $s7, $0, 0
ori $t2, $0, 0
ori $t2, 0x0000000c
sw $t2, 0x00000010
sw $s2, 0x0000000c
# load
addiu $s0, $0, 0x00000010
lw $s1, 0($s0) # i_e
subu $s0, $s0, $s2
nop
lw $s1, 4($s0) # i_m
subu $s0, $s0, $s2
nop
nop
lw $s1, 8($s0) # i_w
addu $s0, $s0, $0
lw $s1, 8($s0) # r_e
addu $s0, $s0, $s2
nop
lw $s1, 4($s0) # r_m
addu $s0, $s0, $s2
nop
nop
lw $s1, 0($s0) # r_w
lw $s3, 0x00000010
lw $s3, 0($s3) # load_e
lw $s4, 0x00000010
nop
lw $s4, 0($s3) # load_m
lw $s5, 0x00000010
nop
nop
lw $s5, 0($s3) # load_w


ori $s0, $0, 0
ori $s1, $0, 0
ori $s2, $0, 0
ori $s3, $0, 0
ori $s4, $0, 0
ori $s5, $0, 0
ori $s6, $0, 0
ori $s7, $0, 0
ori $t2, $0, 0
# store
addu $s0, $t0, $t1
sw $s0, 0x00000000 # r_e
sw $s0, 0x00000004 # r_m
sw $s0, 0x00000008 # r_w
addiu $s1, $s0, 3
sw $s1, 0x0000000c # i_e
sw $s1, 0x00000010 # i_m
sw $s1, 0x00000014 # i_w
lw $s2, 0x00000000
sw $s2, 0x00000018 # load_e
sw $s2, 0x0000001c # load_m
sw $s2, 0x00000020 # load_w
jal mark18
	sw $ra, 0x00000024 # jal_e
	ori $t0, $0, 1
mark18:
sw $ra, 0x00000028 # jal_m
sw $ra, 0x0000002c # jal_w
jal mark19
	nop
	sw $s7, 0x00000034 # jalr_m
	sw $s7, 0x00000038 # jalr_w
mark19:
jalr $s7, $ra
sw $s7, 0x00000030 #jalr_e






