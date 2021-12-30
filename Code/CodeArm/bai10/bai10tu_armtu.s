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
	.file	"bai10tu_armtu.c"
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #0
	ldr	r5, .L1
	ldr	fp, .L1+4
	ldr	r6, .L1+8
	ldr	r10, .L1+12
	ldr	r9, .L1+16
	sub	sp, sp, #12
	add	r8, r5, #20
	add	r7, r5, #40
.L2:
	mov	r1, fp
	mov	r0, #1
	bl	__printf_chk
	add	r1, r5, r4
	mov	r0, r6
	bl	__isoc99_scanf
	mov	r1, r10
	mov	r0, #1
	bl	__printf_chk
	add	r1, r8, r4
	mov	r0, r6
	bl	__isoc99_scanf
	mov	r1, r9
	mov	r0, #1
	bl	__printf_chk
	add	r1, r7, r4
	ldr	r0, .L1+20
	bl	__isoc99_scanf
	add	r4, r4, #44
	mov	r0, #10
	bl	putchar
	cmp	r4, #132
	bne	.L2
	mov	r9, #2
	mov	r8, #0
	ldr	r7, .L1+24
.L5:
	mov	r4, r7
	add	r7, r7, #44
	mov	r1, r7
	mov	r0, r4
	bl	strcmp
	cmp	r0, #0
	add	r8, r8, #1
	ble	.L4
	ldr	lr, .L1+28
	sub	r10, r4, #20
	ldmia	r10!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	r10!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	r10, {r0, r1, r2}
	add	r6, r4, #24
	sub	ip, r4, #20
	stm	lr, {r0, r1, r2}
	ldmia	r6!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	r6!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	add	ip, r4, #24
	sub	r4, lr, #32
	ldm	r6, {r0, r1, r2}
	stm	r10, {r0, r1, r2}
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2}
	stm	r6, {r0, r1, r2}
.L4:
	cmp	r8, r9
	blt	.L5
	cmp	r9, #1
	movne	r9, #1
	ldrne	r7, .L1+24
	movne	r8, #0
	bne	.L5
.L3:
	ldr	r2, [r5, #40]
	ldr	r3, .L1+24
	str	r2, [sp]
	ldr	r1, .L1+32
	sub	r2, r3, #20
	mov	r0, r9
	bl	__printf_chk
	ldr	r2, [r5, #84]
	ldr	r3, .L1+36
	str	r2, [sp]
	ldr	r1, .L1+32
	sub	r2, r3, #20
	mov	r0, r9
	bl	__printf_chk
	ldr	r2, [r5, #128]
	ldr	r3, .L1+40
	str	r2, [sp]
	mov	r0, r9
	sub	r2, r3, #20
	ldr	r1, .L1+32
	bl	__printf_chk
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L12:
	.align	2
.L1:
	.word	player
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	player+20
	.word	temp
	.word	.LC5
	.word	player+64
	.word	player+108
	.size	main, .-main
	.comm	temp,44,4
	.comm	player,132,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"\012Nhap ten nguoi choi: \000"
	.space	1
.LC1:
	.ascii	"%s\000"
	.space	1
.LC2:
	.ascii	"\012Nhap ten truong: \000"
	.space	1
.LC3:
	.ascii	"\012Nhap diem so: \000"
.LC4:
	.ascii	"%d\000"
	.space	1
.LC5:
	.ascii	"\012%s\011%s\011%d\000"
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
