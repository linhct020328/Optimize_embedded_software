	.file	"bai5.c"
	.text
	.globl	s1
	.data
	.align 32
	.type	s1, @object
	.size	s1, 38
s1:
	.string	"Em ten la Cao Thi Thuy Linh, lop CT2C"
	.globl	s2
	.type	s2, @object
	.size	s2, 5
s2:
	.string	"Linh"
	.comm	n,4,4
	.comm	m,4,4
	.comm	times,4,4
	.comm	i,4,4
	.comm	length,4,4
	.text
	.globl	stringLength
	.type	stringLength, @function
stringLength:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, length(%rip)
	movl	$0, i(%rip)
	jmp	.L2
.L3:
	movl	length(%rip), %eax
	addl	$1, %eax
	movl	%eax, length(%rip)
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L2:
	movl	i(%rip), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L3
	movl	length(%rip), %eax
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
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, n(%rip)
	movl	$0, m(%rip)
	movl	$0, times(%rip)
	jmp	.L6
.L16:
	movl	n(%rip), %eax
	movslq	%eax, %rdx
	leaq	s1(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movl	m(%rip), %eax
	movslq	%eax, %rdx
	leaq	s2(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	cmpb	%al, %cl
	jne	.L14
	jmp	.L8
.L10:
	movl	n(%rip), %eax
	addl	$1, %eax
	movl	%eax, n(%rip)
	movl	m(%rip), %eax
	addl	$1, %eax
	movl	%eax, m(%rip)
.L8:
	movl	n(%rip), %eax
	movslq	%eax, %rdx
	leaq	s1(%rip), %rax
	movzbl	(%rdx,%rax), %ecx
	movl	m(%rip), %eax
	movslq	%eax, %rdx
	leaq	s2(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	cmpb	%al, %cl
	jne	.L9
	movl	n(%rip), %eax
	movslq	%eax, %rdx
	leaq	s1(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	jne	.L10
.L9:
	leaq	s2(%rip), %rdi
	call	stringLength
	movl	%eax, %edx
	movl	m(%rip), %eax
	cmpl	%eax, %edx
	jne	.L13
	movl	n(%rip), %eax
	movslq	%eax, %rdx
	leaq	s1(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	cmpb	$32, %al
	je	.L12
	movl	n(%rip), %eax
	movslq	%eax, %rdx
	leaq	s1(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	jne	.L13
.L12:
	movl	times(%rip), %eax
	addl	$1, %eax
	movl	%eax, times(%rip)
	jmp	.L13
.L15:
	movl	n(%rip), %eax
	addl	$1, %eax
	movl	%eax, n(%rip)
	movl	n(%rip), %eax
	movslq	%eax, %rdx
	leaq	s1(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	je	.L20
.L14:
	movl	n(%rip), %eax
	movslq	%eax, %rdx
	leaq	s1(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	cmpb	$32, %al
	jne	.L15
	jmp	.L13
.L20:
	nop
.L13:
	movl	n(%rip), %eax
	addl	$1, %eax
	movl	%eax, n(%rip)
	movl	$0, m(%rip)
.L6:
	movl	n(%rip), %eax
	movslq	%eax, %rdx
	leaq	s1(%rip), %rax
	movzbl	(%rdx,%rax), %eax
	testb	%al, %al
	jne	.L16
	movl	times(%rip), %eax
	testl	%eax, %eax
	jle	.L17
	movl	times(%rip), %eax
	movl	%eax, %edx
	leaq	s2(%rip), %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L18
.L17:
	leaq	s2(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L18:
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
