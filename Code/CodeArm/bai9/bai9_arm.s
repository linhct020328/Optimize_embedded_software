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
	.file	"bai9.c"
	.text
	.global	arr
	.data
	.align	2
	.type	arr, %object
	.size	arr, 40
arr:
	.word	12
	.word	11
	.word	13
	.word	5
	.word	6
	.word	7
	.space	16
	.global	arr_size
	.align	2
	.type	arr_size, %object
	.size	arr_size, 4
arr_size:
	.word	10
	.comm	i,4,4
	.comm	j,4,4
	.comm	k,4,4
	.comm	n1,4,4
	.comm	n2,4,4
	.text
	.align	2
	.global	merge
	.syntax unified
	.arm
	.fpu softvfp
	.type	merge, %function
merge:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #44
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	str	r2, [fp, #-48]
	str	r3, [fp, #-52]
	ldr	r3, .L16
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	mov	r3, sp
	mov	ip, r3
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	sub	r3, r2, r3
	add	r3, r3, #1
	ldr	r2, .L16+4
	str	r3, [r2]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-48]
	sub	r3, r2, r3
	ldr	r2, .L16+8
	str	r3, [r2]
	ldr	r3, .L16+4
	ldr	r0, [r3]
	sub	r3, r0, #1
	str	r3, [fp, #-32]
	mov	r3, r0
	mov	r1, r3
	mov	r2, #0
	mov	r3, #0
	mov	r4, #0
	lsl	r4, r2, #5
	orr	r4, r4, r1, lsr #27
	lsl	r3, r1, #5
	mov	r3, r0
	mov	r1, r3
	mov	r2, #0
	mov	r3, #0
	mov	r4, #0
	lsl	r4, r2, #5
	orr	r4, r4, r1, lsr #27
	lsl	r3, r1, #5
	mov	r3, r0
	lsl	r3, r3, #2
	add	r3, r3, #3
	add	r3, r3, #7
	lsr	r3, r3, #3
	lsl	r3, r3, #3
	sub	sp, sp, r3
	mov	r3, sp
	add	r3, r3, #3
	lsr	r3, r3, #2
	lsl	r3, r3, #2
	str	r3, [fp, #-28]
	ldr	r3, .L16+8
	ldr	r0, [r3]
	sub	r3, r0, #1
	str	r3, [fp, #-24]
	mov	r3, r0
	mov	r1, r3
	mov	r2, #0
	mov	r3, #0
	mov	r4, #0
	lsl	r4, r2, #5
	orr	r4, r4, r1, lsr #27
	lsl	r3, r1, #5
	mov	r3, r0
	mov	r1, r3
	mov	r2, #0
	mov	r3, #0
	mov	r4, #0
	lsl	r4, r2, #5
	orr	r4, r4, r1, lsr #27
	lsl	r3, r1, #5
	mov	r3, r0
	lsl	r3, r3, #2
	add	r3, r3, #3
	add	r3, r3, #7
	lsr	r3, r3, #3
	lsl	r3, r3, #3
	sub	sp, sp, r3
	mov	r3, sp
	add	r3, r3, #3
	lsr	r3, r3, #2
	lsl	r3, r3, #2
	str	r3, [fp, #-20]
	ldr	r3, .L16+12
	mov	r2, #0
	str	r2, [r3]
	b	.L2
.L3:
	ldr	r3, .L16+12
	ldr	r2, [r3]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	lsl	r3, r3, #2
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldr	r2, .L16+12
	ldr	r2, [r2]
	ldr	r1, [r3]
	ldr	r3, [fp, #-28]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, .L16+12
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L16+12
	str	r3, [r2]
.L2:
	ldr	r3, .L16+12
	ldr	r2, [r3]
	ldr	r3, .L16+4
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L3
	ldr	r3, .L16+16
	mov	r2, #0
	str	r2, [r3]
	b	.L4
.L5:
	ldr	r3, [fp, #-48]
	add	r2, r3, #1
	ldr	r3, .L16+16
	ldr	r3, [r3]
	add	r3, r2, r3
	lsl	r3, r3, #2
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldr	r2, .L16+16
	ldr	r2, [r2]
	ldr	r1, [r3]
	ldr	r3, [fp, #-20]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, .L16+16
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L16+16
	str	r3, [r2]
.L4:
	ldr	r3, .L16+16
	ldr	r2, [r3]
	ldr	r3, .L16+8
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L5
	ldr	r3, .L16+12
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L16+16
	mov	r2, #0
	str	r2, [r3]
	ldr	r2, .L16+20
	ldr	r3, [fp, #-44]
	str	r3, [r2]
	b	.L6
.L10:
	ldr	r3, .L16+12
	ldr	r2, [r3]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, .L16+16
	ldr	r1, [r3]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, r1, lsl #2]
	cmp	r2, r3
	bgt	.L7
	ldr	r3, .L16+12
	ldr	r1, [r3]
	ldr	r3, .L16+20
	ldr	r3, [r3]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	ldr	r2, [r2, r1, lsl #2]
	str	r2, [r3]
	ldr	r3, .L16+12
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L16+12
	str	r3, [r2]
	b	.L8
.L7:
	ldr	r3, .L16+16
	ldr	r1, [r3]
	ldr	r3, .L16+20
	ldr	r3, [r3]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldr	r2, [fp, #-20]
	ldr	r2, [r2, r1, lsl #2]
	str	r2, [r3]
	ldr	r3, .L16+16
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L16+16
	str	r3, [r2]
.L8:
	ldr	r3, .L16+20
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L16+20
	str	r3, [r2]
.L6:
	ldr	r3, .L16+12
	ldr	r2, [r3]
	ldr	r3, .L16+4
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L11
	ldr	r3, .L16+16
	ldr	r2, [r3]
	ldr	r3, .L16+8
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L10
	b	.L11
.L12:
	ldr	r3, .L16+12
	ldr	r1, [r3]
	ldr	r3, .L16+20
	ldr	r3, [r3]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	ldr	r2, [r2, r1, lsl #2]
	str	r2, [r3]
	ldr	r3, .L16+12
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L16+12
	str	r3, [r2]
	ldr	r3, .L16+20
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L16+20
	str	r3, [r2]
.L11:
	ldr	r3, .L16+12
	ldr	r2, [r3]
	ldr	r3, .L16+4
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L12
	b	.L13
.L14:
	ldr	r3, .L16+16
	ldr	r1, [r3]
	ldr	r3, .L16+20
	ldr	r3, [r3]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldr	r2, [fp, #-20]
	ldr	r2, [r2, r1, lsl #2]
	str	r2, [r3]
	ldr	r3, .L16+16
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L16+16
	str	r3, [r2]
	ldr	r3, .L16+20
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L16+20
	str	r3, [r2]
.L13:
	ldr	r3, .L16+16
	ldr	r2, [r3]
	ldr	r3, .L16+8
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L14
	mov	sp, ip
	nop
	ldr	r3, .L16
	ldr	r2, [fp, #-16]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L15
	bl	__stack_chk_fail
.L15:
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L17:
	.align	2
.L16:
	.word	__stack_chk_guard
	.word	n1
	.word	n2
	.word	i
	.word	j
	.word	k
	.size	merge, .-merge
	.align	2
	.global	mergeSort
	.syntax unified
	.arm
	.fpu softvfp
	.type	mergeSort, %function
mergeSort:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bge	.L20
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	sub	r3, r2, r3
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-8]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	mergeSort
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldr	r2, [fp, #-24]
	mov	r1, r3
	ldr	r0, [fp, #-16]
	bl	mergeSort
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-8]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	merge
.L20:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	mergeSort, .-mergeSort
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%d \000"
	.text
	.align	2
	.global	printArray
	.syntax unified
	.arm
	.fpu softvfp
	.type	printArray, %function
printArray:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, .L24
	mov	r2, #0
	str	r2, [r3]
	b	.L22
.L23:
	ldr	r3, .L24
	ldr	r3, [r3]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, .L24+4
	bl	printf
	ldr	r3, .L24
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L24
	str	r3, [r2]
.L22:
	ldr	r3, .L24
	ldr	r3, [r3]
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	bgt	.L23
	mov	r0, #10
	bl	putchar
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L25:
	.align	2
.L24:
	.word	i
	.word	.LC0
	.size	printArray, .-printArray
	.section	.rodata
	.align	2
.LC1:
	.ascii	"Given array is \000"
	.align	2
.LC2:
	.ascii	"\012Sorted array is \000"
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
	push	{fp, lr}
	add	fp, sp, #4
	ldr	r0, .L28
	bl	puts
	ldr	r3, .L28+4
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, .L28+8
	bl	printArray
	ldr	r3, .L28+4
	ldr	r3, [r3]
	sub	r3, r3, #1
	mov	r2, r3
	mov	r1, #0
	ldr	r0, .L28+8
	bl	mergeSort
	ldr	r0, .L28+12
	bl	puts
	ldr	r3, .L28+4
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, .L28+8
	bl	printArray
	mov	r3, #0
	mov	r0, r3
	pop	{fp, pc}
.L29:
	.align	2
.L28:
	.word	.LC1
	.word	arr_size
	.word	arr
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
