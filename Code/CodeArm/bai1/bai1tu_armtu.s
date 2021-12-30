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
	.file	"bai1.c"
	.text
	.global	__aeabi_dcmpeq
	.global	__aeabi_ddiv
	.global	__aeabi_dmul
	.global	__aeabi_dsub
	.global	__aeabi_dcmplt
	.global	__aeabi_dadd
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L6
	ldr	r8, .L6+4
	ldr	r4, .L6+8
	sub	sp, sp, #20
	ldr	r1, .L6+12
	mov	r0, #1
	bl	__printf_chk
	mov	r3, r8
	mov	r2, r4
	mov	r1, r5
	ldr	r0, .L6+16
	bl	__isoc99_scanf
	ldmia	r5, {r10-fp}
	mov	r2, #0
	mov	r3, #0
	mov	r0, r10
	mov	r1, fp
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	beq	.L2
	ldmia	r4, {r4-r5}
	mov	r2, #0
	mov	r3, #0
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dcmpeq
	ldm	r8, {r2, r3}
	cmp	r0, #0
	mov	r0, r2
	beq	.L3
	mov	r1, r3
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	ldrne	r1, .L6+20
	ldreq	r1, .L6+24
	mov	r0, #1
	bl	__printf_chk
	b	.L1
.L2:
	ldr	r7, [r4]
	ldr	r6, [r4, #4]
	mov	r2, r7
	mov	r3, r6
	mov	r0, r7
	mov	r1, r6
	bl	__aeabi_dmul
	mov	r2, #0
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	ldr	r3, .L6+28
	mov	r0, r10
	mov	r1, fp
	bl	__aeabi_dmul
	ldmia	r8, {r2-r3}
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	add	r1, sp, #8
	ldmia	r1, {r0-r1}
	bl	__aeabi_dsub
	mov	r8, r0
	mov	r9, r1
	ldr	ip, .L6+32
	mov	r2, #0
	mov	r3, #0
	stm	ip, {r8-r9}
	bl	__aeabi_dcmplt
	cmp	r0, #0
	bne	.L4
	mov	r2, #0
	mov	r3, #0
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	bne	.L5
	mov	r0, r8
	mov	r1, r9
	bl	sqrt
	ldr	r6, [r4]
	ldr	r4, [r4, #4]
	mov	r2, r6
	mov	r3, r4
	bl	__aeabi_dsub
	ldmia	r5, {r2-r3}
	mov	r8, r0
	mov	r9, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_ddiv
	ldr	r3, .L6+32
	mov	r8, r0
	mov	r9, r1
	ldmia	r3, {r0-r1}
	bl	sqrt
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	add	r1, r4, #-2147483648
	bl	__aeabi_dsub
	ldmia	r5, {r2-r3}
	mov	r6, r0
	mov	r7, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_ddiv
	mov	r2, r8
	stm	sp, {r0-r1}
	mov	r3, r9
	ldr	r1, .L6+36
	mov	r0, #1
	bl	__printf_chk
.L1:
	mov	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L3:
	mov	r2, r4
	add	r1, r3, #-2147483648
	mov	r3, r5
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, #1
	ldr	r1, .L6+40
	bl	__printf_chk
	b	.L1
.L4:
	ldr	r1, .L6+44
	mov	r0, #1
	bl	__printf_chk
	b	.L1
.L5:
	mov	r2, r10
	mov	r3, fp
	mov	r0, r10
	mov	r1, fp
	bl	__aeabi_dadd
	add	r6, r6, #-2147483648
	mov	r2, r0
	mov	r3, r1
	mov	r0, r7
	mov	r1, r6
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, #1
	ldr	r1, .L6+48
	bl	__printf_chk
	b	.L1
.L7:
	.align	2
.L6:
	.word	a
	.word	c
	.word	b
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	1074790400
	.word	d
	.word	.LC7
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.size	main, .-main
	.comm	d,8,8
	.comm	c,8,8
	.comm	b,8,8
	.comm	a,8,8
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Nhap vao 3 so a, b, c: \000"
.LC1:
	.ascii	"%lf%lf%lf\000"
	.space	2
.LC2:
	.ascii	"Phuong trinh co vo so nghiem!\000"
	.space	2
.LC3:
	.ascii	"Phuong trinh vo nghiem!\000"
.LC4:
	.ascii	"Phuong trinh co nghiem duy nhat la: %lf\000"
.LC5:
	.ascii	"Phuong trinh vo nghiem!!!\000"
	.space	2
.LC6:
	.ascii	"Phuong trinh co nghiem kep la: %lf\000"
	.space	1
.LC7:
	.ascii	"Phuong trinh co 2 nghiem phan biet la: %lf,%lf\000"
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
