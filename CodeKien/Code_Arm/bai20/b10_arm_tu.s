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
	.file	"b10.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
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
	.align	2
	.global	TimKiem
	.syntax unified
	.arm
	.fpu softvfp
	.type	TimKiem, %function
TimKiem:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	mov	r3, r0
	ble	.L12
	mov	r0, #0
	sub	r3, r3, #4
.L11:
	ldr	ip, [r3, #4]!
	cmp	ip, r2
	bxeq	lr
	add	r0, r0, #1
	cmp	r1, r0
	bne	.L11
.L12:
	mvn	r0, #0
	bx	lr
	.size	TimKiem, .-TimKiem
	.section	.rodata.str1.4
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
	.section	.rodata.cst4,"aM",%progbits,4
	.align	2
.LC7:
	.word	__stack_chk_guard
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #20
	ldr	r3, .L27
	sub	sp, sp, #400
	mov	r0, #1
	ldr	r1, .L27+4
	ldr	r3, [r3]
	str	r3, [fp, #-24]
	mov	r3,#0
	mov	r4, sp
	bl	__printf_chk
	ldr	r5, .L27+8
	ldr	r6, .L27+12
.L16:
	mov	r0, r5
	sub	r1, fp, #32
	bl	__isoc99_scanf
	ldr	r3, [fp, #-32]
	sub	r3, r3, #1
	cmp	r3, #99
	bhi	.L24
.L15:
	ldr	r0, .L27+16
	bl	puts
	mov	r0, r4
	ldr	r1, [fp, #-32]
	bl	NhapMang
	ldr	r1, .L27+20
	mov	r0, #1
	bl	__printf_chk
	sub	r1, fp, #28
	ldr	r0, .L27+8
	bl	__isoc99_scanf
	ldr	r1, [fp, #-32]
	ldr	r2, [fp, #-28]
	cmp	r1, #0
	ble	.L20
	mov	r3, #0
	sub	r0, r4, #4
	b	.L18
.L25:
	add	r3, r3, #1
	cmp	r1, r3
	beq	.L20
.L18:
	ldr	ip, [r0, #4]!
	cmp	r2, ip
	bne	.L25
.L17:
	mov	r0, #1
	ldr	r1, .L27+24
	bl	__printf_chk
	ldr	r3, .L27
	ldr	r2, [r3]
	ldr	r3, [fp, #-24]
	eors	r2, r3, r2
	mov	r3, #0
	bne	.L26
	mov	r0, #0
	sub	sp, fp, #16
	@ sp needed
	pop	{r4, r5, r6, fp, pc}
.L24:
	mov	r1, r6
	mov	r0, #1
	bl	__printf_chk
	ldr	r3, [fp, #-32]
	sub	r3, r3, #1
	cmp	r3, #99
	bhi	.L16
	b	.L15
.L20:
	mvn	r3, #0
	b	.L17
.L26:
	bl	__stack_chk_fail
.L28:
	.align	2
.L27:
	.word	.LC7
	.word	.LC2
	.word	.LC1
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.size	main, .-main
	.global	MAX
	.section	.rodata
	.align	2
	.type	MAX, %object
	.size	MAX, 4
MAX:
	.word	100
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
