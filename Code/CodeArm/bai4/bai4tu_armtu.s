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
	.file	"bai4tu_armtu.c"
	.text
	.global	__aeabi_i2f
	.global	__aeabi_fdiv
	.global	__aeabi_f2d
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	lr, .L3
	sub	sp, sp, #48
	add	ip, sp, #4
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	ldr	r4, .L3+4
	stm	ip, {r0, r1}
	ldr	r3, [r4]
	ldr	r0, .L3+8
	str	r3, [sp, #44]
	bl	puts
	mov	r0, #0
	mov	r3, sp
	add	r1, sp, #40
.L2:
	ldr	r2, [r3, #4]!
	cmp	r3, r1
	add	r0, r0, r2
	bne	.L2
	ldr	r2, [sp, #44]
	ldr	r3, [r4]
	cmp	r2, r3
	bne	.L1
	bl	__aeabi_i2f
	ldr	r1, .L3+12
	bl	__aeabi_fdiv
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, #1
	ldr	r1, .L3+16
	add	sp, sp, #48
	@ sp needed
	pop	{r4, lr}
	b	__printf_chk
.L1:
	bl	__stack_chk_fail
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.word	__stack_chk_guard
	.word	.LC1
	.word	1092616192
	.word	.LC2
	.size	main, .-main
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
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
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"Chuong trinh tinh gia tri trung binh cua mang: \012"
	.ascii	"\000"
	.space	3
.LC2:
	.ascii	"Gia tri trung binh cua mang la: %.2f\000"
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
