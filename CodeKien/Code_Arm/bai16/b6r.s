	.arch armv5t
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"b6.c"
	.text
	.section	.rodata
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2
.L3:
	ldr	r1, [fp, #-8]
	ldr	r0, .L4
	bl	printf
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	mov	r1, r3
	ldr	r0, .L4+4
	bl	__isoc99_scanf
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	blt	.L3
	nop
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L5:
	.align	2
.L4:
	.word	.LC0
	.word	.LC1
	.size	NhapMang, .-NhapMang
	.section	.rodata
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r0, .L9
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L7
.L8:
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	ldr	r3, [r3]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L7:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	blt	.L8
	ldr	r1, [fp, #-8]
	ldr	r0, .L9+4
	bl	printf
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L10:
	.align	2
.L9:
	.word	.LC2
	.word	.LC1
	.size	In, .-In
	.section	.rodata
	.align	2
.LC3:
	.ascii	"Nhap n: \000"
	.align	2
.LC4:
	.word	__stack_chk_guard
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #20
	ldr	r3, .L14
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	mov	r3,#0
	mov	r3, sp
	mov	r4, r3
	ldr	ip, [fp, #-28]
	sub	r3, ip, #1
	str	r3, [fp, #-24]
	mov	r3, ip
	mov	r0, r3
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	lsl	r3, r1, #5
	orr	r3, r3, r0, lsr #27
	lsl	r2, r0, #5
	mov	r3, ip
	mov	r0, r3
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	lsl	r3, r1, #5
	orr	r3, r3, r0, lsr #27
	lsl	r2, r0, #5
	mov	r3, ip
	lsl	r3, r3, #2
	add	r3, r3, #7
	lsr	r3, r3, #3
	lsl	r3, r3, #3
	sub	sp, sp, r3
	mov	r3, sp
	add	r3, r3, #3
	lsr	r3, r3, #2
	lsl	r3, r3, #2
	str	r3, [fp, #-20]
	ldr	r0, .L14+4
	bl	printf
	sub	r3, fp, #28
	mov	r1, r3
	ldr	r0, .L14+8
	bl	__isoc99_scanf
	ldr	r3, [fp, #-28]
	mov	r1, r3
	ldr	r0, [fp, #-20]
	bl	NhapMang
	ldr	r3, [fp, #-28]
	mov	r1, r3
	ldr	r0, [fp, #-20]
	bl	In
	mov	sp, r4
	mov	r3, #0
	ldr	r2, .L14
	ldr	r1, [r2]
	ldr	r2, [fp, #-16]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L13
	bl	__stack_chk_fail
.L13:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L15:
	.align	2
.L14:
	.word	.LC4
	.word	.LC3
	.word	.LC1
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
