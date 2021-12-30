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
	.file	"bai9tu_armtu.c"
	.text
	.align	2
	.global	merge
	.syntax unified
	.arm
	.fpu softvfp
	.type	merge, %function
merge:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	fp, sp, #32
	sub	sp, sp, #20
	sub	r8, r2, r1
	add	r5, r8, #1
	sub	r3, r3, r2
	lsl	ip, r5, #2
	lsl	lr, r3, #2
	add	ip, ip, #10
	ldr	r9, .L8
	bic	ip, ip, #7
	str	lr, [fp, #-48]
	add	lr, lr, #10
	sub	sp, sp, ip
	ldr	r6, [r9]
	bic	ip, lr, #7
	mov	r4, sp
	cmp	r5, #0
	sub	sp, sp, ip
	mov	lr, sp
	str	r6, [fp, #-40]
	ble	.L2
	sub	ip, r1, #-1073741823
	add	r10, r8, r1
	add	ip, r0, ip, lsl #2
	add	r10, r0, r10, lsl #2
	sub	r6, r4, #4
.L3:
	ldr	r7, [ip, #4]!
	cmp	ip, r10
	str	r7, [r6, #4]!
	bne	.L3
.L2:
	cmp	r3, #0
	ble	.L15
	add	r6, r3, r2
	add	r6, r0, r6, lsl #2
	add	r2, r0, r2, lsl #2
	sub	ip, lr, #4
.L5:
	ldr	r7, [r2, #4]!
	cmp	r2, r6
	str	r7, [ip, #4]!
	bne	.L5
	cmp	r5, #0
	ble	.L16
	mov	ip, #0
	mov	r2, ip
.L9:
	ldr	r7, [r4, ip, lsl #2]
	ldr	r6, [lr, r2, lsl #2]
	cmp	r7, r6
	addle	ip, ip, #1
	addgt	r2, r2, #1
	strle	r7, [r0, r1, lsl #2]
	strgt	r6, [r0, r1, lsl #2]
	cmp	ip, r5
	cmplt	r2, r3
	add	r1, r1, #1
	blt	.L9
.L4:
	cmp	r5, ip
	ble	.L10
	add	r6, r4, ip, lsl #2
	sub	r7, r1, #-1073741823
	add	r4, r4, r8, lsl #2
	sub	r6, r6, #4
	add	r7, r0, r7, lsl #2
.L11:
	ldr	r8, [r6, #4]!
	cmp	r6, r4
	str	r8, [r7, #4]!
	bne	.L11
	add	r1, r5, r1
	sub	r1, r1, ip
.L10:
	cmp	r3, r2
	ble	.L1
.L6:
	ldr	r3, [fp, #-48]
	add	r2, lr, r2, lsl #2
	sub	r1, r1, #-1073741823
	sub	r3, r3, #4
	sub	r2, r2, #4
	add	r1, r0, r1, lsl #2
	add	lr, lr, r3
.L13:
	ldr	r3, [r2, #4]!
	cmp	r2, lr
	str	r3, [r1, #4]!
	bne	.L13
.L1:
	ldr	r2, [fp, #-40]
	ldr	r3, [r9]
	cmp	r2, r3
	bne	.L7
	sub	sp, fp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L15:
	mov	ip, #0
	mov	r2, ip
	b	.L4
.L7:
	bl	__stack_chk_fail
.L16:
	mov	r2, #0
	b	.L6
.L12:
	.align	2
.L8:
	.word	__stack_chk_guard
	.size	merge, .-merge
	.align	2
	.global	mergeSort
	.syntax unified
	.arm
	.fpu softvfp
	.type	mergeSort, %function
mergeSort:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, r2
	bxge	lr
	b	mergeSort.part.0
	.size	mergeSort, .-mergeSort
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	mergeSort.part.0, %function
mergeSort.part.0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, r2
	mov	r7, r0
	mov	r5, r1
	sub	r4, r2, r1
	add	r4, r4, r4, lsr #31
	add	r4, r1, r4, asr #1
	mov	r2, r4
	bl	mergeSort
	mov	r2, r6
	add	r1, r4, #1
	mov	r0, r7
	bl	mergeSort
	mov	r3, r6
	mov	r2, r4
	mov	r1, r5
	mov	r0, r7
	pop	{r4, r5, r6, r7, r8, lr}
	b	merge
	.size	mergeSort.part.0, .-mergeSort.part.0
	.align	2
	.global	printArray
	.syntax unified
	.arm
	.fpu softvfp
	.type	printArray, %function
printArray:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	subs	r5, r1, #0
	ble	.L17
	sub	r4, r0, #4
	ldr	r6, .L19
	add	r5, r4, r5, lsl #2
.L18:
	ldr	r2, [r4, #4]!
	mov	r1, r6
	mov	r0, #1
	bl	__printf_chk
	cmp	r4, r5
	bne	.L18
.L17:
	pop	{r4, r5, r6, lr}
	mov	r0, #10
	b	putchar
.L20:
	.align	2
.L19:
	.word	.LC1
	.size	printArray, .-printArray
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	lr, .L22
	sub	sp, sp, #32
	add	ip, sp, #4
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	ldr	r4, .L22+4
	stm	ip, {r0, r1}
	ldr	r3, [r4]
	ldr	r0, .L22+8
	str	r3, [sp, #28]
	bl	puts
	add	r0, sp, #4
	mov	r1, #6
	bl	printArray
	mov	r2, #5
	mov	r1, #0
	add	r0, sp, #4
	bl	mergeSort.part.0
	ldr	r0, .L22+12
	bl	puts
	add	r0, sp, #4
	mov	r1, #6
	bl	printArray
	ldr	r2, [sp, #28]
	ldr	r3, [r4]
	cmp	r2, r3
	bne	.L21
	add	sp, sp, #32
	@ sp needed
	pop	{r4, pc}
.L21:
	bl	__stack_chk_fail
.L23:
	.align	2
.L22:
	.word	.LANCHOR0
	.word	__stack_chk_guard
	.word	.LC2
	.word	.LC3
	.size	main, .-main
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	12
	.word	11
	.word	13
	.word	5
	.word	6
	.word	7
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"%d \000"
.LC2:
	.ascii	"Given array is \000"
.LC3:
	.ascii	"\012Sorted array is \000"
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
