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
	.file	"bai5.c"
	.text
	.global	s1
	.data
	.align	2
	.type	s1, %object
	.size	s1, 38
s1:
	.ascii	"Em ten la Cao Thi Thuy Linh, lop CT2C\000"
	.global	s2
	.align	2
	.type	s2, %object
	.size	s2, 5
s2:
	.ascii	"Linh\000"
	.comm	n,4,4
	.comm	m,4,4
	.comm	times,4,4
	.comm	i,4,4
	.comm	length,4,4
	.text
	.align	2
	.global	stringLength
	.syntax unified
	.arm
	.fpu softvfp
	.type	stringLength, %function
stringLength:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, .L5
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L5+4
	mov	r2, #0
	str	r2, [r3]
	b	.L2
.L3:
	ldr	r3, .L5
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L5
	str	r3, [r2]
	ldr	r3, .L5+4
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L5+4
	str	r3, [r2]
.L2:
	ldr	r3, .L5+4
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [fp, #-8]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L3
	ldr	r3, .L5
	ldr	r3, [r3]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L6:
	.align	2
.L5:
	.word	length
	.word	i
	.size	stringLength, .-stringLength
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Chuoi '%s' xuat hien %d lan\012\000"
	.align	2
.LC1:
	.ascii	"Chuoi '%s' khong co mat trong cau.\012\000"
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
	ldr	r3, .L23
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L23+4
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, .L23+8
	mov	r2, #0
	str	r2, [r3]
	b	.L8
.L18:
	ldr	r3, .L23
	ldr	r3, [r3]
	ldr	r2, .L23+12
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, .L23+4
	ldr	r3, [r3]
	ldr	r1, .L23+16
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L16
	b	.L10
.L12:
	ldr	r3, .L23
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L23
	str	r3, [r2]
	ldr	r3, .L23+4
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L23+4
	str	r3, [r2]
.L10:
	ldr	r3, .L23
	ldr	r3, [r3]
	ldr	r2, .L23+12
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, .L23+4
	ldr	r3, [r3]
	ldr	r1, .L23+16
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L11
	ldr	r3, .L23
	ldr	r3, [r3]
	ldr	r2, .L23+12
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L12
.L11:
	ldr	r0, .L23+16
	bl	stringLength
	mov	r2, r0
	ldr	r3, .L23+4
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L15
	ldr	r3, .L23
	ldr	r3, [r3]
	ldr	r2, .L23+12
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L14
	ldr	r3, .L23
	ldr	r3, [r3]
	ldr	r2, .L23+12
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L15
.L14:
	ldr	r3, .L23+8
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L23+8
	str	r3, [r2]
	b	.L15
.L17:
	ldr	r3, .L23
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L23
	str	r3, [r2]
	ldr	r3, .L23
	ldr	r3, [r3]
	ldr	r2, .L23+12
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L22
.L16:
	ldr	r3, .L23
	ldr	r3, [r3]
	ldr	r2, .L23+12
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L17
	b	.L15
.L22:
	nop
.L15:
	ldr	r3, .L23
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L23
	str	r3, [r2]
	ldr	r3, .L23+4
	mov	r2, #0
	str	r2, [r3]
.L8:
	ldr	r3, .L23
	ldr	r3, [r3]
	ldr	r2, .L23+12
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L18
	ldr	r3, .L23+8
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L19
	ldr	r3, .L23+8
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r1, .L23+16
	ldr	r0, .L23+20
	bl	printf
	b	.L20
.L19:
	ldr	r1, .L23+16
	ldr	r0, .L23+24
	bl	printf
.L20:
	mov	r3, #0
	mov	r0, r3
	pop	{fp, pc}
.L24:
	.align	2
.L23:
	.word	n
	.word	m
	.word	times
	.word	s1
	.word	s2
	.word	.LC0
	.word	.LC1
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
