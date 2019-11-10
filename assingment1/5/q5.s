
#Reverse given string
#program 5
#Ayush Kumar(17CO111) , Ranjana Krishnamurthy(17CO134)
#The given string is "today"


	.option nopic
	.data
	.global str
	.type str,@object
str:
	.byte 't','o','d','a','y'
	.global rev
rev:						#to store the reversed string
	.space 5
	.text
	.global main
	.type main,@function
main:
	addi sp,sp,-16
	sd ra,8(sp)
	sd s0,0(sp)
	la t0,str
	add t2,sp,0 				#save stack's current positon
for:						#put characters of the string into the stack
	ld t1,0(t0) 				#required character stored in t1
	beq t1,x0,end_for
	addi sp,sp,-1
	sb t1,0(sp)
	addi t0,t0,1
	jal x0, for
end_for:
	la t0,rev
forn:						#pop from the stack
	beq t2,sp,end_forn
	lb t1,0(sp)
	sw t1,0(t0)
	addi t0,t0,1
	addi sp,sp,1
	jal x0,forn
end_forn:
	lui a0,%hi(rev)
	addi a0,a0,%lo(rev)
	jal ra,printf
	ld s0,0(sp)
	ld ra,8(sp)
	addi sp,sp,16
	ret

