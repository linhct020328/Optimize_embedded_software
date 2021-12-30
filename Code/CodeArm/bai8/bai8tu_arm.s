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
	.file	"bai8.c"
	.text
	.comm	size,4,4
	.comm	i,4,4
	.comm	arr,120,4
	.comm	ptr,4,4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"\012Nhap kich co mang: \000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"\012 Nhap %d so nguyen vao trong mang: \012\000"
	.align	2
.LC3:
	.ascii	"\012Hien thi cac phan tu mang theo chieu dao nguoc:"
	.ascii	"\000"
	.align	2
.LC4:
	.ascii	"\012Phan tu %d la: %d \000"
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
	ldr	r3, .L7
	ldr	r2, .L7+4
	str	r2, [r3]
	ldr	r0, .L7+8
	bl	printf
	ldr	r1, .L7+12
	ldr	r0, .L7+16
	bl	__isoc99_scanf
	ldr	r3, .L7+12
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, .L7+20
	bl	printf
	ldr	r3, .L7+24
	mov	r2, #0
	str	r2, [r3]
	b	.L2
.L3:
	ldr	r3, .L7
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, .L7+16
	bl	__isoc99_scanf
	ldr	r3, .L7
	ldr	r3, [r3]
	add	r3, r3, #4
	ldr	r2, .L7
	str	r3, [r2]
	ldr	r3, .L7+24
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L7+24
	str	r3, [r2]
.L2:
	ldr	r3, .L7+24
	ldr	r2, [r3]
	ldr	r3, .L7+12
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L3
	ldr	r3, .L7+12
	ldr	r3, [r3]
	sub	r3, r3, #1
	lsl	r3, r3, #2
	ldr	r2, .L7+4
	add	r3, r3, r2
	ldr	r2, .L7
	str	r3, [r2]
	ldr	r0, .L7+28
	bl	printf
	ldr	r3, .L7+12
	ldr	r3, [r3]
	sub	r3, r3, #1
	ldr	r2, .L7+24
	str	r3, [r2]
	b	.L4
.L5:
	ldr	r3, .L7+24
	ldr	r1, [r3]
	ldr	r3, .L7
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r0, .L7+32
	bl	printf
	ldr	r3, .L7
	ldr	r3, [r3]
	sub	r3, r3, #4
	ldr	r2, .L7
	str	r3, [r2]
	ldr	r3, .L7+24
	ldr	r3, [r3]
	sub	r3, r3, #1
	ldr	r2, .L7+24
	str	r3, [r2]
.L4:
	ldr	r3, .L7+24
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L5
	mov	r3, #0
	mov	r0, r3
	pop	{fp, pc}
.L8:
	.align	2
.L7:
	.word	ptr
	.word	arr
	.word	.LC0
	.word	size
	.word	.LC1
	.word	.LC2
	.word	i
	.word	.LC3
	.word	.LC4
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
