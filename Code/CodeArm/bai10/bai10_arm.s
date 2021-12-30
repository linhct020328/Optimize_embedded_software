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
	.file	"bai10.c"
	.text
	.comm	player,132,4
	.comm	temp,44,4
	.comm	i,4,4
	.comm	j,4,4
	.comm	n,4,4
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	ldr	r3, .L12
	mov	r2, #0
	str	r2, [r3]
	b	.L2
.L3:
	ldr	r0, .L12+4
	bl	printf
	ldr	r3, .L12
	ldr	r2, [r3]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	ldr	r2, .L12+8
	add	r3, r3, r2
	add	r3, r3, #4
	mov	r1, r3
	ldr	r0, .L12+12
	bl	__isoc99_scanf
	ldr	r0, .L12+16
	bl	printf
	ldr	r3, .L12
	ldr	r2, [r3]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, #24
	ldr	r2, .L12+8
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, .L12+12
	bl	__isoc99_scanf
	ldr	r0, .L12+20
	bl	printf
	ldr	r3, .L12
	ldr	r2, [r3]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	ldr	r2, .L12+8
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, .L12+24
	bl	__isoc99_scanf
	mov	r0, #10
	bl	putchar
	ldr	r3, .L12
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L12
	str	r3, [r2]
.L2:
	ldr	r3, .L12
	ldr	r3, [r3]
	cmp	r3, #2
	ble	.L3
	ldr	r3, .L12+28
	mov	r2, #3
	str	r2, [r3]
	ldr	r3, .L12
	mov	r2, #1
	str	r2, [r3]
	b	.L4
.L8:
	ldr	r3, .L12+32
	mov	r2, #0
	str	r2, [r3]
	b	.L5
.L7:
	ldr	r3, .L12+32
	ldr	r2, [r3]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, #24
	ldr	r2, .L12+8
	add	r0, r3, r2
	ldr	r3, .L12+32
	ldr	r3, [r3]
	add	r2, r3, #1
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, #24
	ldr	r2, .L12+8
	add	r3, r3, r2
	mov	r1, r3
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	ble	.L6
	ldr	r3, .L12+32
	ldr	r2, [r3]
	ldr	r0, .L12+36
	ldr	r1, .L12+8
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
	ldr	r3, .L12+32
	ldr	r3, [r3]
	add	r2, r3, #1
	ldr	r3, .L12+32
	ldr	r1, [r3]
	ldr	r0, .L12+8
	mov	r3, r1
	lsl	r3, r3, #2
	add	r3, r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #2
	add	r0, r0, r3
	ldr	r1, .L12+8
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
	ldr	r3, .L12+32
	ldr	r3, [r3]
	add	r2, r3, #1
	ldr	r1, .L12+8
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	ldr	r2, .L12+36
	mov	ip, r3
	mov	lr, r2
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2}
	stm	ip, {r0, r1, r2}
.L6:
	ldr	r3, .L12+32
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L12+32
	str	r3, [r2]
.L5:
	ldr	r3, .L12+28
	ldr	r2, [r3]
	ldr	r3, .L12
	ldr	r3, [r3]
	sub	r2, r2, r3
	ldr	r3, .L12+32
	ldr	r3, [r3]
	cmp	r2, r3
	bgt	.L7
	ldr	r3, .L12
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L12
	str	r3, [r2]
.L4:
	ldr	r3, .L12
	ldr	r2, [r3]
	ldr	r3, .L12+28
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L8
	ldr	r3, .L12
	mov	r2, #0
	str	r2, [r3]
	b	.L9
.L10:
	ldr	r3, .L12
	ldr	r2, [r3]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	ldr	r2, .L12+8
	add	r3, r3, r2
	add	r0, r3, #4
	ldr	r3, .L12
	ldr	r2, [r3]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, #24
	ldr	r2, .L12+8
	add	ip, r3, r2
	ldr	r3, .L12
	ldr	r2, [r3]
	ldr	r1, .L12+8
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r1, r3
	ldr	r3, [r3]
	mov	r2, ip
	mov	r1, r0
	ldr	r0, .L12+40
	bl	printf
	ldr	r3, .L12
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L12
	str	r3, [r2]
.L9:
	ldr	r3, .L12
	ldr	r2, [r3]
	ldr	r3, .L12+28
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L10
	mov	r3, #0
	mov	r0, r3
	pop	{fp, pc}
.L13:
	.align	2
.L12:
	.word	i
	.word	.LC0
	.word	player
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	n
	.word	j
	.word	temp
	.word	.LC5
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
