#program 4
#Ayush Kumar(17CO111) , Ranjana Krishnamurthy(17CO134)
#enter 10 numbers in an array and store the result into x5.

.option nopic
.section	.text
.globl main
.type main,@function

main:
addi	sp,sp,-88
sd	s0,88(sp)
addi	s0,sp,88
li	t0,10
sd	t0,80(sp)
li	t0,2
sd	t0,72(sp)
li	t0,1
sd	t0,64(sp)
li	t0,9
sd	t0,56(sp)
li	t0,12
sd	t0,48(sp)
li	t0,9
sd	t0,40(sp)
li	t0,4
sd	t0,32(sp)
li	t0,15
sd	t0,24(sp)
li	t0,16
sd	t0,16(sp)
li	t0,1
ld	a0,80(sp)
addi	a1,s0,-24
li	t0,0
li	s2,0
jal	ra,.SUM
ld	s1,80(sp)
div	s3,s2,s1

.SUM:
bge	t0,a0,.EXIT
slli	a4,t0,3
sub	a4,a1,a4
ld	t2,0(a4)
add	s2,s2,t2
addi	t0,t0,1
beq	x0,x0,.SUM

.EXIT:
jr	ra



