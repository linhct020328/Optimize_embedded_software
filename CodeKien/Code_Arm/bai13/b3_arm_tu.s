	.arch armv5t
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"b3.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Nhap x:\000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"%d la so chan\000"
	.align	2
.LC3:
	.ascii	"%d la so le\000"
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L6
	ldr	r1, .L6+4
	mov	r0, #1
	bl	__printf_chk
	mov	r1, r4
	ldr	r0, .L6+8
	bl	__isoc99_scanf
	ldr	r2, [r4]
	mov	r0, #1
	tst	r2, #1
	ldreq	r1, .L6+12
	ldrne	r1, .L6+16
	bl	__printf_chk
	mov	r0, #0
	pop	{r4, pc}
.L7:
	.align	2
.L6:
	.word	x
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	main, .-main
	.comm	x,4,4
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
