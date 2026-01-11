seg000:0DBA ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg000:0DBA
seg000:0DBA ; Attributes: bp-based frame
seg000:0DBA
seg000:0DBA sub_DBA         proc far                ; CODE XREF: sub_3BFC+2EB␙P
seg000:0DBA                                         ; sub_70AE+1AF␙P ...
seg000:0DBA
seg000:0DBA var_4           = word ptr -4
seg000:0DBA var_2           = word ptr -2
seg000:0DBA arg_0           = word ptr  6
seg000:0DBA arg_2           = word ptr  8
seg000:0DBA
seg000:0DBA                 push    bp
seg000:0DBB                 mov     bp, sp
seg000:0DBD                 sub     sp, 4
seg000:0DC0                 push    [bp+arg_0]
seg000:0DC3                 push    cs
seg000:0DC4                 call    near ptr sub_141E
seg000:0DC7                 add     sp, 2
seg000:0DCA                 mov     [bp+var_4], ax
seg000:0DCD                 or      ax, ax
seg000:0DCF                 jnz     short loc_E00
seg000:0DD1                 push    [bp+arg_0]
seg000:0DD4                 call    sub_C790
seg000:0DD9                 add     sp, 2
seg000:0DDC                 mov     [bp+var_4], ax
seg000:0DDF                 cmp     ax, 0FFFFh
seg000:0DE2                 jnz     short loc_DF2
seg000:0DE4                 mov     ax, 2
seg000:0DE7                 push    ax
seg000:0DE8                 push    cs
seg000:0DE9                 call    near ptr sub_84C
seg000:0DEC                 add     sp, 2
seg000:0DEF                 jmp     short loc_E07
seg000:0DEF ; ---------------------------------------------------------------------------
seg000:0DF1                 align 2
seg000:0DF2
seg000:0DF2 loc_DF2:                                ; CODE XREF: sub_DBA+28␘j
seg000:0DF2                 push    [bp+var_4]
seg000:0DF5                 call    sub_C7A2
seg000:0DFA                 add     sp, 2
seg000:0DFD                 jmp     short loc_E04
seg000:0DFD ; ---------------------------------------------------------------------------
seg000:0DFF                 align 2
seg000:0E00
seg000:0E00 loc_E00:                                ; CODE XREF: sub_DBA+15␘j
seg000:0E00                 mov     ax, word_2DB58
seg000:0E03                 dec     ax
seg000:0E04
seg000:0E04 loc_E04:                                ; CODE XREF: sub_DBA+43␘j
seg000:0E04                 mov     [bp+var_2], ax
seg000:0E07
seg000:0E07 loc_E07:                                ; CODE XREF: sub_DBA+35␘j
seg000:0E07                 push    [bp+var_4]
seg000:0E0A                 push    [bp+var_2]
seg000:0E0D                 push    ds
seg000:0E0E                 push    [bp+arg_2]
seg000:0E11                 call    sub_C7C8
seg000:0E16                 add     sp, 8
seg000:0E19                 push    [bp+var_4]
seg000:0E1C                 call    sub_C7E1
seg000:0E21                 mov     sp, bp
seg000:0E23                 pop     bp
seg000:0E24                 retf
seg000:0E24 sub_DBA         endp
seg000:0E24
seg000:0E24 ; ---------------------------------------------------------------------------
seg000:0E25                 align 2
seg000:0E26
