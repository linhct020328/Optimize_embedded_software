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
	.file	"bai6tu_armtu.c"
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
	ldr	r0, .L1
	bl	puts
	mov	r3, #1
	mov	r4, r3
	mov	r2, r3
	mov	r0, r3
	ldr	r1, .L1+4
	bl	__printf_chk
	mov	r5, #4
	mov	r3, r4
	ldr	r7, .L1+8
.L2:
	add	r6, r3, r4
	mov	r2, r6
	mov	r1, r7
	mov	r0, #1
	bl	__printf_chk
	subs	r5, r5, #1
	mov	r3, r4
	mov	r4, r6
	bne	.L2
	pop	{r4, r5, r6, r7, r8, pc}
.L3:
	.align	2
.L1:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"In day Fibonacci:\000"
	.space	2
.LC1:
	.ascii	"%d %d \000"
	.space	1
.LC2:
	.ascii	"%d \000"
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
