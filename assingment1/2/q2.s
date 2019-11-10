#program 2
#Ayush Kumar(17CO111) , Ranjana Krishnamurthy(17CO134)
#Load a 2 64b constants and add them and store them at 100th double word


 .option nopic
.section	.sdata,"aw",@progbits
.globl a
.align 2
.type a,@object
.size a,8
a:
	.dword 21
	.globl b
	.align 2
	.type b,@object
	.size b,8
b:
	.dword 12
	.text 
	.align 1
	.globl main
	.type main, @function

main:
	ld t0,a
	ld t1,b
	add t0,t1,t0
	addi sp,sp,-800
	sd t0,0(sp)
