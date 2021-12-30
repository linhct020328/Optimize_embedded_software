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
	.file	"b5.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Nhap mot so nguyen duong \000"
	.align	2
.LC1:
	.ascii	"%d\000"
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
	ldr	r0, .L4
	bl	puts
	pop	{r4, lr}
	ldr	r1, .L4+4
	ldr	r0, .L4+8
	b	__isoc99_scanf
.L5:
	.align	2
.L4:
	.word	.LC0
	.word	x
	.word	.LC1
	.size	nhap, .-nhap
	.global	__aeabi_idivmod
	.section	.rodata.str1.4
	.align	2
.LC2:
	.ascii	"%d la so hoan hao\000"
	.align	2
.LC3:
	.ascii	"%d khong phai la so hoan hao\000"
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
	mov	r4, #1
	bl	nhap
	ldr	r3, .L19
	ldr	r9, .L19+4
	ldr	r5, [r3]
	str	r4, [r9]
	cmp	r5, r4
	ldrle	r8, .L19+8
	ble	.L8
	mov	r7, #0
	ldr	r8, .L19+8
	ldr	r6, [r8]
.L10:
	mov	r1, r4
	mov	r0, r5
	bl	__aeabi_idivmod
	cmp	r1, #0
	addeq	r6, r6, r4
	add	r4, r4, #1
	moveq	r7, #1
	cmp	r5, r4
	bne	.L10
	cmp	r7, #0
	str	r5, [r9]
	strne	r6, [r8]
.L8:
	ldr	r3, [r8]
	mov	r2, r5
	cmp	r3, r5
	ldreq	r1, .L19+12
	ldrne	r1, .L19+16
	mov	r0, #1
	bl	__printf_chk
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L20:
	.align	2
.L19:
	.word	x
	.word	i
	.word	.LANCHOR0
	.word	.LC2
	.word	.LC3
	.size	main, .-main
	.comm	i,4,4
	.global	s
	.comm	x,4,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	s, %object
	.size	s, 4
s:
	.space	4
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
