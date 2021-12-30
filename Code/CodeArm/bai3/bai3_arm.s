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
	.file	"bai3.c"
	.text
	.comm	n,4,4
	.comm	i,4,4
	.comm	j,4,4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Ve tam giac sao deu:\012\000"
	.align	2
.LC1:
	.ascii	"* \000"
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
	ldr	r3, .L9
	mov	r2, #5
	str	r2, [r3]
	ldr	r0, .L9+4
	bl	puts
	ldr	r3, .L9+8
	mov	r2, #1
	str	r2, [r3]
	b	.L2
.L7:
	ldr	r3, .L9+12
	mov	r2, #1
	str	r2, [r3]
	b	.L3
.L4:
	mov	r0, #32
	bl	putchar
	ldr	r3, .L9+12
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L9+12
	str	r3, [r2]
.L3:
	ldr	r3, .L9
	ldr	r2, [r3]
	ldr	r3, .L9+8
	ldr	r3, [r3]
	sub	r2, r2, r3
	ldr	r3, .L9+12
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L4
	ldr	r3, .L9+12
	mov	r2, #1
	str	r2, [r3]
	b	.L5
.L6:
	ldr	r0, .L9+16
	bl	printf
	ldr	r3, .L9+12
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L9+12
	str	r3, [r2]
.L5:
	ldr	r3, .L9+12
	ldr	r2, [r3]
	ldr	r3, .L9+8
	ldr	r3, [r3]
	cmp	r2, r3
	ble	.L6
	mov	r0, #10
	bl	putchar
	ldr	r3, .L9+8
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L9+8
	str	r3, [r2]
.L2:
	ldr	r3, .L9+8
	ldr	r2, [r3]
	ldr	r3, .L9
	ldr	r3, [r3]
	cmp	r2, r3
	ble	.L7
	mov	r3, #1
	mov	r0, r3
	pop	{fp, pc}
.L10:
	.align	2
.L9:
	.word	n
	.word	.LC0
	.word	i
	.word	j
	.word	.LC1
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
