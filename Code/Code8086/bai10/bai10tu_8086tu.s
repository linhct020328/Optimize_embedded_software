	.file	"bai10tu.c"
	.text
	.comm	player,132,32
	.comm	temp,44,32
	.section	.rodata
.LC0:
	.string	"\nNhap ten nguoi choi: "
.LC1:
	.string	"%s"
.LC2:
	.string	"\nNhap ten truong: "
.LC3:
	.string	"\nNhap diem so: "
.LC4:
	.string	"%d"
.LC5:
	.string	"\n%s\t%s\t%d"
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
	subq	$16, %rsp
	movl	$0, -12(%rbp)
	jmp	.L2
.L3:
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	player(%rip), %rdx
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	16(%rax), %rdx
	leaq	player(%rip), %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	32(%rax), %rdx
	leaq	player(%rip), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -12(%rbp)
.L2:
	cmpl	$2, -12(%rbp)
	jle	.L3
	movl	$3, -4(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L4
.L8:
	movl	$0, -8(%rbp)
	jmp	.L5
.L7:
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	16(%rax), %rdx
	leaq	player(%rip), %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	16(%rax), %rdx
	leaq	player(%rip), %rax
	addq	%rdx, %rax
	addq	$4, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jle	.L6
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rsi
	leaq	player(%rip), %rcx
	movq	(%rsi,%rcx), %rax
	movq	8(%rsi,%rcx), %rdx
	movq	%rax, temp(%rip)
	movq	%rdx, 8+temp(%rip)
	movq	16(%rsi,%rcx), %rax
	movq	24(%rsi,%rcx), %rdx
	movq	%rax, 16+temp(%rip)
	movq	%rdx, 24+temp(%rip)
	movq	32(%rsi,%rcx), %rax
	movq	%rax, 32+temp(%rip)
	movl	40(%rsi,%rcx), %eax
	movl	%eax, 40+temp(%rip)
	movl	-8(%rbp), %eax
	leal	1(%rax), %esi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdi
	leaq	player(%rip), %rcx
	movslq	%esi, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %r8
	leaq	player(%rip), %rsi
	movq	(%r8,%rsi), %rax
	movq	8(%r8,%rsi), %rdx
	movq	%rax, (%rdi,%rcx)
	movq	%rdx, 8(%rdi,%rcx)
	movq	16(%r8,%rsi), %rax
	movq	24(%r8,%rsi), %rdx
	movq	%rax, 16(%rdi,%rcx)
	movq	%rdx, 24(%rdi,%rcx)
	movq	32(%r8,%rsi), %rax
	movq	%rax, 32(%rdi,%rcx)
	movl	40(%r8,%rsi), %eax
	movl	%eax, 40(%rdi,%rcx)
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rsi
	leaq	player(%rip), %rcx
	movq	temp(%rip), %rax
	movq	8+temp(%rip), %rdx
	movq	%rax, (%rsi,%rcx)
	movq	%rdx, 8(%rsi,%rcx)
	movq	16+temp(%rip), %rax
	movq	24+temp(%rip), %rdx
	movq	%rax, 16(%rsi,%rcx)
	movq	%rdx, 24(%rsi,%rcx)
	movq	32+temp(%rip), %rax
	movq	%rax, 32(%rsi,%rcx)
	movl	40+temp(%rip), %eax
	movl	%eax, 40(%rsi,%rcx)
.L6:
	addl	$1, -8(%rbp)
.L5:
	movl	-4(%rbp), %eax
	subl	-12(%rbp), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L7
	addl	$1, -12(%rbp)
.L4:
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L8
	movl	$0, -12(%rbp)
	jmp	.L9
.L1:
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	40+player(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	16(%rax), %rdx
	leaq	player(%rip), %rax
	addq	%rdx, %rax
	leaq	4(%rax), %rsi
	movl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	player(%rip), %rdx
	addq	%rdx, %rax
	movq	%rsi, %rdx
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -12(%rbp)
.L9:
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.L1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
