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
	.file	"bai7.c"
	.text
	.comm	i,8,8
	.comm	n,8,8
	.global	precision
	.data
	.align	3
	.type	precision, %object
	.size	precision, 8
precision:
	.word	2696277389
	.word	1051772663
	.global	__aeabi_dadd
	.global	__aeabi_dmul
	.global	__aeabi_dcmpge
	.global	__aeabi_dsub
	.global	__aeabi_dcmpgt
	.text
	.align	2
	.global	cubeRoot
	.syntax unified
	.arm
	.fpu softvfp
	.type	cubeRoot, %function
cubeRoot:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #12
	str	r0, [fp, #-20]
	str	r1, [fp, #-16]
	ldr	r2, .L7
	mov	r3, #0
	ldr	r4, .L7+4
	stm	r2, {r3-r4}
	b	.L2
.L3:
	ldr	r3, .L7
	ldmia	r3, {r0-r1}
	mov	r2, #0
	ldr	r3, .L7+4
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	ldr	r2, .L7
	stm	r2, {r3-r4}
.L2:
	ldr	r3, .L7
	ldmia	r3, {r0-r1}
	ldr	r3, .L7
	ldmia	r3, {r3-r4}
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	ldr	r3, .L7
	ldmia	r3, {r3-r4}
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	sub	r1, fp, #20
	ldmia	r1, {r0-r1}
	bl	__aeabi_dcmpge
	mov	r3, r0
	cmp	r3, #0
	bne	.L3
	ldr	r3, .L7
	ldmia	r3, {r0-r1}
	mov	r2, #0
	ldr	r3, .L7+4
	bl	__aeabi_dsub
	mov	r3, r0
	mov	r4, r1
	ldr	r2, .L7
	stm	r2, {r3-r4}
	b	.L4
.L5:
	ldr	r3, .L7
	ldmia	r3, {r0-r1}
	ldr	r3, .L7+8
	ldmia	r3, {r3-r4}
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	ldr	r2, .L7
	stm	r2, {r3-r4}
.L4:
	ldr	r3, .L7
	ldmia	r3, {r0-r1}
	ldr	r3, .L7
	ldmia	r3, {r3-r4}
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	ldr	r3, .L7
	ldmia	r3, {r3-r4}
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r2, r3
	mov	r3, r4
	sub	r1, fp, #20
	ldmia	r1, {r0-r1}
	bl	__aeabi_dcmpgt
	mov	r3, r0
	cmp	r3, #0
	bne	.L5
	ldr	r3, .L7
	ldmia	r3, {r3-r4}
	mov	r0, r3
	mov	r1, r4
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L8:
	.align	2
.L7:
	.word	i
	.word	1072693248
	.word	precision
	.size	cubeRoot, .-cubeRoot
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Can bac ba cua %lf = %lf\000"
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
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
	sub	sp, sp, #8
	ldr	r2, .L11
	mov	r3, #0
	ldr	r4, .L11+4
	stm	r2, {r3-r4}
	ldr	r3, .L11
	ldmia	r3, {r4-r5}
	ldr	r3, .L11
	ldmia	r3, {r2-r3}
	mov	r0, r2
	mov	r1, r3
	bl	cubeRoot
	mov	r2, r0
	mov	r3, r1
	stm	sp, {r2-r3}
	mov	r2, r4
	mov	r3, r5
	ldr	r0, .L11+8
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #12
	@ sp needed
	pop	{r4, r5, fp, pc}
.L12:
	.align	2
.L11:
	.word	n
	.word	1079984128
	.word	.LC0
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
