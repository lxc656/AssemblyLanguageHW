	.file	"hw2.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d x %d = %d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	$9, %ebp
	leaq	.LC0(%rip), %r14
	jmp	.L2
.L12:
	movl	$10, %edi
	call	putchar@PLT
.L4:
	addl	$1, %ebx
	addl	%r13d, %r12d
	cmpl	%ebp, %ebx
	jg	.L8
.L5:
	movl	%r12d, %r8d
	movl	%ebx, %ecx
	movl	%ebp, %edx
	movq	%r14, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	cmpl	%ebx, %ebp
	je	.L12
	movl	$32, %edi
	call	putchar@PLT
	jmp	.L4
.L8:
	subl	$1, %ebp
	je	.L6
.L2:
	movl	%ebp, %r13d
	movl	%ebp, %r12d
	movl	$1, %ebx
	testl	%ebp, %ebp
	jg	.L5
	jmp	.L8
.L6:
	movl	$0, %eax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
