	.file	"bai7.c"
	.text
	.comm	i,8,8
	.comm	n,8,8
	.globl	precision
	.data
	.align 8
	.type	precision, @object
	.size	precision, 8
precision:
	.long	2696277389
	.long	1051772663
	.text
	.globl	cubeRoot
	.type	cubeRoot, @function
cubeRoot:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, i(%rip)
	jmp	.L2
.L3:
	movsd	i(%rip), %xmm1
	movsd	.LC0(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, i(%rip)
.L2:
	movsd	i(%rip), %xmm1
	movsd	i(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	i(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-8(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jnb	.L3
	movsd	i(%rip), %xmm0
	movsd	.LC0(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, i(%rip)
	jmp	.L4
.L5:
	movsd	i(%rip), %xmm1
	movsd	precision(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, i(%rip)
.L4:
	movsd	i(%rip), %xmm1
	movsd	i(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	i(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-8(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.L5
	movsd	i(%rip), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	cubeRoot, .-cubeRoot
	.section	.rodata
.LC2:
	.string	"Can bac ba cua %lf = %lf"
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
	subq	$16, %rsp
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, n(%rip)
	movq	n(%rip), %rax
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	call	cubeRoot
	movq	n(%rip), %rax
	movapd	%xmm0, %xmm1
	movq	%rax, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	leaq	.LC2(%rip), %rdi
	movl	$2, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	0
	.long	1079984128
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
