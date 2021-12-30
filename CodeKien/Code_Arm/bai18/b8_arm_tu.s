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
	.file	"b8.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"nhap vao so phan tu: \000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"\012So lon nhat =%d\000"
	.align	2
.LC3:
	.ascii	"\012vi tri cua gia tri lon nhat trong day la: \000"
	.align	2
.LC4:
	.ascii	"%6d\000"
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
	ldr	r5, .L23
	ldr	r1, .L23+4
	mov	r0, #1
	bl	__printf_chk
	mov	r1, r5
	ldr	r0, .L23+8
	bl	__isoc99_scanf
	mov	r1, #0
	ldr	r3, [r5]
	ldr	r4, .L23+12
	cmp	r3, r1
	str	r1, [r4]
	ble	.L2
	ldr	r6, .L23+16
	ldr	r7, .L23+8
.L3:
	add	r1, r6, r1, lsl #2
	mov	r0, r7
	bl	__isoc99_scanf
	ldr	r1, [r4]
	ldr	r0, [r5]
	add	r1, r1, #1
	cmp	r1, r0
	str	r1, [r4]
	blt	.L3
	mov	r3, #1
	ldr	r1, [r6]
	ldr	r7, .L23+20
	cmp	r0, r3
	str	r3, [r4]
	str	r1, [r7]
	ble	.L5
	mov	lr, #0
	ldr	r3, .L23+24
	add	ip, r6, r0, lsl #2
.L7:
	ldr	r2, [r3], #4
	cmp	r2, r1
	movgt	r1, r2
	movgt	lr, #1
	cmp	ip, r3
	bne	.L7
	cmp	lr, #0
	str	r0, [r4]
	strne	r1, [r7]
.L5:
	ldr	r2, [r7]
	ldr	r1, .L23+28
	mov	r0, #1
	bl	__printf_chk
	mov	r0, #1
	ldr	r1, .L23+32
	bl	__printf_chk
	mov	r2, #0
	ldr	r3, [r5]
	str	r2, [r4]
	cmp	r3, r2
	ble	.L20
	ldr	r8, .L23+36
	b	.L9
.L10:
	ldr	r2, [r4]
	ldr	r3, [r5]
	add	r2, r2, #1
	cmp	r2, r3
	str	r2, [r4]
	bge	.L20
.L9:
	ldr	r0, [r6, r2, lsl #2]
	ldr	r3, [r7]
	cmp	r0, r3
	bne	.L10
	mov	r1, r8
	add	r2, r2, #1
	mov	r0, #1
	bl	__printf_chk
	b	.L10
.L20:
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.L2:
	mov	r2, #1
	ldr	r6, .L23+16
	ldr	r7, .L23+20
	ldr	r3, [r6]
	str	r2, [r4]
	str	r3, [r7]
	b	.L5
.L24:
	.align	2
.L23:
	.word	n
	.word	.LC0
	.word	.LC1
	.word	i
	.word	a
	.word	max
	.word	a+4
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.size	main, .-main
	.global	s
	.comm	j,4,4
	.comm	max,4,4
	.comm	tg,4,4
	.comm	n,4,4
	.comm	i,4,4
	.comm	a,200,4
	.bss
	.align	2
	.type	s, %object
	.size	s, 4
s:
	.space	4
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
