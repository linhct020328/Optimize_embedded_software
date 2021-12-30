	.file	"bai1tu.c"
	.text
	.section	.rodata
.LC0:
	.string	"Nhap vao 3 so a, b, c: "
.LC1:
	.string	"%f%f%f"
.LC5:
	.string	"Phuong trinh co vo so nghiem!"
.LC6:
	.string	"Phuong trinh vo nghiem!"
	.align 8
.LC7:
	.string	"Phuong trinh co nghiem duy nhat la: %f"
.LC8:
	.string	"Phuong trinh vo nghiem!!!"
	.align 8
.LC9:
	.string	"Phuong trinh co nghiem kep la: %f"
	.align 8
.LC10:
	.string	"Phuong trinh co 2 nghiem phan biet la: %f,%f"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 1, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 1
	subq	$80, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-44(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-52(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movss	-52(%rbp), %xmm1
	movss	-44(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-52(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	movss	.LC2(%rip), %xmm0
	divss	-36(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-48(%rbp), %xmm1
	movss	-48(%rbp), %xmm0
	mulss	%xmm0, %xmm1
	movss	-40(%rbp), %xmm0
	addss	%xmm0, %xmm0
	addss	-40(%rbp), %xmm0
	addss	-40(%rbp), %xmm0
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-44(%rbp), %xmm1
	movss	.LC3(%rip), %xmm0
	xorps	%xmm1, %xmm0
	movss	-48(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-48(%rbp), %xmm1
	movss	.LC3(%rip), %xmm0
	xorps	%xmm1, %xmm0
	movss	-32(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-48(%rbp), %xmm1
	movss	.LC3(%rip), %xmm0
	xorps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm2
	movsd	%xmm2, -72(%rbp)
	cvtss2sd	-28(%rbp), %xmm0
	call	sqrt@PLT
	movsd	-72(%rbp), %xmm2
	addsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm1
	cvtss2sd	-32(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm4
	movss	%xmm4, -16(%rbp)
	movss	-48(%rbp), %xmm1
	movss	.LC3(%rip), %xmm0
	xorps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm3
	movsd	%xmm3, -72(%rbp)
	cvtss2sd	-28(%rbp), %xmm0
	call	sqrt@PLT
	movsd	-72(%rbp), %xmm3
	subsd	%xmm0, %xmm3
	movapd	%xmm3, %xmm1
	cvtss2sd	-32(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm5
	movss	%xmm5, -12(%rbp)
	movss	-52(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L2
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.L2
	movss	-48(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L4
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.L4
	movss	-44(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jp	.L6
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.L6
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L3
.L6:
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L3
.L4:
	cvtss2sd	-24(%rbp), %xmm0
	leaq	.LC7(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L3
.L2:
	pxor	%xmm0, %xmm0
	ucomiss	-28(%rbp), %xmm0
	jbe	.L1
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L3
.L1:
	pxor	%xmm0, %xmm0
	ucomiss	-28(%rbp), %xmm0
	jp	.L13
	pxor	%xmm0, %xmm0
	ucomiss	-28(%rbp), %xmm0
	jne	.L13
	cvtss2sd	-20(%rbp), %xmm0
	leaq	.LC9(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L3
.L13:
	cvtss2sd	-12(%rbp), %xmm1
	cvtss2sd	-16(%rbp), %xmm0
	leaq	.LC10(%rip), %rdi
	movl	$2, %eax
	call	printf@PLT
.L3:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC2:
	.long	1065353216
	.align 16
.LC3:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
