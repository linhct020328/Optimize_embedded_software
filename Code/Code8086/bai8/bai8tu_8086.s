	.file	"bai8tu.c"
	.text
	.section	.rodata
.LC0:
	.string	"\nNhap kich co mang: "
.LC1:
	.string	"%d"
	.align 8
.LC2:
	.string	"\n Nhap %d so nguyen vao trong mang: \n"
	.align 8
.LC3:
	.string	"\nHien thi cac phan tu mang theo chieu dao nguoc:"
.LC4:
	.string	"\nPhan tu %d la: %d "
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
	subq	$144, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-128(%rbp), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-144(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-144(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -140(%rbp)
	jmp	.L2
.L3:
	movq	-136(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addq	$4, -136(%rbp)
	addl	$1, -140(%rbp)
.L2:
	movl	-144(%rbp), %eax
	cmpl	%eax, -140(%rbp)
	jl	.L3
	movl	-144(%rbp), %eax
	leal	-1(%rax), %edx
	leaq	-128(%rbp), %rax
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-144(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -140(%rbp)
	jmp	.L4
.L5:
	movq	-136(%rbp), %rax
	movl	(%rax), %edx
	movl	-140(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	subq	$4, -136(%rbp)
	subl	$1, -140(%rbp)
.L4:
	cmpl	$0, -140(%rbp)
	jns	.L5
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L6
	call	__stack_chk_fail@PLT
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
