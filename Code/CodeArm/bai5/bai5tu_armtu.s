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
	.file	"bai5tu_armtu.c"
	.text
	.align	2
	.global	stringLength
	.syntax unified
	.arm
	.fpu softvfp
	.type	stringLength, %function
stringLength:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L4
	mov	r3, r0
	mov	r0, #0
.L3:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	add	r0, r0, #1
	cmp	r2, #0
	bne	.L3
	bx	lr
.L4:
	mov	r0, r3
	bx	lr
	.size	stringLength, .-stringLength
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r8, #69
	mov	ip, r8
	mov	r5, #0
	sub	sp, sp, #56
	ldr	r4, .L20
	add	r7, sp, #12
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	r7!, {r0, r1, r2, r3}
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	r7!, {r0, r1, r2, r3}
	ldm	r4, {r0, r1}
	ldr	r4, .L20+4
	ldr	r3, .L20+8
	ldr	r2, [r4]
	str	r0, [r7], #4
	cmp	ip, #76
	strh	r1, [r7]	@ movhi
	str	r2, [sp, #52]
	ldm	r3, {r0, r1}
	mov	lr, r5
	mov	r6, #109
	str	r0, [sp, #4]
	strb	r1, [sp, #8]
	add	r2, sp, #4
	beq	.L9
.L5:
	add	r3, lr, #1
	add	r0, sp, #12
	mov	r1, ip
	add	r0, r0, r3
	mov	ip, r6
	b	.L10
.L16:
	cmp	ip, #0
	mov	r1, ip
	add	r3, r3, #1
	ldrb	ip, [r0, #1]!	@ zero_extendqisi2
	beq	.L2
.L10:
	cmp	r1, #32
	mov	lr, r3
	bne	.L16
.L15:
	cmp	ip, #0
	beq	.L17
.L7:
	add	r3, sp, #56
	add	r3, r3, lr
	cmp	ip, #76
	ldrb	r6, [r3, #-43]	@ zero_extendqisi2
	mov	r8, ip
	bne	.L5
.L9:
	cmp	r8, #76
	add	r3, lr, #1
	bne	.L1
	add	lr, lr, #2
	add	r0, sp, #12
	mov	r1, #1
	mov	ip, #105
	add	r0, r0, lr
	b	.L13
.L6:
	cmp	r6, #0
	add	r1, r1, #1
	beq	.L11
	mov	r6, ip
	ldrb	ip, [r2, r1]	@ zero_extendqisi2
.L13:
	cmp	r6, ip
	mov	r7, r3
	add	r3, r3, #1
	mov	lr, r3
	mov	r8, r1
	ldrb	ip, [r0], #1	@ zero_extendqisi2
	beq	.L6
.L11:
	mov	r1, r2
	mov	r3, #0
.L14:
	ldrb	r0, [r1, #1]!	@ zero_extendqisi2
	add	r3, r3, #1
	cmp	r0, #0
	bne	.L14
	cmp	r3, r8
	bne	.L15
	add	lr, r7, #1
	add	r3, sp, #56
	tst	r6, #223
	add	r3, r3, lr
	ldrb	ip, [r3, #-44]	@ zero_extendqisi2
	addeq	r5, r5, #1
	b	.L15
.L2:
	cmp	ip, #0
	mov	lr, r3
	bne	.L7
.L17:
	cmp	r5, #0
	beq	.L19
	mov	r3, r5
	ldr	r1, .L20+12
	mov	r0, #1
	bl	__printf_chk
.L8:
	ldr	r2, [sp, #52]
	ldr	r3, [r4]
	cmp	r2, r3
	bne	.L12
	add	sp, sp, #56
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L19:
	ldr	r1, .L20+16
	mov	r0, #1
	bl	__printf_chk
	b	.L8
.L1:
	mov	r1, r6
	mov	r7, lr
	mov	r6, ip
	mov	lr, r3
	mov	ip, r1
	mov	r8, #0
	b	.L11
.L12:
	bl	__stack_chk_fail
.L18:
	.align	2
.L20:
	.word	.LC0
	.word	__stack_chk_guard
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC2:
	.ascii	"Chuoi '%s' xuat hien %d lan\012\000"
	.space	3
.LC3:
	.ascii	"Chuoi '%s' khong co mat trong cau.\012\000"
.LC0:
	.ascii	"Em ten la Cao Thi Thuy Linh, lop CT2C\000"
	.space	2
.LC1:
	.ascii	"Linh\000"
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
