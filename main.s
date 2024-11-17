	.arch armv8-a
	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/home/haneul/assembly_project" "main.c"
	.section	.rodata
	.align	3
.LC0:
	.string	"\353\260\260\354\227\264\354\235\230 \355\201\254\352\270\260\353\245\274 \354\236\205\353\240\245\355\225\264\354\243\274\354\204\270\354\232\224: "
	.align	3
.LC1:
	.string	"%d"
	.align	3
.LC2:
	.string	"%d\352\260\234\354\235\230 \354\232\224\354\206\214\353\245\274 \354\236\205\353\240\245\355\225\230\354\204\270\354\232\224:\n"
	.align	3
.LC3:
	.string	"\354\232\224\354\206\214 %d: "
	.align	3
.LC4:
	.string	"\n\354\240\225\353\240\254\353\220\234 \353\260\260\354\227\264:"
	.align	3
.LC5:
	.string	"%d "
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB6:
	.file 1 "main.c"
	.loc 1 5 16
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, 32]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 32
	.loc 1 5 16
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 24]
	mov	x1, 0
	.loc 1 7 5
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	.loc 1 8 5
	add	x0, sp, 4
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	.loc 1 10 24
	ldr	w0, [sp, 4]
	sxtw	x0, w0
	lsl	x0, x0, 2
	bl	malloc
	str	x0, [sp, 16]
	.loc 1 11 8
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L2
	.loc 1 12 16
	mov	w0, 1
	b	.L8
.L2:
	.loc 1 15 5
	ldr	w0, [sp, 4]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
.LBB2:
	.loc 1 16 14
	str	wzr, [sp, 8]
	.loc 1 16 5
	b	.L4
.L5:
	.loc 1 17 9
	ldr	w0, [sp, 8]
	add	w0, w0, 1
	mov	w1, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	.loc 1 18 26
	ldrsw	x0, [sp, 8]
	lsl	x0, x0, 2
	.loc 1 18 9
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	.loc 1 16 29 discriminator 3
	ldr	w0, [sp, 8]
	add	w0, w0, 1
	str	w0, [sp, 8]
.L4:
	.loc 1 16 23 discriminator 1
	ldr	w0, [sp, 4]
	ldr	w1, [sp, 8]
	cmp	w1, w0
	blt	.L5
.LBE2:
	.loc 1 21 5
	ldr	w0, [sp, 4]
	mov	w1, w0
	ldr	x0, [sp, 16]
	bl	bubble_sort
	.loc 1 23 5
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	puts
.LBB3:
	.loc 1 24 14
	str	wzr, [sp, 12]
	.loc 1 24 5
	b	.L6
.L7:
	.loc 1 25 27
	ldrsw	x0, [sp, 12]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	.loc 1 25 9
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	.loc 1 24 29 discriminator 3
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 12]
.L6:
	.loc 1 24 23 discriminator 1
	ldr	w0, [sp, 4]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	blt	.L7
.LBE3:
	.loc 1 27 5
	mov	w0, 10
	bl	putchar
	.loc 1 29 5
	ldr	x0, [sp, 16]
	bl	free
	.loc 1 30 12
	mov	w0, 0
.L8:
	.loc 1 31 1
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 24]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L9
	bl	__stack_chk_fail
.L9:
	mov	w0, w1
	ldp	x29, x30, [sp, 32]
	add	sp, sp, 48
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/include/stdlib.h"
	.file 3 "sort.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/lib/gcc/aarch64-linux-gnu/13/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x184
	.2byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.Ldebug_abbrev0
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x5
	.byte	0xd6
	.byte	0x17
	.4byte	0x3a
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x9
	.byte	0x8
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0xb
	.4byte	0x74
	.uleb128 0x4
	.4byte	0x7b
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0xc
	.4byte	.LASF12
	.byte	0x2
	.2byte	0x2af
	.byte	0xd
	.4byte	0xa6
	.uleb128 0x2
	.4byte	0x41
	.byte	0
	.uleb128 0xd
	.4byte	.LASF13
	.byte	0x3
	.byte	0x4
	.byte	0x6
	.4byte	0xbd
	.uleb128 0x2
	.4byte	0xbd
	.uleb128 0x2
	.4byte	0x43
	.byte	0
	.uleb128 0x4
	.4byte	0x43
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x2
	.2byte	0x2a0
	.byte	0xe
	.4byte	0x41
	.4byte	0xd9
	.uleb128 0x2
	.4byte	0x2e
	.byte	0
	.uleb128 0xe
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x1d2
	.byte	0xc
	.4byte	.LASF20
	.4byte	0x43
	.4byte	0xf5
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x6
	.byte	0
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x16b
	.byte	0xc
	.4byte	0x43
	.4byte	0x10d
	.uleb128 0x2
	.4byte	0x80
	.uleb128 0x6
	.byte	0
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.byte	0x5
	.byte	0x5
	.4byte	0x43
	.8byte	.LFB6
	.8byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.string	"n"
	.byte	0x6
	.byte	0x9
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x10
	.4byte	.LASF16
	.byte	0x1
	.byte	0xa
	.byte	0xa
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x11
	.8byte	.LBB2
	.8byte	.LBE2-.LBB2
	.4byte	0x168
	.uleb128 0x3
	.string	"i"
	.byte	0x10
	.byte	0xe
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x12
	.8byte	.LBB3
	.8byte	.LBE3-.LBB3
	.uleb128 0x3
	.string	"i"
	.byte	0x18
	.byte	0xe
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.8byte	0
	.8byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"long long int"
.LASF18:
	.string	"size_t"
.LASF21:
	.string	"main"
.LASF6:
	.string	"signed char"
.LASF12:
	.string	"free"
.LASF2:
	.string	"long unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF17:
	.string	"GNU C17 13.2.0 -mlittle-endian -mabi=lp64 -g -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection"
.LASF19:
	.string	"scanf"
.LASF20:
	.string	"__isoc99_scanf"
.LASF3:
	.string	"unsigned char"
.LASF9:
	.string	"char"
.LASF8:
	.string	"long int"
.LASF4:
	.string	"short unsigned int"
.LASF15:
	.string	"printf"
.LASF16:
	.string	"list"
.LASF13:
	.string	"bubble_sort"
.LASF7:
	.string	"short int"
.LASF5:
	.string	"unsigned int"
.LASF14:
	.string	"malloc"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/haneul/assembly_project"
.LASF0:
	.string	"main.c"
	.ident	"GCC: (Ubuntu 13.2.0-23ubuntu4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
