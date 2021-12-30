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
	.file	"bai5tu.c"
	.text
	.align	2
	.global	stringLength
	.syntax unified
	.arm
	.fpu softvfp
	.type	stringLength, %function
stringLength:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L2
.L3:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L2:
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L3
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stringLength, .-stringLength
	.section	.rodata
	.align	2
.LC2:
	.ascii	"Chuoi '%s' xuat hien %d lan\012\000"
	.align	2
.LC3:
	.ascii	"Chuoi '%s' khong co mat trong cau.\012\000"
	.align	2
.LC0:
	.ascii	"Em ten la Cao Thi Thuy Linh, lop CT2C\000"
	.align	2
.LC1:
	.ascii	"Linh\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #64
	ldr	r3, .L22
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	ldr	r3, .L22+4
	sub	ip, fp, #48
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	str	r0, [ip]
	add	ip, ip, #4
	strh	r1, [ip]	@ movhi
	ldr	r2, .L22+8
	sub	r3, fp, #56
	ldm	r2, {r0, r1}
	str	r0, [r3]
	add	r3, r3, #4
	strb	r1, [r3]
	mov	r3, #0
	str	r3, [fp, #-68]
	mov	r3, #0
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-60]
	b	.L6
.L16:
	sub	r2, fp, #48
	ldr	r3, [fp, #-68]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	sub	r1, fp, #56
	ldr	r3, [fp, #-64]
	add	r3, r1, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L14
	b	.L8
.L10:
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L8:
	sub	r2, fp, #48
	ldr	r3, [fp, #-68]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	sub	r1, fp, #56
	ldr	r3, [fp, #-64]
	add	r3, r1, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L9
	sub	r2, fp, #48
	ldr	r3, [fp, #-68]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L10
.L9:
	sub	r3, fp, #56
	mov	r0, r3
	bl	stringLength
	mov	r2, r0
	ldr	r3, [fp, #-64]
	cmp	r3, r2
	bne	.L13
	sub	r2, fp, #48
	ldr	r3, [fp, #-68]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L12
	sub	r2, fp, #48
	ldr	r3, [fp, #-68]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L13
.L12:
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
	b	.L13
.L15:
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	sub	r2, fp, #48
	ldr	r3, [fp, #-68]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L20
.L14:
	sub	r2, fp, #48
	ldr	r3, [fp, #-68]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L15
	b	.L13
.L20:
	nop
.L13:
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	mov	r3, #0
	str	r3, [fp, #-64]
.L6:
	sub	r2, fp, #48
	ldr	r3, [fp, #-68]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L16
	ldr	r3, [fp, #-60]
	cmp	r3, #0
	ble	.L17
	sub	r3, fp, #56
	ldr	r2, [fp, #-60]
	mov	r1, r3
	ldr	r0, .L22+12
	bl	printf
	b	.L21
.L17:
	sub	r3, fp, #56
	mov	r1, r3
	ldr	r0, .L22+16
	bl	printf
.L21:
	nop
	ldr	r3, .L22
	ldr	r2, [fp, #-8]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L19
	bl	__stack_chk_fail
.L19:
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L23:
	.align	2
.L22:
	.word	__stack_chk_guard
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
