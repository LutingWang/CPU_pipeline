ori $t0,$0,4
sw $t0,4($0)
ori $t1,$0,4
addu $t1,$t1,$t1
sw $t1,-4($t1)
lw $t2,-4($t1)
addu $t3,$t1,$t1
#users-0
ori $t1,$0,4
addu $t2,$t1,$0
beq $t1,$t2,a
nop
lui $1,0xf0f0
a:ori $t1,$0,0x3000
ori $t2,$0,0x0048
addu $t1,$t2,$t1
jr $t1
nop
lui $1,0xf0f0
lui $1,0x0001
