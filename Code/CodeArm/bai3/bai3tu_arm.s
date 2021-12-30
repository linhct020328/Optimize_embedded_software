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
	.file	"bai3tu.c"
	.text
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	ldr	r0, .L8
	bl	puts
	mov	r3, #1
	str	r3, [fp, #-12]
	b	.L2
.L7:
	mov	r3, #1
	str	r3, [fp, #-8]
	b	.L3
.L4:
	mov	r0, #32
	bl	putchar
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L3:
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #5
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	ble	.L4
	mov	r3, #1
	str	r3, [fp, #-8]
	b	.L5
.L6:
	ldr	r0, .L8+4
	bl	printf
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L5:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	ble	.L6
	mov	r0, #10
	bl	putchar
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L2:
	ldr	r3, [fp, #-12]
	cmp	r3, #5
	ble	.L7
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L9:
	.align	2
.L8:
	.word	.LC0
	.word	.LC1
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
