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
	.file	"b2.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Nhap a=\000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"Nhap b=\000"
	.align	2
.LC3:
	.ascii	"Nhap c=\000"
	.text
	.align	2
	.global	nhap
	.syntax unified
	.arm
	.fpu softvfp
	.type	nhap, %function
nhap:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L4
	ldr	r1, .L4+4
	mov	r0, #1
	bl	__printf_chk
	mov	r0, r4
	ldr	r1, .L4+8
	bl	__isoc99_scanf
	ldr	r1, .L4+12
	mov	r0, #1
	bl	__printf_chk
	mov	r0, r4
	ldr	r1, .L4+16
	bl	__isoc99_scanf
	ldr	r1, .L4+20
	mov	r0, #1
	bl	__printf_chk
	mov	r0, r4
	pop	{r4, lr}
	ldr	r1, .L4+24
	b	__isoc99_scanf
.L5:
	.align	2
.L4:
	.word	.LC1
	.word	.LC0
	.word	a
	.word	.LC2
	.word	b
	.word	.LC3
	.word	c
	.size	nhap, .-nhap
	.section	.rodata.str1.4
	.align	2
.LC4:
	.ascii	"gia tri lon nhat la: %d\000"
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
	bl	nhap
	pop	{r4, lr}
	ldr	r3, .L10
	ldr	r2, .L10+4
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, .L10+8
	cmp	r2, r3
	movge	r3, r2
	ldr	r2, [r1]
	ldr	ip, .L10+12
	cmp	r2, r3
	movlt	r2, r3
	mov	r0, #1
	ldr	r1, .L10+16
	str	r2, [ip]
	b	__printf_chk
.L11:
	.align	2
.L10:
	.word	a
	.word	b
	.word	c
	.word	max
	.word	.LC4
	.size	main, .-main
	.comm	max,4,4
	.comm	c,4,4
	.comm	b,4,4
	.comm	a,4,4
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
