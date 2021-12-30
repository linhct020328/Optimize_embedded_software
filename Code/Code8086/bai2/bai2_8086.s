	.file	"bai2.c"
	.text
	.comm	i,4,4
	.comm	j,4,4
	.comm	n,4,4
	.section	.rodata
.LC0:
	.string	"In bang nhan:"
.LC1:
	.string	"%3d  x %2d  =  %3d\n"
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
	movl	$3, n(%rip)
	movl	$1, j(%rip)
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	n(%rip), %eax
	movl	%eax, i(%rip)
	jmp	.L2
.L3:
	movl	i(%rip), %ecx
	movl	j(%rip), %edx
	movl	n(%rip), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	j(%rip), %eax
	addl	$1, %eax
	movl	%eax, j(%rip)
	movl	i(%rip), %edx
	movl	n(%rip), %eax
	addl	%edx, %eax
	movl	%eax, i(%rip)
.L2:
	movl	n(%rip), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
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
