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
	.file	"bai4tu.c"
	.text
	.section	.rodata
	.align	2
.LC1:
	.ascii	"Chuong trinh tinh gia tri trung binh cua mang: \012"
	.ascii	"\000"
	.global	__aeabi_i2f
	.global	__aeabi_fdiv
	.global	__aeabi_f2d
	.align	2
.LC2:
	.ascii	"Gia tri trung binh cua mang la: %.2f\000"
	.align	2
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	0
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #68
	ldr	r3, .L5
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	ldr	r3, .L5+4
	sub	ip, fp, #56
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	stm	ip, {r0, r1}
	mov	r3, #10
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-60]	@ float
	ldr	r0, .L5+8
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-68]
	b	.L2
.L3:
	ldr	r3, [fp, #-68]
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	ldr	r3, [r3, #-44]
	ldr	r2, [fp, #-72]
	add	r3, r2, r3
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
.L2:
	ldr	r2, [fp, #-68]
	ldr	r3, [fp, #-64]
	cmp	r2, r3
	blt	.L3
	ldr	r0, [fp, #-72]
	bl	__aeabi_i2f
	mov	r4, r0
	ldr	r0, [fp, #-68]
	bl	__aeabi_i2f
	mov	r3, r0
	mov	r1, r3
	mov	r0, r4
	bl	__aeabi_fdiv
	mov	r3, r0
	str	r3, [fp, #-60]	@ float
	ldr	r0, [fp, #-60]	@ float
	bl	__aeabi_f2d
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	ldr	r0, .L5+12
	bl	printf
	nop
	ldr	r3, .L5
	ldr	r2, [fp, #-16]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L4
	bl	__stack_chk_fail
.L4:
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L6:
	.align	2
.L5:
	.word	__stack_chk_guard
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
