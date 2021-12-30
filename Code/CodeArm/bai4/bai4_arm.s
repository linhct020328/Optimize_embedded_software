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
	.file	"bai4.c"
	.text
	.global	array
	.data
	.align	2
	.type	array, %object
	.size	array, 40
array:
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
	.comm	sum,4,4
	.comm	loop,4,4
	.global	arr_size
	.align	2
	.type	arr_size, %object
	.size	arr_size, 4
arr_size:
	.word	10
	.comm	avg,8,8
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Chuong trinh tinh gia tri trung binh cua mang: \012"
	.ascii	"\000"
	.global	__aeabi_i2f
	.global	__aeabi_fdiv
	.global	__aeabi_f2d
	.align	2
.LC1:
	.ascii	"Gia tri trung binh cua mang la: %.2f\000"
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
	ldr	r2, .L5
	mov	r3, #0
	mov	r4, #0
	stm	r2, {r3-r4}
	ldr	r3, .L5+4
	mov	r2, #0
	str	r2, [r3]
	ldr	r0, .L5+8
	bl	puts
	ldr	r3, .L5+12
	mov	r2, #0
	str	r2, [r3]
	b	.L2
.L3:
	ldr	r3, .L5+12
	ldr	r3, [r3]
	ldr	r2, .L5+16
	ldr	r2, [r2, r3, lsl #2]
	ldr	r3, .L5+4
	ldr	r3, [r3]
	add	r3, r2, r3
	ldr	r2, .L5+4
	str	r3, [r2]
	ldr	r3, .L5+12
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L5+12
	str	r3, [r2]
.L2:
	ldr	r3, .L5+12
	ldr	r2, [r3]
	ldr	r3, .L5+20
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L3
	ldr	r3, .L5+4
	ldr	r3, [r3]
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r4, r0
	ldr	r3, .L5+12
	ldr	r3, [r3]
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r3, r0
	mov	r1, r3
	mov	r0, r4
	bl	__aeabi_fdiv
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d
	mov	r3, r0
	mov	r4, r1
	ldr	r2, .L5
	stm	r2, {r3-r4}
	ldr	r3, .L5
	ldmia	r3, {r3-r4}
	mov	r2, r3
	mov	r3, r4
	ldr	r0, .L5+24
	bl	printf
	mov	r3, #0
	mov	r0, r3
	pop	{r4, r5, fp, pc}
.L6:
	.align	2
.L5:
	.word	avg
	.word	sum
	.word	.LC0
	.word	loop
	.word	array
	.word	arr_size
	.word	.LC1
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
