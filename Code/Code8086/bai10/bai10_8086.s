	.file	"bai10.c"
	.text
	.comm	player,132,32
	.comm	temp,44,32
	.comm	i,4,4
	.comm	j,4,4
	.comm	n,4,4
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
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, i(%rip)
	jmp	.L2
.L3:
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	i(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	player(%rip), %rdx
	addq	%rdx, %rax
	addq	$4, %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	i(%rip), %eax
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
	addq	$8, %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	i(%rip), %eax
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
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$10, %edi
	call	putchar@PLT
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L2:
	movl	i(%rip), %eax
	cmpl	$2, %eax
	jle	.L3
	movl	$3, n(%rip)
	movl	$1, i(%rip)
	jmp	.L4
.L8:
	movl	$0, j(%rip)
	jmp	.L5
.L7:
	movl	j(%rip), %eax
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
	leaq	8(%rax), %rcx
	movl	j(%rip), %eax
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
	addq	$8, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jle	.L6
	movl	j(%rip), %eax
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
	movl	j(%rip), %eax
	leal	1(%rax), %esi
	movl	j(%rip), %eax
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
	movl	j(%rip), %eax
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
	movl	j(%rip), %eax
	addl	$1, %eax
	movl	%eax, j(%rip)
.L5:
	movl	n(%rip), %edx
	movl	i(%rip), %eax
	subl	%eax, %edx
	movl	j(%rip), %eax
	cmpl	%eax, %edx
	jg	.L7
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L4:
	movl	i(%rip), %edx
	movl	n(%rip), %eax
	cmpl	%eax, %edx
	jl	.L8
	movl	$0, i(%rip)
	jmp	.L9
.L10:
	movl	i(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	leaq	player(%rip), %rax
	movl	(%rdx,%rax), %ecx
	movl	i(%rip), %eax
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
	leaq	8(%rax), %rsi
	movl	i(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	player(%rip), %rdx
	addq	%rdx, %rax
	addq	$4, %rax
	movq	%rsi, %rdx
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L9:
	movl	i(%rip), %edx
	movl	n(%rip), %eax
	cmpl	%eax, %edx
	jl	.L10
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
