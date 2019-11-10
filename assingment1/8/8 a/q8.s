#Factorial of a random number
#program 8
#Ayush Kumar(17CO111) , Ranjana Krishnamurthy(17CO134)
#random number is 5
#answer in x28

	.option nopic
	.data
	.global a
a:
	.dword 5
	.text
	.global main
	.type main,@function
main:
	ld x5,a
	li x28,1
	li x6,1
	ld x7,a
for:
	mul x28,x28,x6
	addi x6,x6,1
	ble x6,x7,for


