	.file	"amicable_pairs_v1.c"
	.text
	.globl	check_amicable
	.type	check_amicable, @function
check_amicable:
	movl	$1, %ecx
	xorl	%r9d, %r9d
.L2:
	cmpl	%edi, %ecx
	jge	.L11
	movl	%edi, %eax
	cltd
	idivl	%ecx
	leal	(%r9,%rcx), %eax
	testl	%edx, %edx
	cmove	%eax, %r9d
	incl	%ecx
	jmp	.L2
.L11:
	movl	$1, %ecx
	xorl	%r8d, %r8d
.L5:
	cmpl	%esi, %ecx
	jge	.L12
	movl	%esi, %eax
	cltd
	idivl	%ecx
	leal	(%r8,%rcx), %eax
	testl	%edx, %edx
	cmove	%eax, %r8d
	incl	%ecx
	jmp	.L5
.L12:
	xorl	%eax, %eax
	cmpl	%esi, %r9d
	jne	.L8
	xorl	%eax, %eax
	cmpl	%edi, %r8d
	sete	%al
.L8:
	ret
	.size	check_amicable, .-check_amicable
	.section	.text.startup,"ax",@progbits
	.globl	main
	.type	main, @function
main:
	movl	$1892277387, %esi
	movl	$1982313333, %edi
	jmp	check_amicable
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
