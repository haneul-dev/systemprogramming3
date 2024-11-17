	.arch armv8-a
	.file	"sort.c"
	.text
.Ltext0:
	.file 0 "/home/haneul/assembly_project" "sort.c"
	.align	2
	.global	bubble_sort
	.type	bubble_sort, %function
bubble_sort:
.LFB0:
	.file 1 "sort.c"
	.loc 1 5 37
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	.loc 1 7 12
	ldr	w0, [sp, 4]
	sub	w0, w0, #1
	str	w0, [sp, 20]
	.loc 1 7 5
	b	.L2
.L6:
	.loc 1 8 16
	str	wzr, [sp, 24]
	.loc 1 8 9
	b	.L3
.L5:
	.loc 1 10 21
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	.loc 1 10 31
	ldrsw	x0, [sp, 24]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	.loc 1 10 16
	cmp	w1, w0
	ble	.L4
	.loc 1 11 17
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 28]
	ldrsw	x0, [sp, 24]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldrsw	x0, [sp, 24]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 24]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [sp, 28]
	str	w1, [x0]
.L4:
	.loc 1 8 29 discriminator 2
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L3:
	.loc 1 8 23 discriminator 1
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L5
	.loc 1 7 29 discriminator 2
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 20]
.L2:
	.loc 1 7 23 discriminator 1
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bgt	.L6
	.loc 1 15 1
	nop
	nop
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	bubble_sort, .-bubble_sort
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x98
	.2byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.Ldebug_abbrev0
	.uleb128 0x2
	.4byte	.LASF4
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x1
	.byte	0x5
	.byte	0x6
	.8byte	.LFB0
	.8byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8e
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x1
	.byte	0x5
	.byte	0x16
	.4byte	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.string	"n"
	.byte	0x1
	.byte	0x5
	.byte	0x22
	.4byte	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.string	"i"
	.byte	0x9
	.4byte	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1
	.string	"j"
	.byte	0xc
	.4byte	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x6
	.4byte	.LASF3
	.byte	0x1
	.byte	0x6
	.byte	0xf
	.4byte	0x94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.4byte	0x94
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
.LASF4:
	.string	"GNU C17 13.2.0 -mlittle-endian -mabi=lp64 -g -O0 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection"
.LASF2:
	.string	"list"
.LASF5:
	.string	"bubble_sort"
.LASF3:
	.string	"temp"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/haneul/assembly_project"
.LASF0:
	.string	"sort.c"
	.ident	"GCC: (Ubuntu 13.2.0-23ubuntu4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
