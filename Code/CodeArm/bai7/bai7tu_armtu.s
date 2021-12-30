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
	.file	"bai7.c"
	.text
	.global	__aeabi_dcmpge
	.global	__aeabi_dadd
	.global	__aeabi_dmul
	.global	__aeabi_dcmple
	.global	__aeabi_dsub
	.global	__aeabi_dcmpgt
	.global	__aeabi_dcmplt
	.align	2
	.global	cubeRoot
	.syntax unified
	.arm
	.fpu softvfp
	.type	cubeRoot, %function
cubeRoot:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, #0
	ldr	r5, .L5
	mov	r2, r4
	mov	r3, r5
	mov	r6, r0
	mov	r7, r1
	bl	__aeabi_dcmpge
	cmp	r0, #0
	ldr	r10, .L5+4
	beq	.L13
	mov	r8, r4
	mov	r9, r5
.L4:
	mov	r0, r4
	mov	r1, r5
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dadd
	mov	r4, r0
	mov	r5, r1
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dcmple
	cmp	r0, #0
	bne	.L4
	mov	r0, r4
	mov	r1, r5
	mov	r2, #0
	ldr	r3, .L5
	bl	__aeabi_dsub
	mov	r4, r0
	mov	r5, r1
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
.L2:
	stm	r10, {r4-r5}
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dcmpgt
	cmp	r0, #0
	beq	.L1
	ldr	r3, .L5+8
	ldmia	r3, {r8-r9}
.L7:
	mov	r0, r4
	mov	r1, r5
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dadd
	mov	r4, r0
	mov	r5, r1
	mov	r2, r0
	mov	r3, r1
	bl	__aeabi_dmul
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dcmplt
	cmp	r0, #0
	bne	.L7
	stm	r10, {r4-r5}
.L1:
	mov	r0, r4
	mov	r1, r5
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L13:
	mov	r2, #0
	mov	r3, #0
	mov	r4, r2
	mov	r5, r3
	b	.L2
.L8:
	.align	2
.L5:
	.word	1072693248
	.word	i
	.word	.LANCHOR0
	.size	cubeRoot, .-cubeRoot
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, #0
	ldr	r5, .L3
	ldr	r3, .L3+4
	sub	sp, sp, #12
	mov	r0, r4
	mov	r1, r5
	stm	r3, {r4-r5}
	bl	cubeRoot
	mov	r2, r4
	stm	sp, {r0-r1}
	mov	r3, r5
	ldr	r1, .L3+8
	mov	r0, #1
	bl	__printf_chk
	mov	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L6:
	.align	2
.L3:
	.word	1079984128
	.word	n
	.word	.LC0
	.size	main, .-main
	.global	precision
	.comm	n,8,8
	.comm	i,8,8
	.data
	.align	3
	.set	.LANCHOR0,. + 0
	.type	precision, %object
	.size	precision, 8
precision:
	.word	2696277389
	.word	1051772663
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Can bac ba cua %lf = %lf\000"
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
