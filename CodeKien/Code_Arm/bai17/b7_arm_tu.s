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
	.file	"b7.c"
	.text
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Nhap so luong phan tu:\000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"\012Cac so nguyen to co trong  mang va vi tri cac s"
	.ascii	"o do trong mang la:\000"
	.align	2
.LC3:
	.ascii	"\012so nguyen to %d vi tri %d trong mang \000"
	.global	__aeabi_idivmod
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r9, .L25
	ldr	r1, .L25+4
	sub	sp, sp, #12
	mov	r0, #1
	bl	__printf_chk
	mov	r1, r9
	ldr	r0, .L25+8
	bl	__isoc99_scanf
	mov	r1, #0
	ldr	r3, [r9]
	ldr	r8, .L25+12
	cmp	r3, r1
	str	r1, [r8]
	ble	.L5
	ldr	r5, .L25+16
	ldr	r4, .L25+8
.L2:
	add	r1, r5, r1, lsl #2
	mov	r0, r4
	bl	__isoc99_scanf
	ldr	r1, [r8]
	ldr	r3, [r9]
	add	r1, r1, #1
	cmp	r1, r3
	str	r1, [r8]
	blt	.L2
.L5:
	mov	r6, #0
	mov	r0, #1
	ldr	r1, .L25+20
	bl	__printf_chk
	ldr	r3, [r9]
	str	r6, [r8]
	cmp	r3, r6
	ldrgt	r3, .L25+16
	strgt	r3, [sp, #4]
	ble	.L22
.L3:
	mov	r2, #0
	ldr	r3, [sp, #4]
	ldr	fp, [r3, r6, lsl #2]
	ldr	r3, .L25+24
	cmp	fp, #3
	str	r2, [r3]
	movgt	r7, #0
	mov	r2, #2
	ldr	r3, .L25+28
	add	r5, fp, fp, lsr #31
	movgt	r4, #2
	movgt	r10, r7
	str	r2, [r3]
	asr	r5, r5, #1
	ble	.L9
.L6:
	mov	r1, r4
	mov	r0, fp
	bl	__aeabi_idivmod
	cmp	r1, #0
	moveq	r7, #1
	add	r4, r4, #1
	moveq	r10, r7
	cmp	r4, r5
	ble	.L6
	cmp	fp, #3
	addgt	r5, r5, #1
	movle	r5, #3
	ldr	r3, .L25+28
	cmp	r7, #0
	str	r5, [r3]
	beq	.L9
	ldr	r3, .L25+24
	cmp	r10, #0
	str	r10, [r3]
	beq	.L9
.L7:
	ldr	r6, [r8]
	ldr	r3, [r9]
	add	r6, r6, #1
	cmp	r6, r3
	str	r6, [r8]
	blt	.L3
.L22:
	mov	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L9:
	mov	r3, r6
	mov	r2, fp
	ldr	r1, .L25+32
	mov	r0, #1
	bl	__printf_chk
	b	.L7
.L26:
	.align	2
.L25:
	.word	n
	.word	.LC0
	.word	.LC1
	.word	i
	.word	a
	.word	.LC2
	.word	kt
	.word	j
	.word	.LC3
	.size	main, .-main
	.comm	kt,4,4
	.comm	j,4,4
	.comm	n,4,4
	.comm	i,4,4
	.comm	a,200,4
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",%progbits
