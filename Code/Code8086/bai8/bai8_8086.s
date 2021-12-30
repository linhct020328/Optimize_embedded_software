	.file	"bai8.c"
	.text
	.comm	size,4,4
	.comm	i,4,4
	.comm	arr,120,32
	.comm	ptr,8,8
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
	leaq	arr(%rip), %rax
	movq	%rax, ptr(%rip)
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	size(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	size(%rip), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, i(%rip)
	jmp	.L2
.L3:
	movq	ptr(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	ptr(%rip), %rax
	addq	$4, %rax
	movq	%rax, ptr(%rip)
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L2:
	movl	i(%rip), %edx
	movl	size(%rip), %eax
	cmpl	%eax, %edx
	jl	.L3
	movl	size(%rip), %eax
	subl	$1, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	arr(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, ptr(%rip)
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	size(%rip), %eax
	subl	$1, %eax
	movl	%eax, i(%rip)
	jmp	.L4
.L5:
	movq	ptr(%rip), %rax
	movl	(%rax), %edx
	movl	i(%rip), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	ptr(%rip), %rax
	subq	$4, %rax
	movq	%rax, ptr(%rip)
	movl	i(%rip), %eax
	subl	$1, %eax
	movl	%eax, i(%rip)
.L4:
	movl	i(%rip), %eax
	testl	%eax, %eax
	jns	.L5
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
