	.file	"hwOne.cpp"
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.text
	.globl	_Z14check_amicableii
	.type	_Z14check_amicableii, @function
_Z14check_amicableii:
.LFB1060:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
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
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1060:
	.size	_Z14check_amicableii, .-_Z14check_amicableii
	.globl	main
	.type	main, @function
main:
.LFB1061:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$1982313333, -4(%rbp)
	movl	$1892277387, -8(%rbp)
	movl	$1892277387, %esi
	movl	$1982313333, %edi
	call	_Z14check_amicableii
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1061:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1062:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L13
	cmpl	$65535, -8(%rbp)
	jne	.L13
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1062:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z14check_amicableii, @function
_GLOBAL__sub_I__Z14check_amicableii:
.LFB1063:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1063:
	.size	_GLOBAL__sub_I__Z14check_amicableii, .-_GLOBAL__sub_I__Z14check_amicableii
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z14check_amicableii
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
