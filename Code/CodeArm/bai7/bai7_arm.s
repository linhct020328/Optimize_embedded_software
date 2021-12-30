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
	.file	"bai7tu.c"
	.text
	.global	__aeabi_fadd
	.global	__aeabi_fmul
	.global	__aeabi_fcmpge
	.global	__aeabi_fsub
	.global	__aeabi_fcmpgt
	.global	__aeabi_f2d
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%f\000"
	.text
	.align	2
	.global	cubeRoot
	.syntax unified
	.arm
	.fpu softvfp
	.type	cubeRoot, %function
cubeRoot:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #20
	str	r0, [fp, #-24]	@ float
	ldr	r3, .L6
	str	r3, [fp, #-16]	@ float
	mov	r3, #1065353216
	str	r3, [fp, #-20]	@ float
	b	.L2
.L3:
	mov	r1, #1065353216
	ldr	r0, [fp, #-20]	@ float
	bl	__aeabi_fadd
	mov	r3, r0
	str	r3, [fp, #-20]	@ float
.L2:
	ldr	r1, [fp, #-20]	@ float
	ldr	r0, [fp, #-20]	@ float
	bl	__aeabi_fmul
	mov	r3, r0
	ldr	r1, [fp, #-20]	@ float
	mov	r0, r3
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r1, r3
	ldr	r0, [fp, #-24]	@ float
	bl	__aeabi_fcmpge
	mov	r3, r0
	cmp	r3, #0
	bne	.L3
	mov	r1, #1065353216
	ldr	r0, [fp, #-20]	@ float
	bl	__aeabi_fsub
	mov	r3, r0
	str	r3, [fp, #-20]	@ float
	b	.L4
.L5:
	ldr	r1, [fp, #-16]	@ float
	ldr	r0, [fp, #-20]	@ float
	bl	__aeabi_fadd
	mov	r3, r0
	str	r3, [fp, #-20]	@ float
.L4:
	ldr	r1, [fp, #-20]	@ float
	ldr	r0, [fp, #-20]	@ float
	bl	__aeabi_fmul
	mov	r3, r0
	ldr	r1, [fp, #-20]	@ float
	mov	r0, r3
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r1, r3
	ldr	r0, [fp, #-24]	@ float
	bl	__aeabi_fcmpgt
	mov	r3, r0
	cmp	r3, #0
	bne	.L5
	ldr	r0, [fp, #-20]	@ float
	bl	__aeabi_f2d
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	ldr	r0, .L6+4
	bl	printf
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L7:
	.align	2
.L6:
	.word	897988541
	.word	.LC0
	.size	cubeRoot, .-cubeRoot
	.section	.rodata
	.align	2
.LC1:
	.ascii	"Can bac ba cua %f la: \000"
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
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #12
	ldr	r3, .L9
	str	r3, [fp, #-16]	@ float
	ldr	r0, [fp, #-16]	@ float
	bl	__aeabi_f2d
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	ldr	r0, .L9+4
	bl	printf
	ldr	r0, [fp, #-16]	@ float
	bl	cubeRoot
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L10:
	.align	2
.L9:
	.word	1123680256
	.word	.LC1
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
