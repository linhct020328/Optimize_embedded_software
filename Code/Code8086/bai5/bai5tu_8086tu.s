	.file	"bai5tu.c"
	.text
	.globl	stringLength
	.type	stringLength, @function
stringLength:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 1, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 1
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L2
.L3:
	addl	$1, -4(%rbp)
	addl	$1, -8(%rbp)
.L2:
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L3
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	stringLength, .-stringLength
	.section	.rodata
.LC0:
	.string	"Chuoi '%s' xuat hien %d lan\n"
	.align 8
.LC1:
	.string	"Chuoi '%s' khong co mat trong cau.\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
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
	movabsq	$7791348737369992517, %rax
	movabsq	$7517669340733448289, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movabsq	$5485517891305742441, %rax
	movabsq	$8101813140102606441, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$844383008, -16(%rbp)
	movw	$67, -12(%rbp)
	movl	$1752066380, -53(%rbp)
	movb	$0, -49(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -60(%rbp)
	jmp	.L6
.L16:
	movl	-68(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %edx
	movl	-64(%rbp), %eax
	cltq
	movzbl	-53(%rbp,%rax), %eax
	cmpb	%al, %dl
	jne	.L14
	jmp	.L8
.L10:
	addl	$1, -68(%rbp)
	addl	$1, -64(%rbp)
.L8:
	movl	-68(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %edx
	movl	-64(%rbp), %eax
	cltq
	movzbl	-53(%rbp,%rax), %eax
	cmpb	%al, %dl
	jne	.L9
	movl	-68(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L10
.L9:
	leaq	-53(%rbp), %rax
	movq	%rax, %rdi
	call	stringLength
	cmpl	%eax, -64(%rbp)
	jne	.L13
	movl	-68(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	cmpb	$32, %al
	je	.L12
	movl	-68(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L13
.L12:
	addl	$1, -60(%rbp)
	jmp	.L13
.L15:
	addl	$1, -68(%rbp)
	movl	-68(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	testb	%al, %al
	je	.L4
.L14:
	movl	-68(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	cmpb	$32, %al
	jne	.L15
	jmp	.L13
.L4:
	nop
.L13:
	addl	$1, -68(%rbp)
	movl	$0, -64(%rbp)
.L6:
	movl	-68(%rbp), %eax
	cltq
	movzbl	-48(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L16
	cmpl	$0, -60(%rbp)
	jle	.L7
	movl	-60(%rbp), %edx
	leaq	-53(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L1
.L7:
	leaq	-53(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L1:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
