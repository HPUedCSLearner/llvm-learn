	.text
	.file	"var.c"
	.type	a,@object                       # @a
	.bss
	.globl	a
	.p2align	2
a:
	.long	0                               # 0x0
	.size	a, 4

	.type	ptra,@object                    # @ptra
	.data
	.globl	ptra
	.p2align	3
ptra:
	.quad	a
	.size	ptra, 8

	.type	b,@object                       # @b
	.bss
	.globl	b
	.p2align	3
b:
	.quad	0x0000000000000000              # double 0
	.size	b, 8

	.type	ptrb,@object                    # @ptrb
	.data
	.globl	ptrb
	.p2align	3
ptrb:
	.quad	b
	.size	ptrb, 8

	.type	c,@object                       # @c
	.bss
	.globl	c
	.p2align	2
c:
	.long	0x00000000                      # float 0
	.size	c, 4

	.type	ptrc,@object                    # @ptrc
	.data
	.globl	ptrc
	.p2align	3
ptrc:
	.quad	c
	.size	ptrc, 8

	.type	arrA,@object                    # @arrA
	.bss
	.globl	arrA
	.p2align	4
arrA:
	.zero	40
	.size	arrA, 40

	.type	arrB,@object                    # @arrB
	.globl	arrB
	.p2align	4
arrB:
	.zero	80
	.size	arrB, 80

	.type	arrC,@object                    # @arrC
	.globl	arrC
	.p2align	4
arrC:
	.zero	40
	.size	arrC, 40

	.ident	"clang version 15.0.6"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym a
	.addrsig_sym b
	.addrsig_sym c
