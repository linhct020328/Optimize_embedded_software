	.file	"bai6.c"
	.text
	.comm	a,4,4
	.comm	b,4,4
	.comm	c,4,4
	.comm	i,4,4
	.comm	n,4,4
	.section	.rodata
.LC0:
	.string	"In day Fibonacci:"
.LC1:
	.string	"%d %d "
.LC2:
	.string	"%d "
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
	movl	$6, n(%rip)
	movl	$1, b(%rip)
	movl	b(%rip), %eax
	movl	%eax, a(%rip)
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	b(%rip), %edx
	movl	a(%rip), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, i(%rip)
	jmp	.L2
.L3:
	movl	a(%rip), %edx
	movl	b(%rip), %eax
	addl	%edx, %eax
	movl	%eax, c(%rip)
	movl	c(%rip), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	b(%rip), %eax
	movl	%eax, a(%rip)
	movl	c(%rip), %eax
	movl	%eax, b(%rip)
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L2:
	movl	n(%rip), %eax
	leal	-2(%rax), %edx
	movl	i(%rip), %eax
	cmpl	%eax, %edx
	jge	.L3
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
