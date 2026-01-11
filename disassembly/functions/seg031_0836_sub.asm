seg031:0836 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0836
seg031:0836 ; Attributes: bp-based frame
seg031:0836
seg031:0836 sub_19696       proc far                ; CODE XREF: sub_19680+D␘p
seg031:0836
seg031:0836 var_60          = word ptr -60h
seg031:0836 var_20          = word ptr -20h
seg031:0836 var_1E          = word ptr -1Eh
seg031:0836 var_F           = byte ptr -0Fh
seg031:0836 var_A           = byte ptr -0Ah
seg031:0836 var_8           = word ptr -8
seg031:0836 arg_0           = word ptr  6
seg031:0836 arg_2           = word ptr  8
seg031:0836 arg_4           = word ptr  0Ah
seg031:0836
seg031:0836                 push    bp
seg031:0837                 mov     bp, sp
seg031:0839                 sub     sp, 60h
seg031:083C                 push    di
seg031:083D                 push    si
seg031:083E                 mov     si, [bp+arg_4]
seg031:0841                 lea     ax, [bp+var_60]
seg031:0844                 mov     di, ax
seg031:0846                 cmp     [bp+arg_0], 0
seg031:084A                 jnz     short loc_196C2
seg031:084C                 sub     ax, ax
seg031:084E                 push    ax
seg031:084F                 push    ax
seg031:0850                 mov     ax, 19h
seg031:0853                 push    ax
seg031:0854                 call    sub_1AD36
seg031:0859                 add     sp, 6
seg031:085C                 sub     ah, ah
seg031:085E                 inc     ax
seg031:085F                 mov     [bp+arg_0], ax
seg031:0862
seg031:0862 loc_196C2:                              ; CODE XREF: sub_19696+14␘j
seg031:0862                 mov     al, byte ptr [bp+arg_0]
seg031:0865                 add     al, 40h ; '@'
seg031:0867                 mov     [di], al
seg031:0869                 inc     di
seg031:086A                 mov     byte ptr [di], 3Ah ; ':'
seg031:086D                 inc     di
seg031:086E                 mov     byte ptr [di], 5Ch ; '\'
seg031:0871                 inc     di
seg031:0872                 mov     [bp+var_F], 47h ; 'G'
seg031:0876                 mov     al, byte ptr [bp+arg_0]
seg031:0879                 mov     [bp+var_A], al
seg031:087C                 mov     [bp+var_8], di
seg031:087F                 lea     ax, [bp+var_1E]
seg031:0882                 push    ax
seg031:0883                 lea     ax, [bp-10h]
seg031:0886                 push    ax
seg031:0887                 call    sub_1AD48
seg031:088C                 add     sp, 4
seg031:088F                 lea     ax, [bp+var_60]
seg031:0892                 push    ax
seg031:0893                 call    sub_19648
seg031:0898                 add     sp, 2
seg031:089B                 inc     ax
seg031:089C                 mov     [bp+var_20], ax
seg031:089F                 mov     di, [bp+arg_2]
seg031:08A2                 or      di, di
seg031:08A4                 jnz     short loc_19727
seg031:08A6                 cmp     ax, si
seg031:08A8                 jle     short loc_1970C
seg031:08AA                 mov     si, ax
seg031:08AC
seg031:08AC loc_1970C:                              ; CODE XREF: sub_19696+72␘j
seg031:08AC                 push    si
seg031:08AD                 call    sub_1AA6C
seg031:08B2                 add     sp, 2
seg031:08B5                 mov     di, ax
seg031:08B7                 or      di, di
seg031:08B9                 jnz     short loc_19724
seg031:08BB                 mov     word_2B433, 0Ch
seg031:08C1                 jmp     short loc_19743
seg031:08C1 ; ---------------------------------------------------------------------------
seg031:08C3                 align 2
seg031:08C4
seg031:08C4 loc_19724:                              ; CODE XREF: sub_19696+83␘j
seg031:08C4                 mov     [bp+arg_2], di
seg031:08C7
seg031:08C7 loc_19727:                              ; CODE XREF: sub_19696+6E␘j
seg031:08C7                 cmp     [bp+var_20], si
seg031:08CA                 jle     short loc_19736
seg031:08CC                 mov     word_2B433, 22h ; '"'
seg031:08D2                 sub     ax, ax
seg031:08D4                 jmp     short loc_19743
seg031:08D6 ; ---------------------------------------------------------------------------
seg031:08D6
seg031:08D6 loc_19736:                              ; CODE XREF: sub_19696+94␘j
seg031:08D6                 lea     ax, [bp+var_60]
seg031:08D9                 push    ax
seg031:08DA                 push    di
seg031:08DB                 call    sub_195EA
seg031:08E0                 add     sp, 4
seg031:08E3
seg031:08E3 loc_19743:                              ; CODE XREF: sub_19696+8B␘j
seg031:08E3                                         ; sub_19696+9E␘j
seg031:08E3                 pop     si
seg031:08E4                 pop     di
seg031:08E5                 mov     sp, bp
seg031:08E7                 pop     bp
seg031:08E8                 retf
seg031:08E8 sub_19696       endp
seg031:08E8
seg031:08E8 ; ---------------------------------------------------------------------------
seg031:08E9                 align 2
seg031:08EA
