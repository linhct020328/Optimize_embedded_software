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
	.file	"bai6.c"
	.text
	.comm	a,4,4
	.comm	b,4,4
	.comm	c,4,4
	.comm	i,4,4
	.comm	n,4,4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"In day Fibonacci:\000"
	.align	2
.LC1:
	.ascii	"%d %d \000"
	.align	2
.LC2:
	.ascii	"%d \000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	ldr	r3, .L5
	mov	r2, #6
	str	r2, [r3]
	ldr	r3, .L5+4
	mov	r2, #1
	str	r2, [r3]
	ldr	r3, .L5+4
	ldr	r3, [r3]
	ldr	r2, .L5+8
	str	r3, [r2]
	ldr	r0, .L5+12
	bl	puts
	ldr	r3, .L5+8
	ldr	r1, [r3]
	ldr	r3, .L5+4
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r0, .L5+16
	bl	printf
	ldr	r3, .L5+20
	mov	r2, #1
	str	r2, [r3]
	b	.L2
.L3:
	ldr	r3, .L5+8
	ldr	r2, [r3]
	ldr	r3, .L5+4
	ldr	r3, [r3]
	add	r3, r2, r3
	ldr	r2, .L5+24
	str	r3, [r2]
	ldr	r3, .L5+24
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, .L5+28
	bl	printf
	ldr	r3, .L5+4
	ldr	r3, [r3]
	ldr	r2, .L5+8
	str	r3, [r2]
	ldr	r3, .L5+24
	ldr	r3, [r3]
	ldr	r2, .L5+4
	str	r3, [r2]
	ldr	r3, .L5+20
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L5+20
	str	r3, [r2]
.L2:
	ldr	r3, .L5
	ldr	r3, [r3]
	sub	r2, r3, #2
	ldr	r3, .L5+20
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L3
	mov	r3, #0
	mov	r0, r3
	pop	{fp, pc}
.L6:
	.align	2
.L5:
	.word	n
	.word	b
	.word	a
	.word	.LC0
	.word	.LC1
	.word	i
	.word	c
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
