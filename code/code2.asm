beq $0,$0 c
#jal c
nop
lui $at,1
c:ori $at,$0,2
lui $at,3
#jr $ra
#nop

#########################################################3

a:
ori $t1,$0,3
sw $t1,0($0)
nop
nop
nop
lw $t2,0($0)    ##new 3 users 1 de sanzhong qingkuang
addu $t1,$t2,$t2
subu $t1,$t2,$t2
ori $t1,$t2,0
nop
nop
nop
ori $t1,$0,0
ori $t2,$0,0
nop
nop
nop
#####
ori $t1,$0,0x3080
sw $t1,0($0)
nop
nop
nop
lw $t2,0($0)    ##new 3 users 0 de sanzhong qingkuang
#nop
#beq
#nop
#nop
jr $t2
nop
lui $1,0xffff
lui $1,0x0fff

############### new 3 usert-2 de sanzhong qingkuang
ori $t1,$0,4
sw $t1,0($0)
nop
nop
nop
lw $t2,0($0)
sw $t2,-4($t2)
sw $t2,0($t2)
sw $t2,4($t2)
###
ori $t1,$0,0
ori $t2,$0,0
sw $t1,0($t2)
sw $t2,4($t1)
sw $t2,8($t2)
nop
nop
nop
###########################   new-0 users-1 usert-1
jal d
nop
lui $1,0xffff
d:addu $t1,$ra,$ra
###########################

