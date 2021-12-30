	.file	"bai9.c"
	.text
	.globl	arr
	.data
	.align 32
	.type	arr, @object
	.size	arr, 40
arr:
	.long	12
	.long	11
	.long	13
	.long	5
	.long	6
	.long	7
	.zero	16
	.globl	arr_size
	.align 4
	.type	arr_size, @object
	.size	arr_size, 4
arr_size:
	.long	10
	.comm	i,4,4
	.comm	j,4,4
	.comm	k,4,4
	.comm	n1,4,4
	.comm	n2,4,4
	.text
	.globl	merge
	.type	merge, @function
merge:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	subq	$80, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movl	%edx, -96(%rbp)
	movl	%ecx, -100(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %rsi
	movl	-96(%rbp), %eax
	subl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, n1(%rip)
	movl	-100(%rbp), %eax
	subl	-96(%rbp), %eax
	movl	%eax, n2(%rip)
	movl	n1(%rip), %eax
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -72(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %r14
	movl	$0, %r15d
	movslq	%eax, %rdx
	movq	%rdx, %r12
	movl	$0, %r13d
	cltq
	salq	$2, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -64(%rbp)
	movl	n2(%rip), %eax
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %r10
	movl	$0, %r11d
	movslq	%eax, %rdx
	movq	%rdx, %r8
	movl	$0, %r9d
	cltq
	salq	$2, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %edi
	movl	$0, %edx
	divq	%rdi
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -48(%rbp)
	movl	$0, i(%rip)
	jmp	.L2
.L3:
	movl	i(%rip), %edx
	movl	-92(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	i(%rip), %edx
	movl	(%rax), %ecx
	movq	-64(%rbp), %rax
	movslq	%edx, %rdx
	movl	%ecx, (%rax,%rdx,4)
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L2:
	movl	i(%rip), %edx
	movl	n1(%rip), %eax
	cmpl	%eax, %edx
	jl	.L3
	movl	$0, j(%rip)
	jmp	.L4
.L5:
	movl	-96(%rbp), %eax
	leal	1(%rax), %edx
	movl	j(%rip), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movl	j(%rip), %edx
	movl	(%rax), %ecx
	movq	-48(%rbp), %rax
	movslq	%edx, %rdx
	movl	%ecx, (%rax,%rdx,4)
	movl	j(%rip), %eax
	addl	$1, %eax
	movl	%eax, j(%rip)
.L4:
	movl	j(%rip), %edx
	movl	n2(%rip), %eax
	cmpl	%eax, %edx
	jl	.L5
	movl	$0, i(%rip)
	movl	$0, j(%rip)
	movl	-92(%rbp), %eax
	movl	%eax, k(%rip)
	jmp	.L6
.L10:
	movl	i(%rip), %edx
	movq	-64(%rbp), %rax
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %ecx
	movl	j(%rip), %edx
	movq	-48(%rbp), %rax
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	cmpl	%eax, %ecx
	jg	.L7
	movl	i(%rip), %edx
	movl	k(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-88(%rbp), %rax
	addq	%rax, %rcx
	movq	-64(%rbp), %rax
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, (%rcx)
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
	jmp	.L8
.L7:
	movl	j(%rip), %edx
	movl	k(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-88(%rbp), %rax
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, (%rcx)
	movl	j(%rip), %eax
	addl	$1, %eax
	movl	%eax, j(%rip)
.L8:
	movl	k(%rip), %eax
	addl	$1, %eax
	movl	%eax, k(%rip)
.L6:
	movl	i(%rip), %edx
	movl	n1(%rip), %eax
	cmpl	%eax, %edx
	jge	.L11
	movl	j(%rip), %edx
	movl	n2(%rip), %eax
	cmpl	%eax, %edx
	jl	.L10
	jmp	.L11
.L12:
	movl	i(%rip), %edx
	movl	k(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-88(%rbp), %rax
	addq	%rax, %rcx
	movq	-64(%rbp), %rax
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, (%rcx)
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
	movl	k(%rip), %eax
	addl	$1, %eax
	movl	%eax, k(%rip)
.L11:
	movl	i(%rip), %edx
	movl	n1(%rip), %eax
	cmpl	%eax, %edx
	jl	.L12
	jmp	.L13
.L14:
	movl	j(%rip), %edx
	movl	k(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-88(%rbp), %rax
	addq	%rax, %rcx
	movq	-48(%rbp), %rax
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, (%rcx)
	movl	j(%rip), %eax
	addl	$1, %eax
	movl	%eax, j(%rip)
	movl	k(%rip), %eax
	addl	$1, %eax
	movl	%eax, k(%rip)
.L13:
	movl	j(%rip), %edx
	movl	n2(%rip), %eax
	cmpl	%eax, %edx
	jl	.L14
	movq	%rsi, %rsp
	nop
	movq	-40(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leaq	-32(%rbp), %rsp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	merge, .-merge
	.globl	mergeSort
	.type	mergeSort, @function
mergeSort:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.L18
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	mergeSort
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	-32(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	mergeSort
	movl	-32(%rbp), %ecx
	movl	-4(%rbp), %edx
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	merge
.L18:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	mergeSort, .-mergeSort
	.section	.rodata
.LC0:
	.string	"%d "
	.text
	.globl	printArray
	.type	printArray, @function
printArray:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, i(%rip)
	jmp	.L20
.L21:
	movl	i(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	i(%rip), %eax
	addl	$1, %eax
	movl	%eax, i(%rip)
.L20:
	movl	i(%rip), %eax
	cmpl	%eax, -12(%rbp)
	jg	.L21
	movl	$10, %edi
	call	putchar@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	printArray, .-printArray
	.section	.rodata
.LC1:
	.string	"Given array is "
.LC2:
	.string	"\nSorted array is "
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	movl	arr_size(%rip), %eax
	movl	%eax, %esi
	leaq	arr(%rip), %rdi
	call	printArray
	movl	arr_size(%rip), %eax
	subl	$1, %eax
	movl	%eax, %edx
	movl	$0, %esi
	leaq	arr(%rip), %rdi
	call	mergeSort
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	movl	arr_size(%rip), %eax
	movl	%eax, %esi
	leaq	arr(%rip), %rdi
	call	printArray
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
