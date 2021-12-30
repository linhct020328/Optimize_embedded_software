	.file	"bai7tu.c"
	.text
	.section	.rodata
.LC2:
	.string	"%f"
	.text
	.globl	cubeRoot
	.type	cubeRoot, @function
cubeRoot:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 1, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 1
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -4(%rbp)
	movss	.LC1(%rip), %xmm0
	movss	%xmm0, -8(%rbp)
	jmp	.L2
.L3:
	movss	-8(%rbp), %xmm1
	movss	.LC1(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
.L2:
	movss	-8(%rbp), %xmm0
	mulss	-8(%rbp), %xmm0
	mulss	-8(%rbp), %xmm0
	movss	-20(%rbp), %xmm1
	ucomiss	%xmm0, %xmm1
	jnb	.L3
	movss	-8(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	jmp	.L4
.L5:
	movss	-8(%rbp), %xmm0
	addss	-4(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
.L4:
	movss	-8(%rbp), %xmm0
	mulss	-8(%rbp), %xmm0
	mulss	-8(%rbp), %xmm0
	movss	-20(%rbp), %xmm1
	ucomiss	%xmm0, %xmm1
	ja	.L5
	cvtss2sd	-8(%rbp), %xmm0
	leaq	.LC2(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	cubeRoot, .-cubeRoot
	.section	.rodata
.LC4:
	.string	"Can bac ba cua %f la: "
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
	subq	$32, %rsp
	movss	.LC3(%rip), %xmm0
	movss	%xmm0, -4(%rbp)
	cvtss2sd	-4(%rbp), %xmm0
	leaq	.LC4(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movss	-20(%rbp), %xmm0
	call	cubeRoot
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	897988541
	.align 4
.LC1:
	.long	1065353216
	.align 4
.LC3:
	.long	1123680256
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
