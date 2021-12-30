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
	.file	"bai8tu_armtu.c"
	.text
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r6, .L1
	ldr	r4, .L1+4
	ldr	r8, .L1+8
	ldr	r1, .L1+12
	mov	r0, #1
	str	r8, [r4]
	bl	__printf_chk
	mov	r1, r6
	ldr	r0, .L1+16
	bl	__isoc99_scanf
	ldr	r2, [r6]
	ldr	r1, .L1+20
	mov	r0, #1
	bl	__printf_chk
	mov	r3, #0
	ldr	r2, [r6]
	ldr	r5, .L1+24
	cmp	r2, r3
	str	r3, [r5]
	ble	.L2
	ldr	r1, [r4]
	ldr	r7, .L1+16
.L3:
	mov	r0, r7
	bl	__isoc99_scanf
	ldr	r3, [r5]
	ldr	r1, [r4]
	ldr	r2, [r6]
	add	r3, r3, #1
	add	r1, r1, #4
	cmp	r3, r2
	str	r3, [r5]
	str	r1, [r4]
	blt	.L3
.L2:
	sub	r2, r2, #1
	add	r2, r8, r2, lsl #2
	ldr	r1, .L1+28
	mov	r0, #1
	str	r2, [r4]
	bl	__printf_chk
	ldr	r2, [r6]
	sub	r2, r2, #1
	cmp	r2, #0
	str	r2, [r5]
	blt	.L4
	ldr	r3, [r4]
	ldr	r6, .L1+32
.L5:
	ldr	r3, [r3]
	mov	r1, r6
	mov	r0, #1
	bl	__printf_chk
	ldr	r2, [r5]
	ldr	r3, [r4]
	sub	r2, r2, #1
	sub	r3, r3, #4
	cmp	r2, #0
	str	r2, [r5]
	str	r3, [r4]
	bge	.L5
.L4:
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.L6:
	.align	2
.L1:
	.word	size
	.word	ptr
	.word	arr
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	i
	.word	.LC3
	.word	.LC4
	.size	main, .-main
	.comm	ptr,4,4
	.comm	arr,120,4
	.comm	i,4,4
	.comm	size,4,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"\012Nhap kich co mang: \000"
	.space	3
.LC1:
	.ascii	"%d\000"
	.space	1
.LC2:
	.ascii	"\012 Nhap %d so nguyen vao trong mang: \012\000"
	.space	2
.LC3:
	.ascii	"\012Hien thi cac phan tu mang theo chieu dao nguoc:"
	.ascii	"\000"
	.space	3
.LC4:
	.ascii	"\012Phan tu %d la: %d \000"
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
