	.file	"bai3.c"
	.text
	.comm	n,4,4
	.comm	i,4,4
	.comm	j,4,4
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
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$5, n(%rip)
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$1, i(%rip)
	jmp	.L2
.L7:
	movl	$1, j(%rip)
	jmp	.L3
.L4:
	movl	$32, %edi
	call	putchar@PLT
	movl	j(%rip), %eax
	addl	$1, %eax
	movl	%eax, j(%rip)
.L3:
	movl	n(%rip), %edx
	movl	i(%rip), %eax
	subl	%eax, %edx
	movl	j(%rip), %eax
	cmpl	%eax, %edx
	jge	.L4
	movl	$1, j(%rip)
	jmp	.L5
.L6:
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	j(%rip), %eax
	addl	$1, %eax
	movl	%eax, j(%rip)
.L5:
	movl	j(%rip), %edx
	movl	i(%rip), %eax
	cmpl	%eax, %edx
	jle	.L6
	movl	$10, %edi
	call	putchar@PLT
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L2:
	movl	i(%rip), %edx
	movl	n(%rip), %eax
	cmpl	%eax, %edx
	jle	.L7
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
