#program 7
#Ayush Kumar(17CO111) , Ranjana Krishnamurthy(17CO134)
#matrix multiplication



	.file	"a7.c"
	.option nopic
	.section	.rodata
	.align	3
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	
	addi	sp,sp,-80
	sd	s0,72(sp)
	addi	s0,sp,80
	sw	zero,-32(s0)
	lui	a5,%hi(.LC0)
	ld	a4,%lo(.LC0)(a5)
	sd	a4,-48(s0)
	addi	a5,a5,%lo(.LC0)
	ld	a5,8(a5)
	sd	a5,-40(s0)
	lui	a5,%hi(.LC0)
	ld	a4,%lo(.LC0)(a5)
	sd	a4,-64(s0)
	addi	a5,a5,%lo(.LC0)
	ld	a5,8(a5)
	sd	a5,-56(s0)
	sw	zero,-20(s0)
	
	j	.L2
.L7:
	sw	zero,-24(s0)
	j	.L3
.L6:
	sw	zero,-28(s0)
	j	.L4
.L5:
	lw	a5,-28(s0)
	lw	a4,-20(s0)
	slli	a4,a4,1
	add	a5,a4,a5
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	lw	a4,-32(a5)
	lw	a5,-24(s0)
	lw	a3,-28(s0)
	slli	a3,a3,1
	add	a5,a3,a5
	slli	a5,a5,2
	addi	a3,s0,-16
	add	a5,a3,a5
	lw	a5,-48(a5)
	mulw	a5,a4,a5
	sext.w	a5,a5
	lw	a4,-32(s0)
	addw	a5,a4,a5
	sw	a5,-32(s0)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L4:
	lw	a5,-28(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L5
	lw	a5,-24(s0)
	lw	a4,-20(s0)
	slli	a4,a4,1
	add	a5,a4,a5
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	lw	a4,-32(s0)
	sw	a4,-64(a5)
	sw	zero,-32(s0)
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L3:
	lw	a5,-24(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L6
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L2:
	lw	a5,-20(s0)
	sext.w	a4,a5
	li	a5,1
	ble	a4,a5,.L7
	li	a5,0
	mv	a0,a5
	ld	s0,72(sp)
	addi	sp,sp,80
	jr	ra
	.size	main, .-main
