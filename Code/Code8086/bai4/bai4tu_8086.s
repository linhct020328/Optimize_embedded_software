	.file	"bai4tu.c"
	.text
	.section	.rodata
	.align 8
.LC1:
	.string	"Chuong trinh tinh gia tri trung binh cua mang: \n"
	.align 8
.LC2:
	.string	"Gia tri trung binh cua mang la: %.2f"
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
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -48(%rbp)
	movl	$2, -44(%rbp)
	movl	$3, -40(%rbp)
	movl	$4, -36(%rbp)
	movl	$5, -32(%rbp)
	movl	$6, -28(%rbp)
	movl	$7, -24(%rbp)
	movl	$8, -20(%rbp)
	movl	$9, -16(%rbp)
	movl	$0, -12(%rbp)
	movl	$10, -56(%rbp)
	movl	$0, -64(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -52(%rbp)
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	movl	$0, -60(%rbp)
	jmp	.L2
.L3:
	movl	-60(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	addl	%eax, -64(%rbp)
	addl	$1, -60(%rbp)
.L2:
	movl	-60(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jl	.L3
	cvtsi2ss	-64(%rbp), %xmm0
	cvtsi2ss	-60(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -52(%rbp)
	cvtss2sd	-52(%rbp), %xmm0
	leaq	.LC2(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L4
	call	__stack_chk_fail@PLT
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
