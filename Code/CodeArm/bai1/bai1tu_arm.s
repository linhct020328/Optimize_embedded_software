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
	.file	"bai1.c"
	.text
	.comm	a,8,8
	.comm	b,8,8
	.comm	c,8,8
	.comm	d,8,8
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Nhap vao 3 so a, b, c: \000"
	.align	2
.LC1:
	.ascii	"%lf%lf%lf\000"
	.global	__aeabi_dcmpeq
	.align	2
.LC2:
	.ascii	"Phuong trinh co vo so nghiem!\000"
	.align	2
.LC3:
	.ascii	"Phuong trinh vo nghiem!\000"
	.global	__aeabi_ddiv
	.align	2
.LC4:
	.ascii	"Phuong trinh co nghiem duy nhat la: %lf\000"
	.global	__aeabi_dmul
	.global	__aeabi_dsub
	.global	__aeabi_dcmplt
	.align	2
.LC5:
	.ascii	"Phuong trinh vo nghiem!!!\000"
	.global	__aeabi_dadd
	.align	2
.LC6:
	.ascii	"Phuong trinh co nghiem kep la: %lf\000"
	.align	2
.LC7:
	.ascii	"Phuong trinh co 2 nghiem phan biet la: %lf,%lf\000"
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	fp, sp, #32
	sub	sp, sp, #12
	ldr	r0, .L26
	bl	printf
	ldr	r3, .L26+4
	ldr	r2, .L26+8
	ldr	r1, .L26+12
	ldr	r0, .L26+16
	bl	__isoc99_scanf
	ldr	r3, .L26+12
	ldmia	r3, {r0-r1}
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpeq
	mov	r3, r0
	cmp	r3, #0
	beq	.L21
	ldr	r3, .L26+8
	ldmia	r3, {r0-r1}
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpeq
	mov	r3, r0
	cmp	r3, #0
	beq	.L22
	ldr	r3, .L26+4
	ldmia	r3, {r0-r1}
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpeq
	mov	r3, r0
	cmp	r3, #0
	beq	.L23
	ldr	r0, .L26+20
	bl	printf
	b	.L10
.L23:
	ldr	r0, .L26+24
	bl	printf
	b	.L10
.L22:
	ldr	r3, .L26+4
	ldmia	r3, {r3-r4}
	mov	r9, r3
	eor	r10, r4, #-2147483648
	ldr	r3, .L26+8
	ldmia	r3, {r3-r4}
	mov	r2, r3
	mov	r3, r4
	mov	r0, r9
	mov	r1, r10
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	ldr	r0, .L26+28
	bl	printf
	b	.L10
.L21:
	ldr	r3, .L26+8
	ldmia	r3, {r0-r1}
	ldr	r3, .L26+8
	ldmia	r3, {r3-r4}
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r9, r3
	mov	r10, r4
	ldr	r3, .L26+12
	ldmia	r3, {r0-r1}
	mov	r2, #0
	ldr	r3, .L26+32
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	ldr	r3, .L26+4
	ldmia	r3, {r3-r4}
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	mov	r0, r9
	mov	r1, r10
	bl	__aeabi_dsub
	mov	r3, r0
	mov	r4, r1
	ldr	r2, .L26+36
	stm	r2, {r3-r4}
	ldr	r3, .L26+36
	ldmia	r3, {r0-r1}
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmplt
	mov	r3, r0
	cmp	r3, #0
	beq	.L24
	ldr	r0, .L26+40
	bl	printf
	b	.L10
.L24:
	ldr	r3, .L26+36
	ldmia	r3, {r0-r1}
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpeq
	mov	r3, r0
	cmp	r3, #0
	beq	.L25
	ldr	r3, .L26+8
	ldmia	r3, {r3-r4}
	mov	r7, r3
	eor	r8, r4, #-2147483648
	ldr	r3, .L26+12
	ldmia	r3, {r0-r1}
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	ldr	r0, .L26+44
	bl	printf
	b	.L10
.L25:
	ldr	r3, .L26+36
	ldmia	r3, {r3-r4}
	mov	r0, r3
	mov	r1, r4
	bl	sqrt
	ldr	r3, .L26+8
	ldmia	r3, {r3-r4}
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_dsub
	mov	r3, r0
	mov	r4, r1
	mov	r7, r3
	mov	r8, r4
	ldr	r3, .L26+12
	ldmia	r3, {r0-r1}
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	mov	r0, r7
	mov	r1, r8
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	mov	r7, r3
	mov	r8, r4
	ldr	r3, .L26+8
	ldmia	r3, {r3-r4}
	mov	r5, r3
	eor	r6, r4, #-2147483648
	ldr	r3, .L26+36
	ldmia	r3, {r3-r4}
	mov	r0, r3
	mov	r1, r4
	bl	sqrt
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_dsub
	mov	r3, r0
	mov	r4, r1
	mov	r5, r4
	mov	r4, r3
	ldr	r3, .L26+12
	ldmia	r3, {r0-r1}
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	stm	sp, {r3-r4}
	mov	r2, r7
	mov	r3, r8
	ldr	r0, .L26+48
	bl	printf
.L10:
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L27:
	.align	2
.L26:
	.word	.LC0
	.word	c
	.word	b
	.word	a
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	1074790400
	.word	d
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
