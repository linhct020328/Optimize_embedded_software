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
	.file	"b4.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Nhap a,b = \000"
	.align	2
.LC1:
	.ascii	"%d%d\000"
	.align	2
.LC2:
	.ascii	"Uoc chung lon nhat la %d\000"
	.global	__aeabi_idiv
	.align	2
.LC3:
	.ascii	"\012Boi chung nho nhat la %d\000"
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r9, .L20
	ldr	r4, .L20+4
	mov	r8, r9
	mov	r7, r4
	ldr	r6, .L20+8
	ldr	r5, .L20+12
.L15:
	mov	r1, r6
	mov	r0, #1
	bl	__printf_chk
	mov	r2, r8
	mov	r1, r7
	mov	r0, r5
	bl	__isoc99_scanf
	ldr	r3, [r4]
	cmp	r3, #0
	ble	.L15
	ldr	r2, [r9]
	cmp	r2, #0
	ble	.L15
	ldr	r6, .L20+16
	ldr	r5, .L20+20
	cmp	r3, r2
	str	r3, [r6]
	str	r2, [r5]
	beq	.L3
	mov	r1, #0
	mov	r0, r1
.L6:
	cmp	r2, r3
	sublt	r3, r3, r2
	subge	r2, r2, r3
	movlt	r0, #1
	movge	r1, #1
	cmp	r3, r2
	bne	.L6
	cmp	r0, #0
	strne	r2, [r4]
	cmp	r1, #0
	strne	r2, [r9]
.L3:
	ldr	r1, .L20+24
	mov	r0, #1
	bl	__printf_chk
	ldr	r3, [r6]
	ldr	r0, [r5]
	ldr	r1, [r4]
	mul	r0, r3, r0
	bl	__aeabi_idiv
	ldr	r1, .L20+28
	mov	r2, r0
	mov	r0, #1
	bl	__printf_chk
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L21:
	.align	2
.L20:
	.word	b
	.word	a
	.word	.LC0
	.word	.LC1
	.word	x
	.word	y
	.word	.LC2
	.word	.LC3
	.size	main, .-main
	.comm	b,4,4
	.comm	a,4,4
	.comm	y,4,4
	.comm	x,4,4
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
