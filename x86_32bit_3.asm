	.file	"amicable_pairs_v1.c"
	.text
	.p2align 4,,15
	.globl	check_amicable
	.type	check_amicable, @function
check_amicable:
	pushl	%ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	movl	24(%esp), %ebx
	cmpl	$1, 20(%esp)
	jle	.L7
	movl	20(%esp), %edi
	movl	$1, %ecx
	xorl	%esi, %esi
	.p2align 4,,7
	.p2align 3
.L3:
	movl	%edi, %eax
	cltd
	idivl	%ecx
	leal	(%esi,%ecx), %ebp
	testl	%edx, %edx
	cmove	%ebp, %esi
	addl	$1, %ecx
	cmpl	%edi, %ecx
	jne	.L3
.L2:
	cmpl	$1, %ebx
	jle	.L8
	movl	$1, %ecx
	xorl	%edi, %edi
	.p2align 4,,7
	.p2align 3
.L5:
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	leal	(%edi,%ecx), %ebp
	testl	%edx, %edx
	cmove	%ebp, %edi
	addl	$1, %ecx
	cmpl	%ebx, %ecx
	jne	.L5
.L4:
	xorl	%eax, %eax
	cmpl	%ebx, %esi
	jne	.L6
	xorl	%eax, %eax
	cmpl	%edi, 20(%esp)
	sete	%al
.L6:
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.L8:
	xorl	%edi, %edi
	jmp	.L4
.L7:
	xorl	%esi, %esi
	jmp	.L2
	.size	check_amicable, .-check_amicable
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
	subl	$8, %esp
	movl	$1892277387, 4(%esp)
	movl	$1982313333, (%esp)
	call	check_amicable
	addl	$8, %esp
	ret
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
