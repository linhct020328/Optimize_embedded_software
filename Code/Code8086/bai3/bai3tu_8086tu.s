	.file	"bai3tu.c"
	.text
	.section	.rodata
.LC0:
	.string	"Ve tam giac sao deu:\n"
.LC1:
	.string	"* "
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
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$1, -8(%rbp)
	jmp	.L2
.L7:
	movl	$1, -4(%rbp)
	jmp	.L3
.L4:
	movl	$32, %edi
	call	putchar@PLT
	addl	$1, -4(%rbp)
.L3:
	movl	$5, %eax
	subl	-8(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jle	.L4
	movl	$1, -4(%rbp)
	jmp	.L5
.L6:
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -4(%rbp)
.L5:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L6
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -8(%rbp)
.L2:
	cmpl	$5, -8(%rbp)
	jle	.L7
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
