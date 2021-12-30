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
	.file	"bai3tu.c"
	.text
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r0, .L12
	bl	puts
	mov	r5, #4
	ldr	r7, .L12+4
.L2:
	cmp	r5, #0
	movne	r4, #1
	beq	.L6
.L3:
	add	r4, r4, #1
	mov	r0, #32
	bl	putchar
	cmp	r5, r4
	bge	.L3
.L6:
	mov	r4, #1
	rsb	r6, r5, #6
.L4:
	add	r4, r4, #1
	mov	r1, r7
	mov	r0, #1
	bl	__printf_chk
	cmp	r4, r6
	bne	.L4
	sub	r5, r5, #1
	mov	r0, #10
	bl	putchar
	cmn	r5, #1
	bne	.L2
	pop	{r4, r5, r6, r7, r8, pc}
.L13:
	.align	2
.L12:
	.word	.LC0
	.word	.LC1
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Ve tam giac sao deu:\012\000"
	.space	2
.LC1:
	.ascii	"* \000"
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
