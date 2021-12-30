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
	.file	"bai6tu.c"
	.text
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
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	mov	r3, #1
	str	r3, [fp, #-24]
	mov	r3, #1
	str	r3, [fp, #-20]
	mov	r3, #6
	str	r3, [fp, #-12]
	ldr	r0, .L4
	bl	puts
	ldr	r2, [fp, #-20]
	ldr	r1, [fp, #-24]
	ldr	r0, .L4+4
	bl	printf
	mov	r3, #1
	str	r3, [fp, #-16]
	b	.L2
.L3:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r1, [fp, #-8]
	ldr	r0, .L4+8
	bl	printf
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2:
	ldr	r3, [fp, #-12]
	sub	r3, r3, #2
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	ble	.L3
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L5:
	.align	2
.L4:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
