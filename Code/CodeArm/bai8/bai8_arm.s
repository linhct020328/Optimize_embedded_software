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
	.file	"bai8tu.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"\012Nhap kich co mang: \000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"\012 Nhap %d so nguyen vao trong mang: \012\000"
	.align	2
.LC3:
	.ascii	"\012Hien thi cac phan tu mang theo chieu dao nguoc:"
	.ascii	"\000"
	.align	2
.LC4:
	.ascii	"\012Phan tu %d la: %d \000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #136
	ldr	r3, .L7
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	sub	r3, fp, #128
	str	r3, [fp, #-132]
	ldr	r0, .L7+4
	bl	printf
	sub	r3, fp, #140
	mov	r1, r3
	ldr	r0, .L7+8
	bl	__isoc99_scanf
	ldr	r3, [fp, #-140]
	mov	r1, r3
	ldr	r0, .L7+12
	bl	printf
	mov	r3, #0
	str	r3, [fp, #-136]
	b	.L2
.L3:
	ldr	r1, [fp, #-132]
	ldr	r0, .L7+8
	bl	__isoc99_scanf
	ldr	r3, [fp, #-132]
	add	r3, r3, #4
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-136]
	add	r3, r3, #1
	str	r3, [fp, #-136]
.L2:
	ldr	r3, [fp, #-140]
	ldr	r2, [fp, #-136]
	cmp	r2, r3
	blt	.L3
	ldr	r3, [fp, #-140]
	sub	r3, r3, #1
	sub	r2, fp, #128
	lsl	r3, r3, #2
	add	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r0, .L7+16
	bl	printf
	ldr	r3, [fp, #-140]
	sub	r3, r3, #1
	str	r3, [fp, #-136]
	b	.L4
.L5:
	ldr	r3, [fp, #-132]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r1, [fp, #-136]
	ldr	r0, .L7+20
	bl	printf
	ldr	r3, [fp, #-132]
	sub	r3, r3, #4
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-136]
	sub	r3, r3, #1
	str	r3, [fp, #-136]
.L4:
	ldr	r3, [fp, #-136]
	cmp	r3, #0
	bge	.L5
	nop
	ldr	r3, .L7
	ldr	r2, [fp, #-8]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L6
	bl	__stack_chk_fail
.L6:
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L8:
	.align	2
.L7:
	.word	__stack_chk_guard
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
