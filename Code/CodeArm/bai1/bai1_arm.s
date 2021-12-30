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
	.file	"bai1tu.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Nhap vao 3 so a, b, c: \000"
	.align	2
.LC1:
	.ascii	"%f%f%f\000"
	.global	__aeabi_fmul
	.global	__aeabi_fadd
	.global	__aeabi_fdiv
	.global	__aeabi_fsub
	.global	__aeabi_f2d
	.global	__aeabi_dadd
	.global	__aeabi_dmul
	.global	__aeabi_d2f
	.global	__aeabi_dsub
	.global	__aeabi_fcmpeq
	.align	2
.LC2:
	.ascii	"Phuong trinh co vo so nghiem!\000"
	.align	2
.LC3:
	.ascii	"Phuong trinh vo nghiem!\000"
	.align	2
.LC4:
	.ascii	"Phuong trinh co nghiem duy nhat la: %f\000"
	.global	__aeabi_fcmplt
	.align	2
.LC5:
	.ascii	"Phuong trinh vo nghiem!!!\000"
	.align	2
.LC6:
	.ascii	"Phuong trinh co nghiem kep la: %f\000"
	.align	2
.LC7:
	.ascii	"Phuong trinh co 2 nghiem phan biet la: %f,%f\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #60
	ldr	r3, .L27
	ldr	r3, [r3]
	str	r3, [fp, #-24]
	ldr	r0, .L27+4
	bl	printf
	sub	r3, fp, #60
	sub	r2, fp, #64
	sub	r1, fp, #68
	ldr	r0, .L27+8
	bl	__isoc99_scanf
	ldr	r3, [fp, #-68]	@ float
	ldr	r2, [fp, #-60]	@ float
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_fmul
	mov	r3, r0
	str	r3, [fp, #-56]	@ float
	ldr	r3, [fp, #-68]	@ float
	mov	r1, r3
	mov	r0, r3
	bl	__aeabi_fadd
	mov	r3, r0
	str	r3, [fp, #-52]	@ float
	ldr	r1, [fp, #-52]	@ float
	mov	r0, #1065353216
	bl	__aeabi_fdiv
	mov	r3, r0
	str	r3, [fp, #-48]	@ float
	ldr	r3, [fp, #-64]	@ float
	ldr	r2, [fp, #-64]	@ float
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r4, r3
	ldr	r3, [fp, #-56]	@ float
	mov	r1, r3
	mov	r0, r3
	bl	__aeabi_fadd
	mov	r3, r0
	ldr	r1, [fp, #-56]	@ float
	mov	r0, r3
	bl	__aeabi_fadd
	mov	r3, r0
	ldr	r1, [fp, #-56]	@ float
	mov	r0, r3
	bl	__aeabi_fadd
	mov	r3, r0
	mov	r1, r3
	mov	r0, r4
	bl	__aeabi_fsub
	mov	r3, r0
	str	r3, [fp, #-44]	@ float
	ldr	r3, [fp, #-60]	@ float
	eor	r3, r3, #-2147483648
	ldr	r2, [fp, #-64]	@ float
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_fdiv
	mov	r3, r0
	str	r3, [fp, #-40]	@ float
	ldr	r3, [fp, #-64]	@ float
	eor	r3, r3, #-2147483648
	mov	r1, r3
	ldr	r0, [fp, #-48]	@ float
	bl	__aeabi_fmul
	mov	r3, r0
	str	r3, [fp, #-36]	@ float
	ldr	r3, [fp, #-64]	@ float
	eor	r3, r3, #-2147483648
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r4, r0
	mov	r5, r1
	ldr	r0, [fp, #-44]	@ float
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	sqrt
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	mov	r5, r4
	mov	r4, r3
	ldr	r0, [fp, #-48]	@ float
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [fp, #-32]	@ float
	ldr	r3, [fp, #-64]	@ float
	eor	r3, r3, #-2147483648
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r4, r0
	mov	r5, r1
	ldr	r0, [fp, #-44]	@ float
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	sqrt
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
	mov	r3, r0
	mov	r4, r1
	mov	r5, r4
	mov	r4, r3
	ldr	r0, [fp, #-48]	@ float
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [fp, #-28]	@ float
	ldr	r3, [fp, #-68]	@ float
	mov	r1, #0
	mov	r0, r3
	bl	__aeabi_fcmpeq
	mov	r3, r0
	cmp	r3, #0
	beq	.L21
	ldr	r3, [fp, #-64]	@ float
	mov	r1, #0
	mov	r0, r3
	bl	__aeabi_fcmpeq
	mov	r3, r0
	cmp	r3, #0
	beq	.L22
	ldr	r3, [fp, #-60]	@ float
	mov	r1, #0
	mov	r0, r3
	bl	__aeabi_fcmpeq
	mov	r3, r0
	cmp	r3, #0
	beq	.L23
	ldr	r0, .L27+12
	bl	printf
	b	.L26
.L23:
	ldr	r0, .L27+16
	bl	printf
	b	.L26
.L22:
	ldr	r0, [fp, #-40]	@ float
	bl	__aeabi_f2d
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	ldr	r0, .L27+20
	bl	printf
	b	.L26
.L21:
	mov	r1, #0
	ldr	r0, [fp, #-44]	@ float
	bl	__aeabi_fcmplt
	mov	r3, r0
	cmp	r3, #0
	beq	.L24
	ldr	r0, .L27+24
	bl	printf
	b	.L26
.L24:
	mov	r1, #0
	ldr	r0, [fp, #-44]	@ float
	bl	__aeabi_fcmpeq
	mov	r3, r0
	cmp	r3, #0
	beq	.L25
	ldr	r0, [fp, #-36]	@ float
	bl	__aeabi_f2d
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	ldr	r0, .L27+28
	bl	printf
	b	.L26
.L25:
	ldr	r0, [fp, #-32]	@ float
	bl	__aeabi_f2d
	mov	r5, r0
	mov	r6, r1
	ldr	r0, [fp, #-28]	@ float
	bl	__aeabi_f2d
	mov	r3, r0
	mov	r4, r1
	stm	sp, {r3-r4}
	mov	r2, r5
	mov	r3, r6
	ldr	r0, .L27+32
	bl	printf
.L26:
	nop
	ldr	r3, .L27
	ldr	r2, [fp, #-24]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L15
	bl	__stack_chk_fail
.L15:
	sub	sp, fp, #16
	@ sp needed
	pop	{r4, r5, r6, fp, pc}
.L28:
	.align	2
.L27:
	.word	__stack_chk_guard
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
