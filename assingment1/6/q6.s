
#Function to compute the sum of elemets in the array
#program 6
#Ayush Kumar(17CO111) , Ranjana Krishnamurthy(17CO134)
#The elements are present in array variable


	.option nopic 
	.data
	.global a
array:
	.dword 10,2,3
	.text
	.global main
	.type main,@function
main:
	addi sp,sp,-16
	sd ra,8(sp)
	sd s0,0(sp)
	li a0,3
	la a1,array
	jal ra,sum
	div t3,a1,a0					
	ld s0,0(sp)
	ld ra,8(sp)
	addi sp,sp,16
	jalr x0,0(ra)	
	.global sum
	.type sum,@function
sum:
	addi sp,sp,-16
	sd ra,8(sp)
	sd s0,0(sp)
	mv t0,x0
	mv t1,x0
for:
	beq t0,a0,end_for
	ld t2,0(a1)
	add t1,t1,t2
	addi a1,a1,8
	addi t0,t0,1
	jal x0,for
end_for:
	mv a1,t1
	ld s0,0(sp)
	ld ra,8(sp)
	addi sp,sp,16
	jalr x0,0(ra)

