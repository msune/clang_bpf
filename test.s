	.text
	.file	"test.c"
	.file	0 "/home/msuneclo/dev/clang_bug_pragma_unroll" "test.c" md5 0x13d748e485ba417fc7b906f2bc6be596
	.file	1 "/usr/include/asm-generic" "int-ll64.h" md5 0xb810f270733e106319b67ef512c6246e
	.file	2 "/usr/include/bpf" "bpf_helper_defs.h" md5 0x09cfcd7169c24bec448f30582e8c6db9
	.file	3 "/usr/include/linux" "icmpv6.h" md5 0x0310ca5584e6f44f6eea6cf040ee84b9
	.file	4 "/usr/include/linux" "types.h" md5 0xbf9fbc0e8f60927fef9d8917535375a6
	.section	classifier,"ax",@progbits
	.globl	repro                           # -- Begin function repro
	.p2align	3
	.type	repro,@function
repro:                                  # @repro
.Lfunc_begin0:
	.loc	0 184 0                         # test.c:184:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: repro:skb <- $r1
	r6 = r1
.Ltmp0:
.Ltmp1:
	#DEBUG_VALUE: repro:ip6 <- 0
	#DEBUG_VALUE: repro:skb <- $r6
	.loc	0 189 2 prologue_end            # test.c:189:2
.Ltmp2:
	r1 = repro.____fmt ll
	r2 = 6
	call 6
.Ltmp3:
.Ltmp4:
	#DEBUG_VALUE: ctx_data:ctx <- $r6
	#DEBUG_VALUE: icmp6_ndisc_validate:ip6 <- 0
	#DEBUG_VALUE: icmp6_ndisc_validate:ctx <- $r6
	.loc	0 87 1                          # test.c:87:1
.Ltmp5:
	#APP
	r1 = *(u32 *)(r6 + 76)
	#NO_APP
.Ltmp6:
.Ltmp7:
	#DEBUG_VALUE: icmp6_ndisc_validate:l3_off <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_minus, DW_OP_stack_value] 0, $r1
	#DEBUG_VALUE: ctx_data:ptr <- $r1
	.loc	0 155 2                         # test.c:155:2
.Ltmp8:
	r1 = icmp6_ndisc_validate.____fmt ll
.Ltmp9:
.Ltmp10:
	r2 = 23
	call 6
.Ltmp11:
.Ltmp12:
.Lfunc_end0:
	.size	repro, .Lfunc_end0-repro
	.cfi_endproc
	.file	5 "/usr/include/linux" "bpf.h" md5 0x138cb73eb42942499c5a2382b1dd0dc0
	.file	6 "/usr/include/linux" "ipv6.h" md5 0xd288e308e142e51c48e7422f4fbbaa3f
	.file	7 "/usr/include/linux" "in6.h" md5 0xfca1889f0274df066e49cf4d8db8011e
                                        # -- End function
	.type	repro.____fmt,@object           # @repro.____fmt
	.section	.rodata,"a",@progbits
repro.____fmt:
	.asciz	"Start"
	.size	repro.____fmt, 6

	.type	__packed,@object                # @__packed
	.section	.bss,"aw",@nobits
	.globl	__packed
	.p2align	3, 0x0
__packed:
	.zero	16
	.size	__packed, 16

	.type	icmp6_ndisc_validate.____fmt,@object # @icmp6_ndisc_validate.____fmt
	.section	.rodata,"a",@progbits
icmp6_ndisc_validate.____fmt:
	.asciz	"pre ipv6_hdrlen_offset"
	.size	icmp6_ndisc_validate.____fmt, 23

	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	2                               # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp0-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	81                              # DW_OP_reg1
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           #   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      #   ending offset
	.byte	1                               # Loc expr size
	.byte	86                              # DW_OP_reg6
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	16                              # Loc expr size
	.byte	17                              # DW_OP_consts
	.byte	0                               # 0
	.byte	113                             # DW_OP_breg1
	.byte	0                               # 0
	.byte	168                             # DW_OP_convert
	.asciz	"\247\200\200"                  # 
	.byte	168                             # DW_OP_convert
	.asciz	"\253\200\200"                  # 
	.byte	28                              # DW_OP_minus
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_list_header_end0:
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	37                              # DW_FORM_strx1
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	114                             # DW_AT_str_offsets_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	37                              # DW_FORM_strx1
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	115                             # DW_AT_addr_base
	.byte	23                              # DW_FORM_sec_offset
	.ascii	"\214\001"                      # DW_AT_loclists_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	8                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	9                               # Abbreviation Code
	.byte	29                              # DW_TAG_inlined_subroutine
	.byte	1                               # DW_CHILDREN_yes
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	88                              # DW_AT_call_file
	.byte	11                              # DW_FORM_data1
	.byte	89                              # DW_AT_call_line
	.byte	11                              # DW_FORM_data1
	.byte	87                              # DW_AT_call_column
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	10                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	11                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	12                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	49                              # DW_AT_abstract_origin
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	13                              # Abbreviation Code
	.byte	1                               # DW_TAG_array_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	14                              # Abbreviation Code
	.byte	33                              # DW_TAG_subrange_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	55                              # DW_AT_count
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	15                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	16                              # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	17                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	18                              # Abbreviation Code
	.byte	23                              # DW_TAG_union_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	19                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	20                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	21                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	22                              # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	23                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	24                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	25                              # Abbreviation Code
	.byte	21                              # DW_TAG_subroutine_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	26                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	27                              # Abbreviation Code
	.byte	24                              # DW_TAG_unspecified_parameters
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	28                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	29                              # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	28                              # DW_AT_const_value
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	30                              # Abbreviation Code
	.byte	38                              # DW_TAG_const_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	31                              # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	32                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	33                              # Abbreviation Code
	.byte	23                              # DW_TAG_union_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	34                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	13                              # DW_AT_bit_size
	.byte	11                              # DW_FORM_data1
	.byte	107                             # DW_AT_data_bit_offset
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	35                              # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	32                              # DW_AT_inline
	.byte	33                              # DW_FORM_implicit_const
	.byte	1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	36                              # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	37                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	38                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	39                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.ascii	"\210\001"                      # DW_AT_alignment
	.byte	15                              # DW_FORM_udata
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	40                              # Abbreviation Code
	.byte	23                              # DW_TAG_union_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.ascii	"\210\001"                      # DW_AT_alignment
	.byte	15                              # DW_FORM_udata
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	41                              # Abbreviation Code
	.byte	13                              # DW_TAG_member
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	56                              # DW_AT_data_member_location
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	42                              # Abbreviation Code
	.byte	23                              # DW_TAG_union_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	43                              # Abbreviation Code
	.byte	19                              # DW_TAG_structure_type
	.byte	1                               # DW_CHILDREN_yes
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	5                               # DW_FORM_data2
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x84f DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	29                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x27:0x4 DW_TAG_base_type
	.byte	149                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	2                               # Abbrev [2] 0x2b:0x4 DW_TAG_base_type
	.byte	148                             # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # Abbrev [3] 0x2f:0x8b DW_TAG_subprogram
	.byte	3                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	90
                                        # DW_AT_call_all_calls
	.byte	150                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1742                            # DW_AT_type
                                        # DW_AT_external
	.byte	4                               # Abbrev [4] 0x3e:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	186                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	189                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	0
	.byte	5                               # Abbrev [5] 0x49:0x8 DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	211                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	191                             # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x51:0x9 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_location
	.byte	151                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	183                             # DW_AT_decl_line
	.long	1839                            # DW_AT_type
	.byte	7                               # Abbrev [7] 0x5a:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_const_value
	.byte	126                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	185                             # DW_AT_decl_line
	.long	1844                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x63:0x8 DW_TAG_variable
	.byte	140                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.long	2075                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x6b:0x8 DW_TAG_variable
	.byte	142                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	186                             # DW_AT_decl_line
	.long	2075                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x73:0x8 DW_TAG_variable
	.byte	143                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.long	234                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x7b:0x8 DW_TAG_variable
	.byte	144                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	187                             # DW_AT_decl_line
	.long	234                             # DW_AT_type
	.byte	9                               # Abbrev [9] 0x83:0x36 DW_TAG_inlined_subroutine
	.long	1746                            # DW_AT_abstract_origin
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp11-.Ltmp3                  # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	190                             # DW_AT_call_line
	.byte	2                               # DW_AT_call_column
	.byte	10                              # Abbrev [10] 0x90:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	1754                            # DW_AT_abstract_origin
	.byte	11                              # Abbrev [11] 0x97:0x6 DW_TAG_formal_parameter
	.byte	0                               # DW_AT_const_value
	.long	1762                            # DW_AT_abstract_origin
	.byte	12                              # Abbrev [12] 0x9d:0x6 DW_TAG_variable
	.byte	1                               # DW_AT_location
	.long	1802                            # DW_AT_abstract_origin
	.byte	9                               # Abbrev [9] 0xa3:0x15 DW_TAG_inlined_subroutine
	.long	925                             # DW_AT_abstract_origin
	.byte	4                               # DW_AT_low_pc
	.long	.Ltmp6-.Ltmp3                   # DW_AT_high_pc
	.byte	0                               # DW_AT_call_file
	.byte	154                             # DW_AT_call_line
	.byte	33                              # DW_AT_call_column
	.byte	10                              # Abbrev [10] 0xb0:0x7 DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	86
	.long	933                             # DW_AT_abstract_origin
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0xba:0xc DW_TAG_array_type
	.long	198                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0xbf:0x6 DW_TAG_subrange_type
	.long	207                             # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	15                              # Abbrev [15] 0xc6:0x5 DW_TAG_const_type
	.long	203                             # DW_AT_type
	.byte	2                               # Abbrev [2] 0xcb:0x4 DW_TAG_base_type
	.byte	4                               # DW_AT_name
	.byte	6                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	16                              # Abbrev [16] 0xcf:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	7                               # DW_AT_encoding
	.byte	13                              # Abbrev [13] 0xd3:0xc DW_TAG_array_type
	.long	198                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0xd8:0x6 DW_TAG_subrange_type
	.long	207                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	17                              # Abbrev [17] 0xdf:0xb DW_TAG_variable
	.byte	6                               # DW_AT_name
	.long	234                             # DW_AT_type
                                        # DW_AT_external
	.byte	0                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	1
	.byte	18                              # Abbrev [18] 0xea:0x5f DW_TAG_union_type
	.byte	20                              # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0xef:0x8 DW_TAG_member
	.long	247                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0xf7:0x29 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0xfb:0x9 DW_TAG_member
	.byte	7                               # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x104:0x9 DW_TAG_member
	.byte	10                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x10d:0x9 DW_TAG_member
	.byte	11                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x116:0x9 DW_TAG_member
	.byte	12                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	19                              # Abbrev [19] 0x120:0x8 DW_TAG_member
	.long	296                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x128:0x17 DW_TAG_structure_type
	.byte	16                              # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x12c:0x9 DW_TAG_member
	.byte	13                              # DW_AT_name
	.long	341                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x135:0x9 DW_TAG_member
	.byte	16                              # DW_AT_name
	.long	341                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x13f:0x9 DW_TAG_member
	.byte	17                              # DW_AT_name
	.long	353                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	36                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x149:0x8 DW_TAG_typedef
	.long	337                             # DW_AT_type
	.byte	9                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x151:0x4 DW_TAG_base_type
	.byte	8                               # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	22                              # Abbrev [22] 0x155:0x8 DW_TAG_typedef
	.long	349                             # DW_AT_type
	.byte	15                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x15d:0x4 DW_TAG_base_type
	.byte	14                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0x161:0xc DW_TAG_array_type
	.long	365                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x166:0x6 DW_TAG_subrange_type
	.long	207                             # DW_AT_type
	.byte	16                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x16d:0x8 DW_TAG_typedef
	.long	373                             # DW_AT_type
	.byte	19                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x175:0x4 DW_TAG_base_type
	.byte	18                              # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	23                              # Abbrev [23] 0x179:0x9 DW_TAG_variable
	.byte	21                              # DW_AT_name
	.long	386                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	6                               # DW_AT_const_value
	.byte	24                              # Abbrev [24] 0x182:0x5 DW_TAG_pointer_type
	.long	391                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x187:0x11 DW_TAG_subroutine_type
	.long	408                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	26                              # Abbrev [26] 0x18c:0x5 DW_TAG_formal_parameter
	.long	412                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x191:0x5 DW_TAG_formal_parameter
	.long	329                             # DW_AT_type
	.byte	27                              # Abbrev [27] 0x196:0x1 DW_TAG_unspecified_parameters
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x198:0x4 DW_TAG_base_type
	.byte	22                              # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	24                              # Abbrev [24] 0x19c:0x5 DW_TAG_pointer_type
	.long	198                             # DW_AT_type
	.byte	28                              # Abbrev [28] 0x1a1:0x2d DW_TAG_subprogram
	.byte	4                               # Abbrev [4] 0x1a2:0xb DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	462                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	155                             # DW_AT_decl_line
	.byte	2                               # DW_AT_location
	.byte	161
	.byte	2
	.byte	5                               # Abbrev [5] 0x1ad:0x8 DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	474                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	157                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x1b5:0x8 DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	486                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	160                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x1bd:0x8 DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	486                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	166                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x1c5:0x8 DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	486                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	177                             # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1ce:0xc DW_TAG_array_type
	.long	198                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1d3:0x6 DW_TAG_subrange_type
	.long	207                             # DW_AT_type
	.byte	23                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1da:0xc DW_TAG_array_type
	.long	198                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1df:0x6 DW_TAG_subrange_type
	.long	207                             # DW_AT_type
	.byte	24                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x1e6:0xc DW_TAG_array_type
	.long	198                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x1eb:0x6 DW_TAG_subrange_type
	.long	207                             # DW_AT_type
	.byte	5                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	28                              # Abbrev [28] 0x1f2:0x12 DW_TAG_subprogram
	.byte	5                               # Abbrev [5] 0x1f3:0x8 DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	516                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	5                               # Abbrev [5] 0x1fb:0x8 DW_TAG_variable
	.byte	3                               # DW_AT_name
	.long	528                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	140                             # DW_AT_decl_line
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x204:0xc DW_TAG_array_type
	.long	198                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x209:0x6 DW_TAG_subrange_type
	.long	207                             # DW_AT_type
	.byte	17                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x210:0xc DW_TAG_array_type
	.long	198                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x215:0x6 DW_TAG_subrange_type
	.long	207                             # DW_AT_type
	.byte	18                              # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	29                              # Abbrev [29] 0x21c:0xa DW_TAG_variable
	.byte	23                              # DW_AT_name
	.long	550                             # DW_AT_type
	.byte	2                               # DW_AT_decl_file
	.short	719                             # DW_AT_decl_line
	.byte	26                              # DW_AT_const_value
	.byte	24                              # Abbrev [24] 0x226:0x5 DW_TAG_pointer_type
	.long	555                             # DW_AT_type
	.byte	25                              # Abbrev [25] 0x22b:0x1a DW_TAG_subroutine_type
	.long	408                             # DW_AT_type
                                        # DW_AT_prototyped
	.byte	26                              # Abbrev [26] 0x230:0x5 DW_TAG_formal_parameter
	.long	581                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x235:0x5 DW_TAG_formal_parameter
	.long	329                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x23a:0x5 DW_TAG_formal_parameter
	.long	587                             # DW_AT_type
	.byte	26                              # Abbrev [26] 0x23f:0x5 DW_TAG_formal_parameter
	.long	329                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x245:0x5 DW_TAG_pointer_type
	.long	586                             # DW_AT_type
	.byte	30                              # Abbrev [30] 0x24a:0x1 DW_TAG_const_type
	.byte	31                              # Abbrev [31] 0x24b:0x1 DW_TAG_pointer_type
	.byte	24                              # Abbrev [24] 0x24c:0x5 DW_TAG_pointer_type
	.long	365                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x251:0x5 DW_TAG_pointer_type
	.long	598                             # DW_AT_type
	.byte	32                              # Abbrev [32] 0x256:0x65 DW_TAG_structure_type
	.byte	55                              # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	8                               # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x25b:0x9 DW_TAG_member
	.byte	24                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	10                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x264:0x9 DW_TAG_member
	.byte	25                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	11                              # DW_AT_decl_line
	.byte	1                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x26d:0x9 DW_TAG_member
	.byte	26                              # DW_AT_name
	.long	699                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	12                              # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x276:0x9 DW_TAG_member
	.byte	30                              # DW_AT_name
	.long	639                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	63                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	33                              # Abbrev [33] 0x27f:0x3b DW_TAG_union_type
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	15                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x283:0x9 DW_TAG_member
	.byte	31                              # DW_AT_name
	.long	719                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	16                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x28c:0x9 DW_TAG_member
	.byte	33                              # DW_AT_name
	.long	739                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x295:0x9 DW_TAG_member
	.byte	35                              # DW_AT_name
	.long	759                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x29e:0x9 DW_TAG_member
	.byte	36                              # DW_AT_name
	.long	771                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	23                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x2a7:0x9 DW_TAG_member
	.byte	40                              # DW_AT_name
	.long	795                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x2b0:0x9 DW_TAG_member
	.byte	47                              # DW_AT_name
	.long	851                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	61                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x2bb:0x8 DW_TAG_typedef
	.long	707                             # DW_AT_type
	.byte	29                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	22                              # Abbrev [22] 0x2c3:0x8 DW_TAG_typedef
	.long	715                             # DW_AT_type
	.byte	28                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x2cb:0x4 DW_TAG_base_type
	.byte	27                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	2                               # DW_AT_byte_size
	.byte	13                              # Abbrev [13] 0x2cf:0xc DW_TAG_array_type
	.long	731                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x2d4:0x6 DW_TAG_subrange_type
	.long	207                             # DW_AT_type
	.byte	1                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x2db:0x8 DW_TAG_typedef
	.long	329                             # DW_AT_type
	.byte	32                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x2e3:0xc DW_TAG_array_type
	.long	751                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x2e8:0x6 DW_TAG_subrange_type
	.long	207                             # DW_AT_type
	.byte	2                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x2ef:0x8 DW_TAG_typedef
	.long	707                             # DW_AT_type
	.byte	34                              # DW_AT_name
	.byte	4                               # DW_AT_decl_file
	.byte	32                              # DW_AT_decl_line
	.byte	13                              # Abbrev [13] 0x2f7:0xc DW_TAG_array_type
	.long	365                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x2fc:0x6 DW_TAG_subrange_type
	.long	207                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x303:0x18 DW_TAG_structure_type
	.byte	39                              # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x308:0x9 DW_TAG_member
	.byte	37                              # DW_AT_name
	.long	751                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	21                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x311:0x9 DW_TAG_member
	.byte	38                              # DW_AT_name
	.long	751                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x31b:0x38 DW_TAG_structure_type
	.byte	46                              # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	25                              # DW_AT_decl_line
	.byte	34                              # Abbrev [34] 0x320:0xa DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	5                               # DW_AT_bit_size
	.byte	0                               # DW_AT_data_bit_offset
	.byte	34                              # Abbrev [34] 0x32a:0xa DW_TAG_member
	.byte	42                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	28                              # DW_AT_decl_line
	.byte	1                               # DW_AT_bit_size
	.byte	5                               # DW_AT_data_bit_offset
	.byte	34                              # Abbrev [34] 0x334:0xa DW_TAG_member
	.byte	43                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	29                              # DW_AT_decl_line
	.byte	1                               # DW_AT_bit_size
	.byte	6                               # DW_AT_data_bit_offset
	.byte	34                              # Abbrev [34] 0x33e:0xa DW_TAG_member
	.byte	44                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	30                              # DW_AT_decl_line
	.byte	1                               # DW_AT_bit_size
	.byte	7                               # DW_AT_data_bit_offset
	.byte	34                              # Abbrev [34] 0x348:0xa DW_TAG_member
	.byte	45                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	31                              # DW_AT_decl_line
	.byte	24                              # DW_AT_bit_size
	.byte	8                               # DW_AT_data_bit_offset
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x353:0x4a DW_TAG_structure_type
	.byte	54                              # DW_AT_name
	.byte	4                               # DW_AT_byte_size
	.byte	3                               # DW_AT_decl_file
	.byte	42                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x358:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	43                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	34                              # Abbrev [34] 0x361:0xa DW_TAG_member
	.byte	41                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	3                               # DW_AT_bit_size
	.byte	8                               # DW_AT_data_bit_offset
	.byte	34                              # Abbrev [34] 0x36b:0xa DW_TAG_member
	.byte	49                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	46                              # DW_AT_decl_line
	.byte	2                               # DW_AT_bit_size
	.byte	11                              # DW_AT_data_bit_offset
	.byte	34                              # Abbrev [34] 0x375:0xa DW_TAG_member
	.byte	50                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	47                              # DW_AT_decl_line
	.byte	1                               # DW_AT_bit_size
	.byte	13                              # DW_AT_data_bit_offset
	.byte	34                              # Abbrev [34] 0x37f:0xa DW_TAG_member
	.byte	51                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	48                              # DW_AT_decl_line
	.byte	1                               # DW_AT_bit_size
	.byte	14                              # DW_AT_data_bit_offset
	.byte	34                              # Abbrev [34] 0x389:0xa DW_TAG_member
	.byte	52                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	49                              # DW_AT_decl_line
	.byte	1                               # DW_AT_bit_size
	.byte	15                              # DW_AT_data_bit_offset
	.byte	21                              # Abbrev [21] 0x393:0x9 DW_TAG_member
	.byte	53                              # DW_AT_name
	.long	751                             # DW_AT_type
	.byte	3                               # DW_AT_decl_file
	.byte	60                              # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	35                              # Abbrev [35] 0x39d:0x19 DW_TAG_subprogram
	.byte	56                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	587                             # DW_AT_type
                                        # DW_AT_inline
	.byte	36                              # Abbrev [36] 0x3a5:0x8 DW_TAG_formal_parameter
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
	.long	950                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x3ad:0x8 DW_TAG_variable
	.byte	123                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	87                              # DW_AT_decl_line
	.long	587                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x3b6:0x5 DW_TAG_pointer_type
	.long	955                             # DW_AT_type
	.byte	15                              # Abbrev [15] 0x3bb:0x5 DW_TAG_const_type
	.long	960                             # DW_AT_type
	.byte	37                              # Abbrev [37] 0x3c0:0x17d DW_TAG_structure_type
	.byte	122                             # DW_AT_name
	.byte	192                             # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	6128                            # DW_AT_decl_line
	.byte	38                              # Abbrev [38] 0x3c6:0xa DW_TAG_member
	.byte	58                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6129                            # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x3d0:0xa DW_TAG_member
	.byte	59                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6130                            # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x3da:0xa DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6131                            # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x3e4:0xa DW_TAG_member
	.byte	61                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6132                            # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x3ee:0xa DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6133                            # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x3f8:0xa DW_TAG_member
	.byte	63                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6134                            # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x402:0xa DW_TAG_member
	.byte	64                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6135                            # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x40c:0xa DW_TAG_member
	.byte	65                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6136                            # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x416:0xa DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6137                            # DW_AT_decl_line
	.byte	32                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x420:0xa DW_TAG_member
	.byte	67                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6138                            # DW_AT_decl_line
	.byte	36                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x42a:0xa DW_TAG_member
	.byte	68                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6139                            # DW_AT_decl_line
	.byte	40                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x434:0xa DW_TAG_member
	.byte	69                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6140                            # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x43e:0xa DW_TAG_member
	.byte	70                              # DW_AT_name
	.long	1341                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6141                            # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x448:0xa DW_TAG_member
	.byte	71                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6142                            # DW_AT_decl_line
	.byte	68                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x452:0xa DW_TAG_member
	.byte	72                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6143                            # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x45c:0xa DW_TAG_member
	.byte	73                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6144                            # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x466:0xa DW_TAG_member
	.byte	74                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6145                            # DW_AT_decl_line
	.byte	80                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x470:0xa DW_TAG_member
	.byte	75                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6146                            # DW_AT_decl_line
	.byte	84                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x47a:0xa DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6149                            # DW_AT_decl_line
	.byte	88                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x484:0xa DW_TAG_member
	.byte	77                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6150                            # DW_AT_decl_line
	.byte	92                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x48e:0xa DW_TAG_member
	.byte	78                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6151                            # DW_AT_decl_line
	.byte	96                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x498:0xa DW_TAG_member
	.byte	79                              # DW_AT_name
	.long	1353                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6152                            # DW_AT_decl_line
	.byte	100                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x4a2:0xa DW_TAG_member
	.byte	80                              # DW_AT_name
	.long	1353                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6153                            # DW_AT_decl_line
	.byte	116                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x4ac:0xa DW_TAG_member
	.byte	81                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6154                            # DW_AT_decl_line
	.byte	132                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x4b6:0xa DW_TAG_member
	.byte	82                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6155                            # DW_AT_decl_line
	.byte	136                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x4c0:0xa DW_TAG_member
	.byte	83                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6158                            # DW_AT_decl_line
	.byte	140                             # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x4ca:0xa DW_TAG_member
	.long	1236                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6159                            # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	144                             # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x4d4:0x11 DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	6159                            # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	38                              # Abbrev [38] 0x4da:0xa DW_TAG_member
	.byte	84                              # DW_AT_name
	.long	1365                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6159                            # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x4e5:0xa DW_TAG_member
	.byte	102                             # DW_AT_name
	.long	341                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6160                            # DW_AT_decl_line
	.byte	152                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x4ef:0xa DW_TAG_member
	.byte	103                             # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6161                            # DW_AT_decl_line
	.byte	160                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x4f9:0xa DW_TAG_member
	.byte	104                             # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6162                            # DW_AT_decl_line
	.byte	164                             # DW_AT_data_member_location
	.byte	39                              # Abbrev [39] 0x503:0xa DW_TAG_member
	.long	1293                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6163                            # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	168                             # DW_AT_data_member_location
	.byte	40                              # Abbrev [40] 0x50d:0x11 DW_TAG_union_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	6163                            # DW_AT_decl_line
	.byte	8                               # DW_AT_alignment
	.byte	38                              # Abbrev [38] 0x513:0xa DW_TAG_member
	.byte	105                             # DW_AT_name
	.long	1582                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6163                            # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x51e:0xa DW_TAG_member
	.byte	119                             # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6164                            # DW_AT_decl_line
	.byte	176                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x528:0xa DW_TAG_member
	.byte	120                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6165                            # DW_AT_decl_line
	.byte	180                             # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x532:0xa DW_TAG_member
	.byte	121                             # DW_AT_name
	.long	341                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6167                            # DW_AT_decl_line
	.byte	184                             # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x53d:0xc DW_TAG_array_type
	.long	329                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x542:0x6 DW_TAG_subrange_type
	.long	207                             # DW_AT_type
	.byte	5                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x549:0xc DW_TAG_array_type
	.long	329                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x54e:0x6 DW_TAG_subrange_type
	.long	207                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x555:0x5 DW_TAG_pointer_type
	.long	1370                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0x55a:0xd4 DW_TAG_structure_type
	.byte	101                             # DW_AT_name
	.byte	56                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	7145                            # DW_AT_decl_line
	.byte	38                              # Abbrev [38] 0x560:0xa DW_TAG_member
	.byte	85                              # DW_AT_name
	.long	707                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	7146                            # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x56a:0xa DW_TAG_member
	.byte	86                              # DW_AT_name
	.long	707                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	7147                            # DW_AT_decl_line
	.byte	2                               # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x574:0xa DW_TAG_member
	.byte	87                              # DW_AT_name
	.long	707                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	7148                            # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x57e:0xa DW_TAG_member
	.byte	88                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	7149                            # DW_AT_decl_line
	.byte	6                               # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x588:0xa DW_TAG_member
	.byte	89                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	7150                            # DW_AT_decl_line
	.byte	7                               # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x592:0xa DW_TAG_member
	.byte	90                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	7151                            # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x59c:0xa DW_TAG_member
	.byte	91                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	7152                            # DW_AT_decl_line
	.byte	9                               # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x5a6:0xa DW_TAG_member
	.byte	92                              # DW_AT_name
	.long	751                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	7153                            # DW_AT_decl_line
	.byte	10                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x5b0:0xa DW_TAG_member
	.byte	93                              # DW_AT_name
	.long	751                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	7154                            # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x5ba:0xa DW_TAG_member
	.byte	94                              # DW_AT_name
	.long	751                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	7155                            # DW_AT_decl_line
	.byte	14                              # DW_AT_data_member_location
	.byte	41                              # Abbrev [41] 0x5c4:0x9 DW_TAG_member
	.long	1485                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	7156                            # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	42                              # Abbrev [42] 0x5cd:0x4c DW_TAG_union_type
	.byte	32                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	7156                            # DW_AT_decl_line
	.byte	41                              # Abbrev [41] 0x5d2:0x9 DW_TAG_member
	.long	1499                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	7157                            # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x5db:0x1a DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	7157                            # DW_AT_decl_line
	.byte	38                              # Abbrev [38] 0x5e0:0xa DW_TAG_member
	.byte	95                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	7158                            # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x5ea:0xa DW_TAG_member
	.byte	96                              # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	7159                            # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	41                              # Abbrev [41] 0x5f5:0x9 DW_TAG_member
	.long	1534                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	7161                            # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	43                              # Abbrev [43] 0x5fe:0x1a DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	7161                            # DW_AT_decl_line
	.byte	38                              # Abbrev [38] 0x603:0xa DW_TAG_member
	.byte	97                              # DW_AT_name
	.long	1353                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	7162                            # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x60d:0xa DW_TAG_member
	.byte	98                              # DW_AT_name
	.long	1353                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	7163                            # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	38                              # Abbrev [38] 0x619:0xa DW_TAG_member
	.byte	99                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	7166                            # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x623:0xa DW_TAG_member
	.byte	100                             # DW_AT_name
	.long	731                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	7167                            # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x62e:0x5 DW_TAG_pointer_type
	.long	1587                            # DW_AT_type
	.byte	37                              # Abbrev [37] 0x633:0x93 DW_TAG_structure_type
	.byte	118                             # DW_AT_name
	.byte	80                              # DW_AT_byte_size
	.byte	5                               # DW_AT_decl_file
	.short	6232                            # DW_AT_decl_line
	.byte	38                              # Abbrev [38] 0x639:0xa DW_TAG_member
	.byte	106                             # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6233                            # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x643:0xa DW_TAG_member
	.byte	76                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6234                            # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x64d:0xa DW_TAG_member
	.byte	107                             # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6235                            # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x657:0xa DW_TAG_member
	.byte	62                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6236                            # DW_AT_decl_line
	.byte	12                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x661:0xa DW_TAG_member
	.byte	60                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6237                            # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x66b:0xa DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6238                            # DW_AT_decl_line
	.byte	20                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x675:0xa DW_TAG_member
	.byte	108                             # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6240                            # DW_AT_decl_line
	.byte	24                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x67f:0xa DW_TAG_member
	.byte	109                             # DW_AT_name
	.long	1353                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6241                            # DW_AT_decl_line
	.byte	28                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x689:0xa DW_TAG_member
	.byte	110                             # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6242                            # DW_AT_decl_line
	.byte	44                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x693:0xa DW_TAG_member
	.byte	111                             # DW_AT_name
	.long	751                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6243                            # DW_AT_decl_line
	.byte	48                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x69d:0xa DW_TAG_member
	.byte	112                             # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6245                            # DW_AT_decl_line
	.byte	52                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x6a7:0xa DW_TAG_member
	.byte	113                             # DW_AT_name
	.long	1353                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6246                            # DW_AT_decl_line
	.byte	56                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x6b1:0xa DW_TAG_member
	.byte	114                             # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6247                            # DW_AT_decl_line
	.byte	72                              # DW_AT_data_member_location
	.byte	38                              # Abbrev [38] 0x6bb:0xa DW_TAG_member
	.byte	115                             # DW_AT_name
	.long	1734                            # DW_AT_type
	.byte	5                               # DW_AT_decl_file
	.short	6248                            # DW_AT_decl_line
	.byte	76                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	22                              # Abbrev [22] 0x6c6:0x8 DW_TAG_typedef
	.long	1742                            # DW_AT_type
	.byte	117                             # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	26                              # DW_AT_decl_line
	.byte	2                               # Abbrev [2] 0x6ce:0x4 DW_TAG_base_type
	.byte	116                             # DW_AT_name
	.byte	5                               # DW_AT_encoding
	.byte	4                               # DW_AT_byte_size
	.byte	35                              # Abbrev [35] 0x6d2:0x59 DW_TAG_subprogram
	.byte	124                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	1835                            # DW_AT_type
                                        # DW_AT_inline
	.byte	36                              # Abbrev [36] 0x6da:0x8 DW_TAG_formal_parameter
	.byte	57                              # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.long	1839                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x6e2:0x8 DW_TAG_formal_parameter
	.byte	126                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	146                             # DW_AT_decl_line
	.long	1844                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x6ea:0x8 DW_TAG_formal_parameter
	.byte	140                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.long	2070                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x6f2:0x8 DW_TAG_formal_parameter
	.byte	142                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	147                             # DW_AT_decl_line
	.long	2070                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x6fa:0x8 DW_TAG_formal_parameter
	.byte	143                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.long	2133                            # DW_AT_type
	.byte	36                              # Abbrev [36] 0x702:0x8 DW_TAG_formal_parameter
	.byte	144                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	148                             # DW_AT_decl_line
	.long	2133                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x70a:0x8 DW_TAG_variable
	.byte	145                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.long	1742                            # DW_AT_type
	.byte	8                               # Abbrev [8] 0x712:0x8 DW_TAG_variable
	.byte	130                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	150                             # DW_AT_decl_line
	.long	365                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x71a:0x8 DW_TAG_variable
	.byte	146                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	151                             # DW_AT_decl_line
	.long	593                             # DW_AT_type
	.byte	8                               # Abbrev [8] 0x722:0x8 DW_TAG_variable
	.byte	147                             # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	152                             # DW_AT_decl_line
	.long	1742                            # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	2                               # Abbrev [2] 0x72b:0x4 DW_TAG_base_type
	.byte	125                             # DW_AT_name
	.byte	2                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	24                              # Abbrev [24] 0x72f:0x5 DW_TAG_pointer_type
	.long	960                             # DW_AT_type
	.byte	24                              # Abbrev [24] 0x734:0x5 DW_TAG_pointer_type
	.long	1849                            # DW_AT_type
	.byte	32                              # Abbrev [32] 0x739:0x8a DW_TAG_structure_type
	.byte	139                             # DW_AT_name
	.byte	40                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	118                             # DW_AT_decl_line
	.byte	34                              # Abbrev [34] 0x73e:0xa DW_TAG_member
	.byte	66                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	120                             # DW_AT_decl_line
	.byte	4                               # DW_AT_bit_size
	.byte	0                               # DW_AT_data_bit_offset
	.byte	34                              # Abbrev [34] 0x748:0xa DW_TAG_member
	.byte	127                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	121                             # DW_AT_decl_line
	.byte	4                               # DW_AT_bit_size
	.byte	4                               # DW_AT_data_bit_offset
	.byte	21                              # Abbrev [21] 0x752:0x9 DW_TAG_member
	.byte	128                             # DW_AT_name
	.long	1987                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	128                             # DW_AT_decl_line
	.byte	1                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x75b:0x9 DW_TAG_member
	.byte	129                             # DW_AT_name
	.long	751                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	130                             # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x764:0x9 DW_TAG_member
	.byte	130                             # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	131                             # DW_AT_decl_line
	.byte	6                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x76d:0x9 DW_TAG_member
	.byte	48                              # DW_AT_name
	.long	365                             # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	132                             # DW_AT_decl_line
	.byte	7                               # DW_AT_data_member_location
	.byte	19                              # Abbrev [19] 0x776:0x8 DW_TAG_member
	.long	1918                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	8                               # DW_AT_data_member_location
	.byte	33                              # Abbrev [33] 0x77e:0x44 DW_TAG_union_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x782:0x8 DW_TAG_member
	.long	1930                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x78a:0x17 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x78e:0x9 DW_TAG_member
	.byte	131                             # DW_AT_name
	.long	1999                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x797:0x9 DW_TAG_member
	.byte	137                             # DW_AT_name
	.long	1999                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x7a1:0x9 DW_TAG_member
	.byte	138                             # DW_AT_name
	.long	1962                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x7aa:0x17 DW_TAG_structure_type
	.byte	32                              # DW_AT_byte_size
	.byte	6                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x7ae:0x9 DW_TAG_member
	.byte	131                             # DW_AT_name
	.long	1999                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x7b7:0x9 DW_TAG_member
	.byte	137                             # DW_AT_name
	.long	1999                            # DW_AT_type
	.byte	6                               # DW_AT_decl_file
	.byte	134                             # DW_AT_decl_line
	.byte	16                              # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x7c3:0xc DW_TAG_array_type
	.long	365                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x7c8:0x6 DW_TAG_subrange_type
	.long	207                             # DW_AT_type
	.byte	3                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	32                              # Abbrev [32] 0x7cf:0x2f DW_TAG_structure_type
	.byte	136                             # DW_AT_name
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	33                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x7d4:0x9 DW_TAG_member
	.byte	132                             # DW_AT_name
	.long	2013                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	40                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	33                              # Abbrev [33] 0x7dd:0x20 DW_TAG_union_type
	.byte	16                              # DW_AT_byte_size
	.byte	7                               # DW_AT_decl_file
	.byte	34                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x7e1:0x9 DW_TAG_member
	.byte	133                             # DW_AT_name
	.long	353                             # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	35                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x7ea:0x9 DW_TAG_member
	.byte	134                             # DW_AT_name
	.long	2046                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	37                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x7f3:0x9 DW_TAG_member
	.byte	135                             # DW_AT_name
	.long	2058                            # DW_AT_type
	.byte	7                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x7fe:0xc DW_TAG_array_type
	.long	751                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x803:0x6 DW_TAG_subrange_type
	.long	207                             # DW_AT_type
	.byte	8                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x80a:0xc DW_TAG_array_type
	.long	731                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x80f:0x6 DW_TAG_subrange_type
	.long	207                             # DW_AT_type
	.byte	4                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x816:0x5 DW_TAG_pointer_type
	.long	2075                            # DW_AT_type
	.byte	18                              # Abbrev [18] 0x81b:0x2e DW_TAG_union_type
	.byte	141                             # DW_AT_name
	.byte	8                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	17                              # DW_AT_decl_line
	.byte	19                              # Abbrev [19] 0x820:0x8 DW_TAG_member
	.long	2088                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	20                              # Abbrev [20] 0x828:0x17 DW_TAG_structure_type
	.byte	8                               # DW_AT_byte_size
	.byte	0                               # DW_AT_decl_file
	.byte	18                              # DW_AT_decl_line
	.byte	21                              # Abbrev [21] 0x82c:0x9 DW_TAG_member
	.byte	7                               # DW_AT_name
	.long	329                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	19                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	21                              # Abbrev [21] 0x835:0x9 DW_TAG_member
	.byte	10                              # DW_AT_name
	.long	707                             # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	20                              # DW_AT_decl_line
	.byte	4                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	21                              # Abbrev [21] 0x83f:0x9 DW_TAG_member
	.byte	17                              # DW_AT_name
	.long	2121                            # DW_AT_type
	.byte	0                               # DW_AT_decl_file
	.byte	22                              # DW_AT_decl_line
	.byte	0                               # DW_AT_data_member_location
	.byte	0                               # End Of Children Mark
	.byte	13                              # Abbrev [13] 0x849:0xc DW_TAG_array_type
	.long	365                             # DW_AT_type
	.byte	14                              # Abbrev [14] 0x84e:0x6 DW_TAG_subrange_type
	.long	207                             # DW_AT_type
	.byte	6                               # DW_AT_count
	.byte	0                               # End Of Children Mark
	.byte	24                              # Abbrev [24] 0x855:0x5 DW_TAG_pointer_type
	.long	234                             # DW_AT_type
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	612                             # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 18.1.3 (1ubuntu1)" # string offset=0
.Linfo_string1:
	.asciz	"test.c"                        # string offset=39
.Linfo_string2:
	.asciz	"/home/msuneclo/dev/clang_bug_pragma_unroll" # string offset=46
.Linfo_string3:
	.asciz	"____fmt"                       # string offset=89
.Linfo_string4:
	.asciz	"char"                          # string offset=97
.Linfo_string5:
	.asciz	"__ARRAY_SIZE_TYPE__"           # string offset=102
.Linfo_string6:
	.asciz	"__packed"                      # string offset=122
.Linfo_string7:
	.asciz	"p1"                            # string offset=131
.Linfo_string8:
	.asciz	"unsigned int"                  # string offset=134
.Linfo_string9:
	.asciz	"__u32"                         # string offset=147
.Linfo_string10:
	.asciz	"p2"                            # string offset=153
.Linfo_string11:
	.asciz	"p3"                            # string offset=156
.Linfo_string12:
	.asciz	"p4"                            # string offset=159
.Linfo_string13:
	.asciz	"d1"                            # string offset=162
.Linfo_string14:
	.asciz	"unsigned long long"            # string offset=165
.Linfo_string15:
	.asciz	"__u64"                         # string offset=184
.Linfo_string16:
	.asciz	"d2"                            # string offset=190
.Linfo_string17:
	.asciz	"addr"                          # string offset=193
.Linfo_string18:
	.asciz	"unsigned char"                 # string offset=198
.Linfo_string19:
	.asciz	"__u8"                          # string offset=212
.Linfo_string20:
	.asciz	"v6addr"                        # string offset=217
.Linfo_string21:
	.asciz	"bpf_trace_printk"              # string offset=224
.Linfo_string22:
	.asciz	"long"                          # string offset=241
.Linfo_string23:
	.asciz	"bpf_skb_load_bytes"            # string offset=246
.Linfo_string24:
	.asciz	"icmp6_type"                    # string offset=265
.Linfo_string25:
	.asciz	"icmp6_code"                    # string offset=276
.Linfo_string26:
	.asciz	"icmp6_cksum"                   # string offset=287
.Linfo_string27:
	.asciz	"unsigned short"                # string offset=299
.Linfo_string28:
	.asciz	"__u16"                         # string offset=314
.Linfo_string29:
	.asciz	"__sum16"                       # string offset=320
.Linfo_string30:
	.asciz	"icmp6_dataun"                  # string offset=328
.Linfo_string31:
	.asciz	"un_data32"                     # string offset=341
.Linfo_string32:
	.asciz	"__be32"                        # string offset=351
.Linfo_string33:
	.asciz	"un_data16"                     # string offset=358
.Linfo_string34:
	.asciz	"__be16"                        # string offset=368
.Linfo_string35:
	.asciz	"un_data8"                      # string offset=375
.Linfo_string36:
	.asciz	"u_echo"                        # string offset=384
.Linfo_string37:
	.asciz	"identifier"                    # string offset=391
.Linfo_string38:
	.asciz	"sequence"                      # string offset=402
.Linfo_string39:
	.asciz	"icmpv6_echo"                   # string offset=411
.Linfo_string40:
	.asciz	"u_nd_advt"                     # string offset=423
.Linfo_string41:
	.asciz	"reserved"                      # string offset=433
.Linfo_string42:
	.asciz	"override"                      # string offset=442
.Linfo_string43:
	.asciz	"solicited"                     # string offset=451
.Linfo_string44:
	.asciz	"router"                        # string offset=461
.Linfo_string45:
	.asciz	"reserved2"                     # string offset=468
.Linfo_string46:
	.asciz	"icmpv6_nd_advt"                # string offset=478
.Linfo_string47:
	.asciz	"u_nd_ra"                       # string offset=493
.Linfo_string48:
	.asciz	"hop_limit"                     # string offset=501
.Linfo_string49:
	.asciz	"router_pref"                   # string offset=511
.Linfo_string50:
	.asciz	"home_agent"                    # string offset=523
.Linfo_string51:
	.asciz	"other"                         # string offset=534
.Linfo_string52:
	.asciz	"managed"                       # string offset=540
.Linfo_string53:
	.asciz	"rt_lifetime"                   # string offset=548
.Linfo_string54:
	.asciz	"icmpv6_nd_ra"                  # string offset=560
.Linfo_string55:
	.asciz	"icmp6hdr"                      # string offset=573
.Linfo_string56:
	.asciz	"ctx_data"                      # string offset=582
.Linfo_string57:
	.asciz	"ctx"                           # string offset=591
.Linfo_string58:
	.asciz	"len"                           # string offset=595
.Linfo_string59:
	.asciz	"pkt_type"                      # string offset=599
.Linfo_string60:
	.asciz	"mark"                          # string offset=608
.Linfo_string61:
	.asciz	"queue_mapping"                 # string offset=613
.Linfo_string62:
	.asciz	"protocol"                      # string offset=627
.Linfo_string63:
	.asciz	"vlan_present"                  # string offset=636
.Linfo_string64:
	.asciz	"vlan_tci"                      # string offset=649
.Linfo_string65:
	.asciz	"vlan_proto"                    # string offset=658
.Linfo_string66:
	.asciz	"priority"                      # string offset=669
.Linfo_string67:
	.asciz	"ingress_ifindex"               # string offset=678
.Linfo_string68:
	.asciz	"ifindex"                       # string offset=694
.Linfo_string69:
	.asciz	"tc_index"                      # string offset=702
.Linfo_string70:
	.asciz	"cb"                            # string offset=711
.Linfo_string71:
	.asciz	"hash"                          # string offset=714
.Linfo_string72:
	.asciz	"tc_classid"                    # string offset=719
.Linfo_string73:
	.asciz	"data"                          # string offset=730
.Linfo_string74:
	.asciz	"data_end"                      # string offset=735
.Linfo_string75:
	.asciz	"napi_id"                       # string offset=744
.Linfo_string76:
	.asciz	"family"                        # string offset=752
.Linfo_string77:
	.asciz	"remote_ip4"                    # string offset=759
.Linfo_string78:
	.asciz	"local_ip4"                     # string offset=770
.Linfo_string79:
	.asciz	"remote_ip6"                    # string offset=780
.Linfo_string80:
	.asciz	"local_ip6"                     # string offset=791
.Linfo_string81:
	.asciz	"remote_port"                   # string offset=801
.Linfo_string82:
	.asciz	"local_port"                    # string offset=813
.Linfo_string83:
	.asciz	"data_meta"                     # string offset=824
.Linfo_string84:
	.asciz	"flow_keys"                     # string offset=834
.Linfo_string85:
	.asciz	"nhoff"                         # string offset=844
.Linfo_string86:
	.asciz	"thoff"                         # string offset=850
.Linfo_string87:
	.asciz	"addr_proto"                    # string offset=856
.Linfo_string88:
	.asciz	"is_frag"                       # string offset=867
.Linfo_string89:
	.asciz	"is_first_frag"                 # string offset=875
.Linfo_string90:
	.asciz	"is_encap"                      # string offset=889
.Linfo_string91:
	.asciz	"ip_proto"                      # string offset=898
.Linfo_string92:
	.asciz	"n_proto"                       # string offset=907
.Linfo_string93:
	.asciz	"sport"                         # string offset=915
.Linfo_string94:
	.asciz	"dport"                         # string offset=921
.Linfo_string95:
	.asciz	"ipv4_src"                      # string offset=927
.Linfo_string96:
	.asciz	"ipv4_dst"                      # string offset=936
.Linfo_string97:
	.asciz	"ipv6_src"                      # string offset=945
.Linfo_string98:
	.asciz	"ipv6_dst"                      # string offset=954
.Linfo_string99:
	.asciz	"flags"                         # string offset=963
.Linfo_string100:
	.asciz	"flow_label"                    # string offset=969
.Linfo_string101:
	.asciz	"bpf_flow_keys"                 # string offset=980
.Linfo_string102:
	.asciz	"tstamp"                        # string offset=994
.Linfo_string103:
	.asciz	"wire_len"                      # string offset=1001
.Linfo_string104:
	.asciz	"gso_segs"                      # string offset=1010
.Linfo_string105:
	.asciz	"sk"                            # string offset=1019
.Linfo_string106:
	.asciz	"bound_dev_if"                  # string offset=1022
.Linfo_string107:
	.asciz	"type"                          # string offset=1035
.Linfo_string108:
	.asciz	"src_ip4"                       # string offset=1040
.Linfo_string109:
	.asciz	"src_ip6"                       # string offset=1048
.Linfo_string110:
	.asciz	"src_port"                      # string offset=1056
.Linfo_string111:
	.asciz	"dst_port"                      # string offset=1065
.Linfo_string112:
	.asciz	"dst_ip4"                       # string offset=1074
.Linfo_string113:
	.asciz	"dst_ip6"                       # string offset=1082
.Linfo_string114:
	.asciz	"state"                         # string offset=1090
.Linfo_string115:
	.asciz	"rx_queue_mapping"              # string offset=1096
.Linfo_string116:
	.asciz	"int"                           # string offset=1113
.Linfo_string117:
	.asciz	"__s32"                         # string offset=1117
.Linfo_string118:
	.asciz	"bpf_sock"                      # string offset=1123
.Linfo_string119:
	.asciz	"gso_size"                      # string offset=1132
.Linfo_string120:
	.asciz	"tstamp_type"                   # string offset=1141
.Linfo_string121:
	.asciz	"hwtstamp"                      # string offset=1153
.Linfo_string122:
	.asciz	"__sk_buff"                     # string offset=1162
.Linfo_string123:
	.asciz	"ptr"                           # string offset=1172
.Linfo_string124:
	.asciz	"icmp6_ndisc_validate"          # string offset=1176
.Linfo_string125:
	.asciz	"_Bool"                         # string offset=1197
.Linfo_string126:
	.asciz	"ip6"                           # string offset=1203
.Linfo_string127:
	.asciz	"version"                       # string offset=1207
.Linfo_string128:
	.asciz	"flow_lbl"                      # string offset=1215
.Linfo_string129:
	.asciz	"payload_len"                   # string offset=1224
.Linfo_string130:
	.asciz	"nexthdr"                       # string offset=1236
.Linfo_string131:
	.asciz	"saddr"                         # string offset=1244
.Linfo_string132:
	.asciz	"in6_u"                         # string offset=1250
.Linfo_string133:
	.asciz	"u6_addr8"                      # string offset=1256
.Linfo_string134:
	.asciz	"u6_addr16"                     # string offset=1265
.Linfo_string135:
	.asciz	"u6_addr32"                     # string offset=1275
.Linfo_string136:
	.asciz	"in6_addr"                      # string offset=1285
.Linfo_string137:
	.asciz	"daddr"                         # string offset=1294
.Linfo_string138:
	.asciz	"addrs"                         # string offset=1300
.Linfo_string139:
	.asciz	"ipv6hdr"                       # string offset=1306
.Linfo_string140:
	.asciz	"mac"                           # string offset=1314
.Linfo_string141:
	.asciz	"macaddr"                       # string offset=1318
.Linfo_string142:
	.asciz	"smac"                          # string offset=1326
.Linfo_string143:
	.asciz	"sip"                           # string offset=1331
.Linfo_string144:
	.asciz	"tip"                           # string offset=1335
.Linfo_string145:
	.asciz	"l3_off"                        # string offset=1339
.Linfo_string146:
	.asciz	"icmp"                          # string offset=1346
.Linfo_string147:
	.asciz	"l4_off"                        # string offset=1351
.Linfo_string148:
	.asciz	"DW_ATE_unsigned_32"            # string offset=1358
.Linfo_string149:
	.asciz	"DW_ATE_unsigned_64"            # string offset=1377
.Linfo_string150:
	.asciz	"repro"                         # string offset=1396
.Linfo_string151:
	.asciz	"skb"                           # string offset=1402
	.section	.debug_str_offsets,"",@progbits
	.long	.Linfo_string0
	.long	.Linfo_string1
	.long	.Linfo_string2
	.long	.Linfo_string3
	.long	.Linfo_string4
	.long	.Linfo_string5
	.long	.Linfo_string6
	.long	.Linfo_string7
	.long	.Linfo_string8
	.long	.Linfo_string9
	.long	.Linfo_string10
	.long	.Linfo_string11
	.long	.Linfo_string12
	.long	.Linfo_string13
	.long	.Linfo_string14
	.long	.Linfo_string15
	.long	.Linfo_string16
	.long	.Linfo_string17
	.long	.Linfo_string18
	.long	.Linfo_string19
	.long	.Linfo_string20
	.long	.Linfo_string21
	.long	.Linfo_string22
	.long	.Linfo_string23
	.long	.Linfo_string24
	.long	.Linfo_string25
	.long	.Linfo_string26
	.long	.Linfo_string27
	.long	.Linfo_string28
	.long	.Linfo_string29
	.long	.Linfo_string30
	.long	.Linfo_string31
	.long	.Linfo_string32
	.long	.Linfo_string33
	.long	.Linfo_string34
	.long	.Linfo_string35
	.long	.Linfo_string36
	.long	.Linfo_string37
	.long	.Linfo_string38
	.long	.Linfo_string39
	.long	.Linfo_string40
	.long	.Linfo_string41
	.long	.Linfo_string42
	.long	.Linfo_string43
	.long	.Linfo_string44
	.long	.Linfo_string45
	.long	.Linfo_string46
	.long	.Linfo_string47
	.long	.Linfo_string48
	.long	.Linfo_string49
	.long	.Linfo_string50
	.long	.Linfo_string51
	.long	.Linfo_string52
	.long	.Linfo_string53
	.long	.Linfo_string54
	.long	.Linfo_string55
	.long	.Linfo_string56
	.long	.Linfo_string57
	.long	.Linfo_string58
	.long	.Linfo_string59
	.long	.Linfo_string60
	.long	.Linfo_string61
	.long	.Linfo_string62
	.long	.Linfo_string63
	.long	.Linfo_string64
	.long	.Linfo_string65
	.long	.Linfo_string66
	.long	.Linfo_string67
	.long	.Linfo_string68
	.long	.Linfo_string69
	.long	.Linfo_string70
	.long	.Linfo_string71
	.long	.Linfo_string72
	.long	.Linfo_string73
	.long	.Linfo_string74
	.long	.Linfo_string75
	.long	.Linfo_string76
	.long	.Linfo_string77
	.long	.Linfo_string78
	.long	.Linfo_string79
	.long	.Linfo_string80
	.long	.Linfo_string81
	.long	.Linfo_string82
	.long	.Linfo_string83
	.long	.Linfo_string84
	.long	.Linfo_string85
	.long	.Linfo_string86
	.long	.Linfo_string87
	.long	.Linfo_string88
	.long	.Linfo_string89
	.long	.Linfo_string90
	.long	.Linfo_string91
	.long	.Linfo_string92
	.long	.Linfo_string93
	.long	.Linfo_string94
	.long	.Linfo_string95
	.long	.Linfo_string96
	.long	.Linfo_string97
	.long	.Linfo_string98
	.long	.Linfo_string99
	.long	.Linfo_string100
	.long	.Linfo_string101
	.long	.Linfo_string102
	.long	.Linfo_string103
	.long	.Linfo_string104
	.long	.Linfo_string105
	.long	.Linfo_string106
	.long	.Linfo_string107
	.long	.Linfo_string108
	.long	.Linfo_string109
	.long	.Linfo_string110
	.long	.Linfo_string111
	.long	.Linfo_string112
	.long	.Linfo_string113
	.long	.Linfo_string114
	.long	.Linfo_string115
	.long	.Linfo_string116
	.long	.Linfo_string117
	.long	.Linfo_string118
	.long	.Linfo_string119
	.long	.Linfo_string120
	.long	.Linfo_string121
	.long	.Linfo_string122
	.long	.Linfo_string123
	.long	.Linfo_string124
	.long	.Linfo_string125
	.long	.Linfo_string126
	.long	.Linfo_string127
	.long	.Linfo_string128
	.long	.Linfo_string129
	.long	.Linfo_string130
	.long	.Linfo_string131
	.long	.Linfo_string132
	.long	.Linfo_string133
	.long	.Linfo_string134
	.long	.Linfo_string135
	.long	.Linfo_string136
	.long	.Linfo_string137
	.long	.Linfo_string138
	.long	.Linfo_string139
	.long	.Linfo_string140
	.long	.Linfo_string141
	.long	.Linfo_string142
	.long	.Linfo_string143
	.long	.Linfo_string144
	.long	.Linfo_string145
	.long	.Linfo_string146
	.long	.Linfo_string147
	.long	.Linfo_string148
	.long	.Linfo_string149
	.long	.Linfo_string150
	.long	.Linfo_string151
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	repro.____fmt
	.quad	__packed
	.quad	icmp6_ndisc_validate.____fmt
	.quad	.Lfunc_begin0
	.quad	.Ltmp3
.Ldebug_addr_end0:
	.section	.BTF,"",@progbits
	.short	60319                           # 0xeb9f
	.byte	1
	.byte	0
	.long	24
	.long	0
	.long	1076
	.long	1076
	.long	723
	.long	0                               # BTF_KIND_PTR(id = 1)
	.long	33554432                        # 0x2000000
	.long	2
	.long	1                               # BTF_KIND_STRUCT(id = 2)
	.long	67108898                        # 0x4000022
	.long	192
	.long	11
	.long	3
	.long	0                               # 0x0
	.long	15
	.long	3
	.long	32                              # 0x20
	.long	24
	.long	3
	.long	64                              # 0x40
	.long	29
	.long	3
	.long	96                              # 0x60
	.long	43
	.long	3
	.long	128                             # 0x80
	.long	52
	.long	3
	.long	160                             # 0xa0
	.long	65
	.long	3
	.long	192                             # 0xc0
	.long	74
	.long	3
	.long	224                             # 0xe0
	.long	85
	.long	3
	.long	256                             # 0x100
	.long	94
	.long	3
	.long	288                             # 0x120
	.long	110
	.long	3
	.long	320                             # 0x140
	.long	118
	.long	3
	.long	352                             # 0x160
	.long	127
	.long	5
	.long	384                             # 0x180
	.long	130
	.long	3
	.long	544                             # 0x220
	.long	135
	.long	3
	.long	576                             # 0x240
	.long	146
	.long	3
	.long	608                             # 0x260
	.long	151
	.long	3
	.long	640                             # 0x280
	.long	160
	.long	3
	.long	672                             # 0x2a0
	.long	168
	.long	3
	.long	704                             # 0x2c0
	.long	175
	.long	3
	.long	736                             # 0x2e0
	.long	186
	.long	3
	.long	768                             # 0x300
	.long	196
	.long	7
	.long	800                             # 0x320
	.long	207
	.long	7
	.long	928                             # 0x3a0
	.long	217
	.long	3
	.long	1056                            # 0x420
	.long	229
	.long	3
	.long	1088                            # 0x440
	.long	240
	.long	3
	.long	1120                            # 0x460
	.long	0
	.long	8
	.long	1152                            # 0x480
	.long	250
	.long	10
	.long	1216                            # 0x4c0
	.long	257
	.long	3
	.long	1280                            # 0x500
	.long	266
	.long	3
	.long	1312                            # 0x520
	.long	0
	.long	12
	.long	1344                            # 0x540
	.long	275
	.long	3
	.long	1408                            # 0x580
	.long	284
	.long	14
	.long	1440                            # 0x5a0
	.long	296
	.long	10
	.long	1472                            # 0x5c0
	.long	305                             # BTF_KIND_TYPEDEF(id = 3)
	.long	134217728                       # 0x8000000
	.long	4
	.long	311                             # BTF_KIND_INT(id = 4)
	.long	16777216                        # 0x1000000
	.long	4
	.long	32                              # 0x20
	.long	0                               # BTF_KIND_ARRAY(id = 5)
	.long	50331648                        # 0x3000000
	.long	0
	.long	3
	.long	6
	.long	5
	.long	324                             # BTF_KIND_INT(id = 6)
	.long	16777216                        # 0x1000000
	.long	4
	.long	32                              # 0x20
	.long	0                               # BTF_KIND_ARRAY(id = 7)
	.long	50331648                        # 0x3000000
	.long	0
	.long	3
	.long	6
	.long	4
	.long	0                               # BTF_KIND_UNION(id = 8)
	.long	83886081                        # 0x5000001
	.long	8
	.long	344
	.long	9
	.long	0                               # 0x0
	.long	0                               # BTF_KIND_PTR(id = 9)
	.long	33554432                        # 0x2000000
	.long	32
	.long	354                             # BTF_KIND_TYPEDEF(id = 10)
	.long	134217728                       # 0x8000000
	.long	11
	.long	360                             # BTF_KIND_INT(id = 11)
	.long	16777216                        # 0x1000000
	.long	8
	.long	64                              # 0x40
	.long	0                               # BTF_KIND_UNION(id = 12)
	.long	83886081                        # 0x5000001
	.long	8
	.long	379
	.long	13
	.long	0                               # 0x0
	.long	0                               # BTF_KIND_PTR(id = 13)
	.long	33554432                        # 0x2000000
	.long	33
	.long	382                             # BTF_KIND_TYPEDEF(id = 14)
	.long	134217728                       # 0x8000000
	.long	15
	.long	387                             # BTF_KIND_INT(id = 15)
	.long	16777216                        # 0x1000000
	.long	1
	.long	8                               # 0x8
	.long	0                               # BTF_KIND_FUNC_PROTO(id = 16)
	.long	218103809                       # 0xd000001
	.long	17
	.long	401
	.long	1
	.long	405                             # BTF_KIND_INT(id = 17)
	.long	16777216                        # 0x1000000
	.long	4
	.long	16777248                        # 0x1000020
	.long	409                             # BTF_KIND_FUNC(id = 18)
	.long	201326593                       # 0xc000001
	.long	16
	.long	0                               # BTF_KIND_CONST(id = 19)
	.long	167772160                       # 0xa000000
	.long	20
	.long	600                             # BTF_KIND_INT(id = 20)
	.long	16777216                        # 0x1000000
	.long	1
	.long	16777224                        # 0x1000008
	.long	0                               # BTF_KIND_ARRAY(id = 21)
	.long	50331648                        # 0x3000000
	.long	0
	.long	19
	.long	6
	.long	6
	.long	605                             # BTF_KIND_VAR(id = 22)
	.long	234881024                       # 0xe000000
	.long	21
	.long	0
	.long	619                             # BTF_KIND_UNION(id = 23)
	.long	83886083                        # 0x5000003
	.long	16
	.long	0
	.long	24
	.long	0                               # 0x0
	.long	0
	.long	25
	.long	0                               # 0x0
	.long	626
	.long	26
	.long	0                               # 0x0
	.long	0                               # BTF_KIND_STRUCT(id = 24)
	.long	67108868                        # 0x4000004
	.long	16
	.long	631
	.long	3
	.long	0                               # 0x0
	.long	634
	.long	3
	.long	32                              # 0x20
	.long	637
	.long	3
	.long	64                              # 0x40
	.long	640
	.long	3
	.long	96                              # 0x60
	.long	0                               # BTF_KIND_STRUCT(id = 25)
	.long	67108866                        # 0x4000002
	.long	16
	.long	643
	.long	10
	.long	0                               # 0x0
	.long	646
	.long	10
	.long	64                              # 0x40
	.long	0                               # BTF_KIND_ARRAY(id = 26)
	.long	50331648                        # 0x3000000
	.long	0
	.long	14
	.long	6
	.long	16
	.long	649                             # BTF_KIND_VAR(id = 27)
	.long	234881024                       # 0xe000000
	.long	23
	.long	1
	.long	0                               # BTF_KIND_ARRAY(id = 28)
	.long	50331648                        # 0x3000000
	.long	0
	.long	19
	.long	6
	.long	23
	.long	658                             # BTF_KIND_VAR(id = 29)
	.long	234881024                       # 0xe000000
	.long	28
	.long	0
	.long	687                             # BTF_KIND_DATASEC(id = 30)
	.long	251658241                       # 0xf000001
	.long	0
	.long	27
	.long	__packed
	.long	16
	.long	692                             # BTF_KIND_DATASEC(id = 31)
	.long	251658242                       # 0xf000002
	.long	0
	.long	22
	.long	repro.____fmt
	.long	6
	.long	29
	.long	icmp6_ndisc_validate.____fmt
	.long	23
	.long	700                             # BTF_KIND_FWD(id = 32)
	.long	117440512                       # 0x7000000
	.long	0
	.long	714                             # BTF_KIND_FWD(id = 33)
	.long	117440512                       # 0x7000000
	.long	0
	.byte	0                               # string offset=0
	.ascii	"__sk_buff"                     # string offset=1
	.byte	0
	.ascii	"len"                           # string offset=11
	.byte	0
	.ascii	"pkt_type"                      # string offset=15
	.byte	0
	.ascii	"mark"                          # string offset=24
	.byte	0
	.ascii	"queue_mapping"                 # string offset=29
	.byte	0
	.ascii	"protocol"                      # string offset=43
	.byte	0
	.ascii	"vlan_present"                  # string offset=52
	.byte	0
	.ascii	"vlan_tci"                      # string offset=65
	.byte	0
	.ascii	"vlan_proto"                    # string offset=74
	.byte	0
	.ascii	"priority"                      # string offset=85
	.byte	0
	.ascii	"ingress_ifindex"               # string offset=94
	.byte	0
	.ascii	"ifindex"                       # string offset=110
	.byte	0
	.ascii	"tc_index"                      # string offset=118
	.byte	0
	.ascii	"cb"                            # string offset=127
	.byte	0
	.ascii	"hash"                          # string offset=130
	.byte	0
	.ascii	"tc_classid"                    # string offset=135
	.byte	0
	.ascii	"data"                          # string offset=146
	.byte	0
	.ascii	"data_end"                      # string offset=151
	.byte	0
	.ascii	"napi_id"                       # string offset=160
	.byte	0
	.ascii	"family"                        # string offset=168
	.byte	0
	.ascii	"remote_ip4"                    # string offset=175
	.byte	0
	.ascii	"local_ip4"                     # string offset=186
	.byte	0
	.ascii	"remote_ip6"                    # string offset=196
	.byte	0
	.ascii	"local_ip6"                     # string offset=207
	.byte	0
	.ascii	"remote_port"                   # string offset=217
	.byte	0
	.ascii	"local_port"                    # string offset=229
	.byte	0
	.ascii	"data_meta"                     # string offset=240
	.byte	0
	.ascii	"tstamp"                        # string offset=250
	.byte	0
	.ascii	"wire_len"                      # string offset=257
	.byte	0
	.ascii	"gso_segs"                      # string offset=266
	.byte	0
	.ascii	"gso_size"                      # string offset=275
	.byte	0
	.ascii	"tstamp_type"                   # string offset=284
	.byte	0
	.ascii	"hwtstamp"                      # string offset=296
	.byte	0
	.ascii	"__u32"                         # string offset=305
	.byte	0
	.ascii	"unsigned int"                  # string offset=311
	.byte	0
	.ascii	"__ARRAY_SIZE_TYPE__"           # string offset=324
	.byte	0
	.ascii	"flow_keys"                     # string offset=344
	.byte	0
	.ascii	"__u64"                         # string offset=354
	.byte	0
	.ascii	"unsigned long long"            # string offset=360
	.byte	0
	.ascii	"sk"                            # string offset=379
	.byte	0
	.ascii	"__u8"                          # string offset=382
	.byte	0
	.ascii	"unsigned char"                 # string offset=387
	.byte	0
	.ascii	"skb"                           # string offset=401
	.byte	0
	.ascii	"int"                           # string offset=405
	.byte	0
	.ascii	"repro"                         # string offset=409
	.byte	0
	.ascii	"classifier"                    # string offset=415
	.byte	0
	.ascii	"/home/msuneclo/dev/clang_bug_pragma_unroll/test.c" # string offset=426
	.byte	0
	.ascii	"int repro(struct __sk_buff *skb)" # string offset=476
	.byte	0
	.ascii	"\tbpf_printk(\"Start\");"      # string offset=509
	.byte	0
	.ascii	"DEFINE_FUNC_CTX_POINTER(data)" # string offset=531
	.byte	0
	.ascii	"\tbpf_printk(\"pre ipv6_hdrlen_offset\");" # string offset=561
	.byte	0
	.ascii	"char"                          # string offset=600
	.byte	0
	.ascii	"repro.____fmt"                 # string offset=605
	.byte	0
	.ascii	"v6addr"                        # string offset=619
	.byte	0
	.ascii	"addr"                          # string offset=626
	.byte	0
	.ascii	"p1"                            # string offset=631
	.byte	0
	.ascii	"p2"                            # string offset=634
	.byte	0
	.ascii	"p3"                            # string offset=637
	.byte	0
	.ascii	"p4"                            # string offset=640
	.byte	0
	.ascii	"d1"                            # string offset=643
	.byte	0
	.ascii	"d2"                            # string offset=646
	.byte	0
	.ascii	"__packed"                      # string offset=649
	.byte	0
	.ascii	"icmp6_ndisc_validate.____fmt"  # string offset=658
	.byte	0
	.ascii	".bss"                          # string offset=687
	.byte	0
	.ascii	".rodata"                       # string offset=692
	.byte	0
	.ascii	"bpf_flow_keys"                 # string offset=700
	.byte	0
	.ascii	"bpf_sock"                      # string offset=714
	.byte	0
	.section	.BTF.ext,"",@progbits
	.short	60319                           # 0xeb9f
	.byte	1
	.byte	0
	.long	32
	.long	0
	.long	20
	.long	20
	.long	76
	.long	96
	.long	0
	.long	8                               # FuncInfo
	.long	415                             # FuncInfo section string offset=415
	.long	1
	.long	.Lfunc_begin0
	.long	18
	.long	16                              # LineInfo
	.long	415                             # LineInfo section string offset=415
	.long	4
	.long	.Lfunc_begin0
	.long	426
	.long	476
	.long	187392                          # Line 183 Col 0
	.long	.Ltmp2
	.long	426
	.long	509
	.long	193538                          # Line 189 Col 2
	.long	.Ltmp5
	.long	426
	.long	531
	.long	89089                           # Line 87 Col 1
	.long	.Ltmp8
	.long	426
	.long	561
	.long	158722                          # Line 155 Col 2
	.addrsig
	.addrsig_sym repro
	.addrsig_sym repro.____fmt
	.addrsig_sym icmp6_ndisc_validate.____fmt
	.section	.debug_line,"",@progbits
.Lline_table_start0:
