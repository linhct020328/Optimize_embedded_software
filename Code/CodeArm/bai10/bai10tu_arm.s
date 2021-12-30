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
	.file	"bai10tu.c"
	.text
	.comm	player,132,4
	.comm	temp,44,4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"\012Nhap ten nguoi choi: \000"
	.align	2
.LC1:
	.ascii	"%s\000"
	.align	2
.LC2:
	.ascii	"\012Nhap ten truong: \000"
	.align	2
.LC3:
	.ascii	"\012Nhap diem so: \000"
	.align	2
.LC4:
	.ascii	"%d\000"
	.align	2
.LC5:
	.ascii	"\012%s\011%s\011%d\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L2
.L3:
	ldr	r0, .L11
	bl	printf
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	ldr	r2, .L11+4
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, .L11+8
	bl	__isoc99_scanf
	ldr	r0, .L11+12
	bl	printf
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, #16
	ldr	r2, .L11+4
	add	r3, r3, r2
	add	r3, r3, #4
	mov	r1, r3
	ldr	r0, .L11+8
	bl	__isoc99_scanf
	ldr	r0, .L11+16
	bl	printf
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, #40
	ldr	r2, .L11+4
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, .L11+20
	bl	__isoc99_scanf
	mov	r0, #10
	bl	putchar
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2:
	ldr	r3, [fp, #-16]
	cmp	r3, #2
	ble	.L3
	mov	r3, #3
	str	r3, [fp, #-8]
	mov	r3, #1
	str	r3, [fp, #-16]
	b	.L4
.L8:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L5
.L7:
	ldr	r2, [fp, #-12]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, #16
	ldr	r2, .L11+4
	add	r3, r3, r2
	add	r0, r3, #4
	ldr	r3, [fp, #-12]
	add	r2, r3, #1
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, #16
	ldr	r2, .L11+4
	add	r3, r3, r2
	add	r3, r3, #4
	mov	r1, r3
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	ble	.L6
	ldr	r0, .L11+24
	ldr	r1, .L11+4
	ldr	r2, [fp, #-12]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	mov	ip, r0
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2}
	stm	ip, {r0, r1, r2}
	ldr	r3, [fp, #-12]
	add	r2, r3, #1
	ldr	r0, .L11+4
	ldr	r1, [fp, #-12]
	mov	r3, r1
	lsl	r3, r3, #2
	add	r3, r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #2
	add	r0, r0, r3
	ldr	r1, .L11+4
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	mov	ip, r0
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2}
	stm	ip, {r0, r1, r2}
	ldr	r3, [fp, #-12]
	add	r2, r3, #1
	ldr	r1, .L11+4
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	ldr	r2, .L11+24
	mov	ip, r3
	mov	lr, r2
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2}
	stm	ip, {r0, r1, r2}
.L6:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L5:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	sub	r3, r2, r3
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	blt	.L7
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L4:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	blt	.L8
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L9
.L10:
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	ldr	r2, .L11+4
	add	r0, r3, r2
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, #16
	ldr	r2, .L11+4
	add	r3, r3, r2
	add	ip, r3, #4
	ldr	r1, .L11+4
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	add	r3, r3, #40
	ldr	r3, [r3]
	mov	r2, ip
	mov	r1, r0
	ldr	r0, .L11+28
	bl	printf
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L9:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	blt	.L10
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L12:
	.align	2
.L11:
	.word	.LC0
	.word	player
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	temp
	.word	.LC5
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
