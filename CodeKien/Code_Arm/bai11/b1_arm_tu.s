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
	.file	"b1.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Nhap n:\000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"Tong binh phuong cac so le be hon %d la: %d\000"
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
	push	{r4, lr}
	ldr	r4, .L16
	ldr	r1, .L16+4
	mov	r0, #1
	bl	__printf_chk
	mov	r1, r4
	ldr	r0, .L16+8
	bl	__isoc99_scanf
	mov	r3, #1
	ldr	r2, [r4]
	ldr	lr, .L16+12
	cmp	r2, r3
	ldrle	ip, .L16+16
	str	r3, [lr]
	ble	.L3
	mov	r0, #0
	ldr	ip, .L16+16
	ldr	r1, [ip]
.L5:
	tst	r3, #1
	mlane	r1, r3, r3, r1
	add	r3, r3, #1
	movne	r0, #1
	cmp	r3, r2
	bne	.L5
	cmp	r0, #0
	str	r2, [lr]
	strne	r1, [ip]
.L3:
	ldr	r3, [ip]
	ldr	r1, .L16+20
	mov	r0, #1
	bl	__printf_chk
	mov	r0, #0
	pop	{r4, pc}
.L17:
	.align	2
.L16:
	.word	n
	.word	.LC0
	.word	.LC1
	.word	i
	.word	.LANCHOR0
	.word	.LC2
	.size	main, .-main
	.comm	n,4,4
	.global	s
	.comm	i,4,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	s, %object
	.size	s, 4
s:
	.space	4
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
