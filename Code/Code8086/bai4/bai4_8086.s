	.file	"bai4.c"
	.text
	.globl	array
	.data
	.align 32
	.type	array, @object
	.size	array, 40
array:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	0
	.comm	sum,4,4
	.comm	loop,4,4
	.globl	arr_size
	.align 4
	.type	arr_size, @object
	.size	arr_size, 4
arr_size:
	.long	10
	.comm	avg,8,8
	.section	.rodata
	.align 8
.LC1:
	.string	"Chuong trinh tinh gia tri trung binh cua mang: \n"
	.align 8
.LC2:
	.string	"Gia tri trung binh cua mang la: %.2f"
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
	subq	$16, %rsp
	pxor	%xmm0, %xmm0
	movsd	%xmm0, avg(%rip)
	movl	$0, sum(%rip)
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	movl	$0, loop(%rip)
	jmp	.L2
.L3:
	movl	loop(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	array(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	sum(%rip), %eax
	addl	%edx, %eax
	movl	%eax, sum(%rip)
	movl	loop(%rip), %eax
	addl	$1, %eax
	movl	%eax, loop(%rip)
.L2:
	movl	loop(%rip), %edx
	movl	arr_size(%rip), %eax
	cmpl	%eax, %edx
	jl	.L3
	movl	sum(%rip), %eax
	cvtsi2ss	%eax, %xmm0
	movl	loop(%rip), %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, avg(%rip)
	movq	avg(%rip), %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	leaq	.LC2(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
