	.file	"bai1.c"
	.text
	.comm	a,8,8
	.comm	b,8,8
	.comm	c,8,8
	.comm	d,8,8
	.section	.rodata
.LC0:
	.string	"Nhap vao 3 so a, b, c: "
.LC1:
	.string	"%lf%lf%lf"
.LC3:
	.string	"Phuong trinh co vo so nghiem!"
.LC4:
	.string	"Phuong trinh vo nghiem!"
	.align 8
.LC6:
	.string	"Phuong trinh co nghiem duy nhat la: %lf"
.LC8:
	.string	"Phuong trinh vo nghiem!!!"
	.align 8
.LC9:
	.string	"Phuong trinh co nghiem kep la: %lf"
	.align 8
.LC10:
	.string	"Phuong trinh co 2 nghiem phan biet la: %lf,%lf"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	c(%rip), %rcx
	leaq	b(%rip), %rdx
	leaq	a(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movsd	a(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L2
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.L2
	movsd	b(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L4
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.L4
	movsd	c(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L6
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.L6
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L10
.L6:
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L10
.L4:
	movsd	c(%rip), %xmm1
	movq	.LC5(%rip), %xmm0
	xorpd	%xmm1, %xmm0
	movsd	b(%rip), %xmm1
	divsd	%xmm1, %xmm0
	leaq	.LC6(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L10
.L2:
	movsd	b(%rip), %xmm1
	movsd	b(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	a(%rip), %xmm2
	movsd	.LC7(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	movsd	c(%rip), %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, d(%rip)
	movsd	d(%rip), %xmm1
	pxor	%xmm0, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.L21
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L10
.L21:
	movsd	d(%rip), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jp	.L13
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.L13
	movsd	b(%rip), %xmm1
	movq	.LC5(%rip), %xmm0
	xorpd	%xmm0, %xmm1
	movsd	a(%rip), %xmm0
	addsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	leaq	.LC9(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L10
.L13:
	movsd	b(%rip), %xmm1
	movq	.LC5(%rip), %xmm0
	xorpd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
	movq	d(%rip), %rax
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	call	sqrt@PLT
	movsd	-8(%rbp), %xmm1
	subsd	%xmm0, %xmm1
	movsd	a(%rip), %xmm0
	addsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rbp)
	movq	d(%rip), %rax
	movq	%rax, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	call	sqrt@PLT
	movapd	%xmm0, %xmm1
	movsd	b(%rip), %xmm0
	subsd	%xmm0, %xmm1
	movsd	a(%rip), %xmm0
	addsd	%xmm0, %xmm0
	movapd	%xmm1, %xmm3
	divsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm0
	movsd	-8(%rbp), %xmm1
	leaq	.LC10(%rip), %rdi
	movl	$2, %eax
	call	printf@PLT
.L10:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 16
.LC5:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC7:
	.long	0
	.long	1074790400
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
