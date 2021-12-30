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
	.file	"b6.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Nhap a[%d]: \000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.text
	.align	2
	.global	NhapMang
	.syntax unified
	.arm
	.fpu softvfp
	.type	NhapMang, %function
NhapMang:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	subs	r6, r1, #0
	pople	{r4, r5, r6, r7, r8, pc}
	mov	r5, r0
	mov	r4, #0
	ldr	r8, .L7
	ldr	r7, .L7+4
.L3:
	mov	r0, #1
	mov	r2, r4
	mov	r1, r8
	add	r4, r4, r0
	bl	__printf_chk
	mov	r1, r5
	mov	r0, r7
	bl	__isoc99_scanf
	cmp	r6, r4
	add	r5, r5, #4
	bne	.L3
	pop	{r4, r5, r6, r7, r8, pc}
.L8:
	.align	2
.L7:
	.word	.LC0
	.word	.LC1
	.size	NhapMang, .-NhapMang
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"Tong cac so le trong mang la: \000"
	.text
	.align	2
	.global	In
	.syntax unified
	.arm
	.fpu softvfp
	.type	In, %function
In:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r1
	mov	r4, r0
	ldr	r0, .L15
	bl	puts
	cmp	r5, #0
	mov	r2, #0
	ble	.L10
	sub	r0, r4, #4
	add	r1, r0, r5, lsl #2
.L11:
	ldr	r3, [r0, #4]!
	cmp	r0, r1
	add	r2, r2, r3
	bne	.L11
.L10:
	pop	{r4, r5, r6, lr}
	mov	r0, #1
	ldr	r1, .L15+4
	b	__printf_chk
.L16:
	.align	2
.L15:
	.word	.LC2
	.word	.LC1
	.size	In, .-In
	.section	.rodata.str1.4
	.align	2
.LC3:
	.ascii	"Nhap n: \000"
	.section	.rodata.cst4,"aM",%progbits,4
	.align	2
.LC4:
	.word	__stack_chk_guard
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #12
	ldr	r3, [fp, #-20]
	ldr	r1, .L21
	lsl	r3, r3, #2
	add	r3, r3, #7
	bic	r3, r3, #7
	sub	sp, sp, r3
	mov	r4, sp
	ldr	r3, .L21+4
	mov	r0, #1
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	mov	r3,#0
	bl	__printf_chk
	sub	r1, fp, #20
	ldr	r0, .L21+8
	bl	__isoc99_scanf
	mov	r0, r4
	ldr	r1, [fp, #-20]
	bl	NhapMang
	mov	r0, r4
	ldr	r1, [fp, #-20]
	bl	In
	ldr	r3, .L21+4
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L20
	mov	r0, #0
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L20:
	bl	__stack_chk_fail
.L22:
	.align	2
.L21:
	.word	.LC3
	.word	.LC4
	.word	.LC1
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
