seg001:48FE ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:48FE
seg001:48FE ; Attributes: bp-based frame
seg001:48FE
seg001:48FE sub_663E        proc far                ; CODE XREF: sub_0+6A7␘P
seg001:48FE
seg001:48FE var_12          = word ptr -12h
seg001:48FE var_E           = word ptr -0Eh
seg001:48FE var_C           = byte ptr -0Ch
seg001:48FE var_A           = byte ptr -0Ah
seg001:48FE
seg001:48FE                 push    bp
seg001:48FF                 mov     bp, sp
seg001:4901                 sub     sp, 12h
seg001:4904                 push    si
seg001:4905                 push    cs
seg001:4906                 call    near ptr sub_4534
seg001:4909                 sub     al, al
seg001:490B                 mov     byte_1F17F, al
seg001:490E                 mov     byte_1F16C, al
seg001:4911                 mov     ax, 1
seg001:4914                 mov     word_1F17A, ax
seg001:4917                 push    ax
seg001:4918                 call    far ptr sub_16BB0
seg001:491D                 add     sp, 2
seg001:4920                 sub     ax, ax
seg001:4922                 push    ax
seg001:4923                 push    cs
seg001:4924                 call    near ptr sub_63F8
seg001:4927                 add     sp, 2
seg001:492A                 sub     ax, ax
seg001:492C                 mov     [bp+var_E], ax
seg001:492F                 push    ax
seg001:4930                 mov     ax, 2219h
seg001:4933                 push    ax
seg001:4934                 push    cs
seg001:4935                 call    near ptr sub_37BC
seg001:4938                 add     sp, 4
seg001:493B                 mov     [bp+var_E], ax
seg001:493E                 cmp     byte_1FABE, 0
seg001:4943                 jz      short loc_66CC
seg001:4945                 mov     al, byte_1FBEA
seg001:4948                 sub     ah, ah
seg001:494A                 mov     cx, ax
seg001:494C                 shl     ax, 1
seg001:494E                 add     ax, cx
seg001:4950                 mov     cl, byte_1FB54
seg001:4954                 sub     ch, ch
seg001:4956                 add     ax, cx
seg001:4958                 mov     cl, 3
seg001:495A                 shl     ax, cl
seg001:495C                 add     ax, 1F69h
seg001:495F                 push    ax
seg001:4960                 mov     ax, 9C6h
seg001:4963                 push    ax
seg001:4964                 push    cs
seg001:4965                 call    near ptr sub_6ECC
seg001:4968                 add     sp, 4
seg001:496B                 mov     [bp+var_A], al
seg001:496E                 mov     al, byte_1FBEA
seg001:4971                 sub     ah, ah
seg001:4973                 mov     cl, 3
seg001:4975                 shl     ax, cl
seg001:4977                 add     ax, 2041h
seg001:497A                 push    ax
seg001:497B                 mov     ax, 9D0h
seg001:497E                 push    ax
seg001:497F                 push    cs
seg001:4980                 call    near ptr sub_6ECC
seg001:4983                 add     sp, 4
seg001:4986                 mov     [bp+var_C], al
seg001:4989                 jmp     short loc_66D4
seg001:4989 ; ---------------------------------------------------------------------------
seg001:498B                 align 2
seg001:498C
seg001:498C loc_66CC:                               ; CODE XREF: sub_663E+45␘j
seg001:498C                 sub     al, al
seg001:498E                 mov     [bp+var_C], al
seg001:4991                 mov     [bp+var_A], al
seg001:4994
seg001:4994 loc_66D4:                               ; CODE XREF: sub_663E+8B␘j
seg001:4994                 mov     al, [bp+var_A]
seg001:4997                 sub     ah, ah
seg001:4999                 mov     cl, [bp+var_C]
seg001:499C                 sub     ch, ch
seg001:499E                 add     ax, cx
seg001:49A0                 jz      short loc_66E6
seg001:49A2                 push    cs
seg001:49A3                 call    near ptr sub_4B70
seg001:49A6
seg001:49A6 loc_66E6:                               ; CODE XREF: sub_663E+A2␘j
seg001:49A6                 cmp     byte_1FBE8, 1
seg001:49AB                 jz      short loc_6718
seg001:49AD                 mov     ax, 7
seg001:49B0                 push    ax
seg001:49B1                 sub     ax, ax
seg001:49B3                 push    ax
seg001:49B4                 call    sub_C65B
seg001:49B9                 add     sp, 4
seg001:49BC                 mov     al, byte_1FAA4
seg001:49BF                 add     al, 30h ; '0'
seg001:49C1                 mov     byte_21247, al
seg001:49C4                 sub     ax, ax
seg001:49C6                 mov     [bp+var_E], ax
seg001:49C9                 push    ax
seg001:49CA                 mov     ax, 215Eh
seg001:49CD                 push    ax
seg001:49CE                 push    cs
seg001:49CF                 call    near ptr sub_37BC
seg001:49D2                 add     sp, 4
seg001:49D5                 mov     [bp+var_E], ax
seg001:49D8
seg001:49D8 loc_6718:                               ; CODE XREF: sub_663E+AD␘j
seg001:49D8                 mov     ax, 0AEAh
seg001:49DB                 push    ax
seg001:49DC                 mov     ax, 2285h
seg001:49DF                 push    ax
seg001:49E0                 call    sub_195EA
seg001:49E5                 add     sp, 4
seg001:49E8                 mov     byte_21377, 20h ; ' '
seg001:49ED                 sub     ax, ax
seg001:49EF                 push    ax
seg001:49F0                 mov     ax, 0Fh
seg001:49F3                 push    ax
seg001:49F4                 call    sub_C65B
seg001:49F9                 add     sp, 4
seg001:49FC                 sub     ax, ax
seg001:49FE                 mov     [bp+var_E], ax
seg001:4A01                 push    ax
seg001:4A02                 mov     ax, 2219h
seg001:4A05                 push    ax
seg001:4A06                 push    cs
seg001:4A07                 call    near ptr sub_37BC
seg001:4A0A                 add     sp, 4
seg001:4A0D                 mov     [bp+var_E], ax
seg001:4A10                 mov     ax, 7
seg001:4A13                 push    ax
seg001:4A14                 sub     ax, ax
seg001:4A16                 push    ax
seg001:4A17                 call    sub_C65B
seg001:4A1C                 add     sp, 4
seg001:4A1F                 mov     ax, 1
seg001:4A22                 push    ax
seg001:4A23                 mov     ax, 51h ; 'Q'
seg001:4A26                 push    ax
seg001:4A27                 call    sub_C693
seg001:4A2C                 add     sp, 4
seg001:4A2F                 push    [bp+var_E]
seg001:4A32                 mov     ax, 2219h
seg001:4A35                 push    ax
seg001:4A36                 push    cs
seg001:4A37                 call    near ptr sub_3810
seg001:4A3A                 add     sp, 4
seg001:4A3D                 mov     [bp+var_E], ax
seg001:4A40                 mov     ax, 0Eh
seg001:4A43                 push    ax
seg001:4A44                 mov     ax, 51h ; 'Q'
seg001:4A47                 push    ax
seg001:4A48                 call    sub_C693
seg001:4A4D                 add     sp, 4
seg001:4A50                 push    [bp+var_E]
seg001:4A53                 mov     ax, 2219h
seg001:4A56                 push    ax
seg001:4A57                 push    cs
seg001:4A58                 call    near ptr sub_3810
seg001:4A5B                 add     sp, 4
seg001:4A5E                 mov     [bp+var_E], ax
seg001:4A61                 mov     ax, 7
seg001:4A64                 push    ax
seg001:4A65                 mov     ax, 4
seg001:4A68                 push    ax
seg001:4A69                 call    sub_C65B
seg001:4A6E                 add     sp, 4
seg001:4A71                 mov     ax, 1Bh
seg001:4A74                 push    ax
seg001:4A75                 mov     ax, 51h ; 'Q'
seg001:4A78                 push    ax
seg001:4A79                 call    sub_C693
seg001:4A7E                 add     sp, 4
seg001:4A81                 push    [bp+var_E]
seg001:4A84                 mov     ax, 2219h
seg001:4A87                 push    ax
seg001:4A88                 push    cs
seg001:4A89                 call    near ptr sub_3810
seg001:4A8C                 add     sp, 4
seg001:4A8F                 mov     [bp+var_E], ax
seg001:4A92                 mov     ax, 7
seg001:4A95                 push    ax
seg001:4A96                 sub     ax, ax
seg001:4A98                 push    ax
seg001:4A99                 call    sub_C65B
seg001:4A9E                 add     sp, 4
seg001:4AA1                 mov     [bp+var_12], 0
seg001:4AA6
seg001:4AA6 loc_67E6:                               ; CODE XREF: sub_663E+1E1␙j
seg001:4AA6                 mov     al, 30h ; '0'
seg001:4AA8                 mul     byte_1FBEA
seg001:4AAC                 mov     si, ax
seg001:4AAE                 mov     bx, [bp+var_12]
seg001:4AB1                 mov     al, [bx+si-1830h]
seg001:4AB5                 mov     [bx+2267h], al
seg001:4AB9                 mov     al, byte_1FB54
seg001:4ABC                 sub     ah, ah
seg001:4ABE                 mov     cx, ax
seg001:4AC0                 shl     ax, 1
seg001:4AC2                 add     ax, cx
seg001:4AC4                 shl     ax, 1
seg001:4AC6                 shl     ax, 1
seg001:4AC8                 mov     bx, [bp+var_12]
seg001:4ACB                 add     bx, ax
seg001:4ACD                 mov     al, [bx+si-1824h]
seg001:4AD1                 mov     bx, [bp+var_12]
seg001:4AD4                 mov     [bx+2276h], al
seg001:4AD8                 inc     [bp+var_12]
seg001:4ADB                 cmp     [bp+var_12], 0Ch
seg001:4ADF                 jl      short loc_67E6
seg001:4AE1                 push    [bp+var_E]
seg001:4AE4                 mov     ax, 2219h
seg001:4AE7                 push    ax
seg001:4AE8                 push    cs
seg001:4AE9                 call    near ptr sub_37BC
seg001:4AEC                 add     sp, 4
seg001:4AEF                 mov     [bp+var_E], ax
seg001:4AF2                 sub     ax, ax
seg001:4AF4                 push    ax
seg001:4AF5                 call    far ptr sub_16A93
seg001:4AFA                 add     sp, 2
seg001:4AFD                 mov     al, [bp+var_A]
seg001:4B00                 sub     ah, ah
seg001:4B02                 push    ax
seg001:4B03                 mov     ax, 9C6h
seg001:4B06                 push    ax
seg001:4B07                 mov     ax, 6Dh ; 'm'
seg001:4B0A                 push    ax
seg001:4B0B                 push    ax
seg001:4B0C                 push    cs
seg001:4B0D                 call    near ptr sub_6A68
seg001:4B10                 add     sp, 8
seg001:4B13                 mov     al, [bp+var_C]
seg001:4B16                 sub     ah, ah
seg001:4B18                 push    ax
seg001:4B19                 mov     ax, 9D0h
seg001:4B1C                 push    ax
seg001:4B1D                 mov     ax, 7Dh ; '}'
seg001:4B20                 push    ax
seg001:4B21                 mov     ax, 6Dh ; 'm'
seg001:4B24                 push    ax
seg001:4B25                 push    cs
seg001:4B26                 call    near ptr sub_6A68
seg001:4B29                 add     sp, 8
seg001:4B2C                 mov     ax, 4
seg001:4B2F                 push    ax
seg001:4B30                 call    far ptr sub_16A93
seg001:4B35                 add     sp, 2
seg001:4B38                 sub     ax, ax
seg001:4B3A                 push    ax
seg001:4B3B                 mov     al, byte_1FBEA
seg001:4B3E                 sub     ah, ah
seg001:4B40                 mov     cx, ax
seg001:4B42                 shl     ax, 1
seg001:4B44                 add     ax, cx
seg001:4B46                 mov     cl, byte_1FB54
seg001:4B4A                 sub     ch, ch
seg001:4B4C                 add     ax, cx
seg001:4B4E                 mov     cl, 3
seg001:4B50                 shl     ax, cl
seg001:4B52                 add     ax, 1F69h
seg001:4B55                 push    ax
seg001:4B56                 mov     ax, 6Dh ; 'm'
seg001:4B59                 push    ax
seg001:4B5A                 mov     ax, 0D7h ; '+'
seg001:4B5D                 push    ax
seg001:4B5E                 push    cs
seg001:4B5F                 call    near ptr sub_6A68
seg001:4B62                 add     sp, 8
seg001:4B65                 sub     ax, ax
seg001:4B67                 push    ax
seg001:4B68                 mov     al, byte_1FBEA
seg001:4B6B                 sub     ah, ah
seg001:4B6D                 mov     cl, 3
seg001:4B6F                 shl     ax, cl
seg001:4B71                 add     ax, 2041h
seg001:4B74                 push    ax
seg001:4B75                 mov     ax, 7Dh ; '}'
seg001:4B78                 push    ax
seg001:4B79                 mov     ax, 0D7h ; '+'
seg001:4B7C                 push    ax
seg001:4B7D                 push    cs
seg001:4B7E                 call    near ptr sub_6A68
seg001:4B81                 add     sp, 8
seg001:4B84                 sub     ax, ax
seg001:4B86                 push    ax
seg001:4B87                 mov     al, byte_1FBEB
seg001:4B8A                 sub     ah, ah
seg001:4B8C                 mov     cl, 3
seg001:4B8E                 shl     ax, cl
seg001:4B90                 add     ax, 2039h
seg001:4B93                 push    ax
seg001:4B94                 mov     ax, 0B5h ; '¦'
seg001:4B97                 push    ax
seg001:4B98                 mov     ax, 0D7h ; '+'
seg001:4B9B                 push    ax
seg001:4B9C                 push    cs
seg001:4B9D                 call    near ptr sub_6A68
seg001:4BA0                 add     sp, 8
seg001:4BA3                 mov     al, byte_1FBEA
seg001:4BA6                 sub     ah, ah
seg001:4BA8                 inc     ax
seg001:4BA9                 mov     cl, byte_1FBEB
seg001:4BAD                 sub     ch, ch
seg001:4BAF                 cmp     ax, cx
seg001:4BB1                 jb      short loc_68F6
seg001:4BB3                 jmp     loc_69AC
seg001:4BB6 ; ---------------------------------------------------------------------------
seg001:4BB6
seg001:4BB6 loc_68F6:                               ; CODE XREF: sub_663E+2B3␘j
seg001:4BB6                 mov     [bp+var_12], 0
seg001:4BBB
seg001:4BBB loc_68FB:                               ; CODE XREF: sub_663E+2FB␙j
seg001:4BBB                 mov     si, [bp+var_12]
seg001:4BBE                 mov     al, 30h ; '0'
seg001:4BC0                 mul     byte_1FBEA
seg001:4BC4                 add     si, ax
seg001:4BC6                 mov     bx, [bp+var_12]
seg001:4BC9                 mov     al, [si-1800h]
seg001:4BCD                 mov     [bx+22BCh], al
seg001:4BD1                 mov     bx, [bp+var_12]
seg001:4BD4                 mov     al, [si-17F4h]
seg001:4BD8                 mov     [bx+22CBh], al
seg001:4BDC                 mov     bx, [bp+var_12]
seg001:4BDF                 mov     al, [si-17E8h]
seg001:4BE3                 mov     [bx+22DAh], al
seg001:4BE7                 mov     bx, [bp+var_12]
seg001:4BEA                 mov     al, [si-17DCh]
seg001:4BEE                 mov     [bx+22E9h], al
seg001:4BF2                 inc     [bp+var_12]
seg001:4BF5                 cmp     [bp+var_12], 0Ch
seg001:4BF9                 jl      short loc_68FB
seg001:4BFB                 push    [bp+var_E]
seg001:4BFE                 mov     ax, 2219h
seg001:4C01                 push    ax
seg001:4C02                 push    cs
seg001:4C03                 call    near ptr sub_37BC
seg001:4C06                 add     sp, 4
seg001:4C09                 mov     [bp+var_E], ax
seg001:4C0C                 mov     ax, 4
seg001:4C0F                 push    ax
seg001:4C10                 call    far ptr sub_16A93
seg001:4C15                 add     sp, 2
seg001:4C18                 sub     ax, ax
seg001:4C1A                 push    ax
seg001:4C1B                 mov     al, 18h
seg001:4C1D                 mul     byte_1FBEA
seg001:4C21                 add     ax, 1F81h
seg001:4C24                 push    ax
seg001:4C25                 mov     ax, 95h ; 'ò'
seg001:4C28                 push    ax
seg001:4C29                 mov     ax, 0D7h ; '+'
seg001:4C2C                 push    ax
seg001:4C2D                 push    cs
seg001:4C2E                 call    near ptr sub_6A68
seg001:4C31                 add     sp, 8
seg001:4C34                 sub     ax, ax
seg001:4C36                 push    ax
seg001:4C37                 mov     al, 18h
seg001:4C39                 mul     byte_1FBEA
seg001:4C3D                 add     ax, 1F89h
seg001:4C40                 push    ax
seg001:4C41                 mov     ax, 9Dh ; '¥'
seg001:4C44                 push    ax
seg001:4C45                 mov     ax, 0D7h ; '+'
seg001:4C48                 push    ax
seg001:4C49                 push    cs
seg001:4C4A                 call    near ptr sub_6A68
seg001:4C4D                 add     sp, 8
seg001:4C50                 sub     ax, ax
seg001:4C52                 push    ax
seg001:4C53                 mov     al, 18h
seg001:4C55                 mul     byte_1FBEA
seg001:4C59                 add     ax, 1F91h
seg001:4C5C                 push    ax
seg001:4C5D                 mov     ax, 0A5h ; 'Ñ'
seg001:4C60                 push    ax
seg001:4C61                 mov     ax, 0D7h ; '+'
seg001:4C64                 push    ax
seg001:4C65                 push    cs
seg001:4C66                 call    near ptr sub_6A68
seg001:4C69                 add     sp, 8
seg001:4C6C
seg001:4C6C loc_69AC:                               ; CODE XREF: sub_663E+2B5␘j
seg001:4C6C                 sub     ax, ax
seg001:4C6E                 mov     word_1F17A, ax
seg001:4C71                 push    ax
seg001:4C72                 call    far ptr sub_16BB0
seg001:4C77                 add     sp, 2
seg001:4C7A                 push    cs
seg001:4C7B                 call    near ptr sub_391C
seg001:4C7E                 sub     al, al
seg001:4C80                 mov     byte_28147, al
seg001:4C83                 mov     byte_1F16C, al
seg001:4C86                 sub     ax, ax
seg001:4C88                 push    ax
seg001:4C89                 mov     ax, 0Fh
seg001:4C8C                 push    ax
seg001:4C8D                 call    sub_C65B
seg001:4C92                 add     sp, 4
seg001:4C95                 jmp     short loc_6A54
seg001:4C95 ; ---------------------------------------------------------------------------
seg001:4C97                 align 2
seg001:4C98
seg001:4C98 loc_69D8:                               ; CODE XREF: sub_663E+41D␙j
seg001:4C98                 mov     al, [bp+var_A]
seg001:4C9B                 sub     ah, ah
seg001:4C9D                 mov     cl, [bp+var_C]
seg001:4CA0                 sub     ch, ch
seg001:4CA2                 add     ax, cx
seg001:4CA4                 jz      short loc_6A1A
seg001:4CA6                 sub     ax, ax
seg001:4CA8                 mov     [bp+var_E], ax
seg001:4CAB                 push    ax
seg001:4CAC                 mov     ax, 230Dh
seg001:4CAF                 push    ax
seg001:4CB0                 push    cs
seg001:4CB1                 call    near ptr sub_37BC
seg001:4CB4                 add     sp, 4
seg001:4CB7                 mov     [bp+var_E], ax
seg001:4CBA                 mov     [bp+var_E], 0
seg001:4CBF
seg001:4CBF loc_69FF:                               ; CODE XREF: sub_663E+3DA␙j
seg001:4CBF                 cmp     byte_1F16C, 0
seg001:4CC4                 jnz     short loc_6A11
seg001:4CC6                 mov     ax, 2
seg001:4CC9                 push    ax
seg001:4CCA                 push    cs
seg001:4CCB                 call    near ptr sub_38C8
seg001:4CCE                 add     sp, 2
seg001:4CD1
seg001:4CD1 loc_6A11:                               ; CODE XREF: sub_663E+3C6␘j
seg001:4CD1                 inc     [bp+var_E]
seg001:4CD4                 cmp     [bp+var_E], 19h
seg001:4CD8                 jl      short loc_69FF
seg001:4CDA
seg001:4CDA loc_6A1A:                               ; CODE XREF: sub_663E+3A6␘j
seg001:4CDA                 sub     ax, ax
seg001:4CDC                 mov     [bp+var_E], ax
seg001:4CDF                 push    ax
seg001:4CE0                 mov     ax, 2219h
seg001:4CE3                 push    ax
seg001:4CE4                 push    cs
seg001:4CE5                 call    near ptr sub_37BC
seg001:4CE8                 add     sp, 4
seg001:4CEB                 mov     [bp+var_E], ax
seg001:4CEE                 mov     [bp+var_E], 0
seg001:4CF3                 jmp     short loc_6A39
seg001:4CF3 ; ---------------------------------------------------------------------------
seg001:4CF5                 align 2
seg001:4CF6
seg001:4CF6 loc_6A36:                               ; CODE XREF: sub_663E+406␙j
seg001:4CF6                                         ; sub_663E+413␙j
seg001:4CF6                 inc     [bp+var_E]
seg001:4CF9
seg001:4CF9 loc_6A39:                               ; CODE XREF: sub_663E+3F5␘j
seg001:4CF9                 cmp     [bp+var_E], 19h
seg001:4CFD                 jge     short loc_6A54
seg001:4CFF                 cmp     byte_1F16C, 0
seg001:4D04                 jnz     short loc_6A36
seg001:4D06                 mov     ax, 2
seg001:4D09                 push    ax
seg001:4D0A                 push    cs
seg001:4D0B                 call    near ptr sub_38C8
seg001:4D0E                 add     sp, 2
seg001:4D11                 jmp     short loc_6A36
seg001:4D11 ; ---------------------------------------------------------------------------
seg001:4D13                 align 2
seg001:4D14
seg001:4D14 loc_6A54:                               ; CODE XREF: sub_663E+397␘j
seg001:4D14                                         ; sub_663E+3FF␘j
seg001:4D14                 cmp     byte_1F16C, 0
seg001:4D19                 jnz     short loc_6A5E
seg001:4D1B                 jmp     loc_69D8
seg001:4D1E ; ---------------------------------------------------------------------------
seg001:4D1E
seg001:4D1E loc_6A5E:                               ; CODE XREF: sub_663E+41B␘j
seg001:4D1E                 mov     byte_28147, 0
seg001:4D23                 pop     si
seg001:4D24                 mov     sp, bp
seg001:4D26                 pop     bp
seg001:4D27                 retf
seg001:4D27 sub_663E        endp
seg001:4D27
seg001:4D28
