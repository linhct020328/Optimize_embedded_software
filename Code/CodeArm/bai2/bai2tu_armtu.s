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
	.file	"bai2tu.c"
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
	push	{r4, r5, lr}
	ldr	r0, .L6
	sub	sp, sp, #12
	bl	puts
	mov	r4, #1
	ldr	r5, .L6+4
.L2:
	add	r3, r4, r4, lsl #1
	str	r3, [sp]
	mov	r2, #3
	mov	r3, r4
	mov	r1, r5
	add	r4, r4, #1
	mov	r0, #1
	bl	__printf_chk
	cmp	r4, #11
	bne	.L2
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L7:
	.align	2
.L6:
	.word	.LC0
	.word	.LC1
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"In bang nhan:\000"
	.space	2
.LC1:
	.ascii	"%3d  x %2d  =  %3d\012\000"
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
