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
	.file	"b10.c"
	.text
	.global	MAX
	.section	.rodata
	.align	2
	.type	MAX, %object
	.size	MAX, 4
MAX:
	.word	100
	.align	2
.LC0:
	.ascii	"\012Nhap phan tu a[%d] = \000"
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
	.align	2
	.global	TimKiem
	.syntax unified
	.arm
	.fpu softvfp
	.type	TimKiem, %function
TimKiem:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L7
.L10:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	ldr	r3, [r3]
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	bne	.L8
	ldr	r3, [fp, #-8]
	b	.L9
.L8:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L7:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	blt	.L10
	mvn	r3, #0
.L9:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	TimKiem, .-TimKiem
	.section	.rodata
	.align	2
.LC2:
	.ascii	"\012Nhap so luong phan tu: \000"
	.align	2
.LC3:
	.ascii	"\012Nhap lai so luong phan tu: \000"
	.align	2
.LC4:
	.ascii	"\012======NHAP MANG=====\000"
	.align	2
.LC5:
	.ascii	"\012Nhap vao gia tri can tim: \000"
	.align	2
.LC6:
	.ascii	"\012Tim thay so %d tai chi so %d!\000"
	.align	2
.LC7:
	.word	__stack_chk_guard
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
	sub	sp, sp, #24
	ldr	r3, .L17
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	mov	r3,#0
	mov	r3, sp
	mov	r5, r3
	mov	r3, #100
	sub	r3, r3, #1
	str	r3, [fp, #-24]
	mov	r3, #100
	mov	r0, r3
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	lsl	r3, r1, #5
	orr	r3, r3, r0, lsr #27
	lsl	r2, r0, #5
	mov	r3, #100
	mov	r0, r3
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	lsl	r3, r1, #5
	orr	r3, r3, r0, lsr #27
	lsl	r2, r0, #5
	mov	r3, #100
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
	ldr	r0, .L17+4
	bl	printf
.L14:
	sub	r3, fp, #32
	mov	r1, r3
	ldr	r0, .L17+8
	bl	__isoc99_scanf
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	ble	.L12
	ldr	r3, [fp, #-32]
	mov	r2, #100
	cmp	r3, r2
	ble	.L13
.L12:
	ldr	r0, .L17+12
	bl	printf
.L13:
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	ble	.L14
	ldr	r3, [fp, #-32]
	mov	r2, #100
	cmp	r3, r2
	bgt	.L14
	ldr	r0, .L17+16
	bl	puts
	ldr	r3, [fp, #-32]
	mov	r1, r3
	ldr	r0, [fp, #-20]
	bl	NhapMang
	ldr	r0, .L17+20
	bl	printf
	sub	r3, fp, #28
	mov	r1, r3
	ldr	r0, .L17+8
	bl	__isoc99_scanf
	ldr	r4, [fp, #-28]
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-28]
	mov	r1, r3
	ldr	r0, [fp, #-20]
	bl	TimKiem
	mov	r3, r0
	mov	r2, r3
	mov	r1, r4
	ldr	r0, .L17+24
	bl	printf
	mov	sp, r5
	mov	r3, #0
	ldr	r2, .L17
	ldr	r1, [r2]
	ldr	r2, [fp, #-16]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L16
	bl	__stack_chk_fail
.L16:
	mov	r0, r3
	sub	sp, fp, #12
	@ sp needed
	pop	{r4, r5, fp, pc}
.L18:
	.align	2
.L17:
	.word	.LC7
	.word	.LC2
	.word	.LC1
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
