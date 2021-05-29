	.file	"amicable_pairs_v1.c"
	.text
	.globl	check_amicable
	.type	check_amicable, @function
check_amicable:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L2
.L4:
	movl	-20(%rbp), %eax
	cltd
	idivl	-12(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L3
	movl	-12(%rbp), %eax
	addl	%eax, -4(%rbp)
.L3:
	addl	$1, -12(%rbp)
.L2:
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	.L4
	movl	$1, -16(%rbp)
	jmp	.L5
.L7:
	movl	-24(%rbp), %eax
	cltd
	idivl	-16(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L6
	movl	-16(%rbp), %eax
	addl	%eax, -8(%rbp)
.L6:
	addl	$1, -16(%rbp)
.L5:
	movl	-16(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L7
	movl	-4(%rbp), %eax
	cmpl	-24(%rbp), %eax
	je	.L8
	movl	$0, %eax
	jmp	.L9
.L8:
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	je	.L10
	movl	$0, %eax
	jmp	.L9
.L10:
	movl	$1, %eax
.L9:
	popq	%rbp
	ret
	.size	check_amicable, .-check_amicable
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$1982313333, -4(%rbp)
	movl	$1892277387, -8(%rbp)
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	check_amicable
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
