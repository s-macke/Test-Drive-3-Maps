seg001:1D1C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:1D1C
seg001:1D1C ; Attributes: bp-based frame
seg001:1D1C
seg001:1D1C sub_3A5C        proc far                ; CODE XREF: sub_0+1B1␘P
seg001:1D1C                                         ; sub_0+637␘P ...
seg001:1D1C
seg001:1D1C arg_0           = byte ptr  6
seg001:1D1C
seg001:1D1C                 push    bp
seg001:1D1D                 mov     bp, sp
seg001:1D1F                 mov     ax, word_1F166
seg001:1D22                 sub     ax, 1
seg001:1D25                 cmp     ax, 5
seg001:1D28                 jbe     short loc_3A6D
seg001:1D2A                 jmp     loc_3B80
seg001:1D2D ; ---------------------------------------------------------------------------
seg001:1D2D
seg001:1D2D loc_3A6D:                               ; CODE XREF: sub_3A5C+C␘j
seg001:1D2D                 add     ax, ax
seg001:1D2F                 xchg    ax, bx
seg001:1D30                 jmp     cs:off_3B74[bx]
seg001:1D30 ; ---------------------------------------------------------------------------
seg001:1D35                 align 2
seg001:1D36
seg001:1D36 loc_3A76:                               ; CODE XREF: sub_3A5C+14␘j
seg001:1D36                                         ; DATA XREF: sub_3A5C+11E␙o
seg001:1D36                 cmp     byte_1F17C, 1
seg001:1D3B                 jz      short loc_3A80
seg001:1D3D                 jmp     loc_3B80
seg001:1D40 ; ---------------------------------------------------------------------------
seg001:1D40
seg001:1D40 loc_3A80:                               ; CODE XREF: sub_3A5C+1F␘j
seg001:1D40                 cmp     byte_1F16E, 0
seg001:1D45                 jz      short loc_3A8A
seg001:1D47                 jmp     loc_3B80
seg001:1D4A ; ---------------------------------------------------------------------------
seg001:1D4A
seg001:1D4A loc_3A8A:                               ; CODE XREF: sub_3A5C+29␘j
seg001:1D4A                 sub     ax, ax
seg001:1D4C                 push    ax
seg001:1D4D                 push    ax
seg001:1D4E                 push    word_2DAE2
seg001:1D52                 push    word_2DAE0
seg001:1D56                 call    sub_1DFD7
seg001:1D5B                 add     sp, 8
seg001:1D5E                 pop     bp
seg001:1D5F                 retf
seg001:1D60 ; ---------------------------------------------------------------------------
seg001:1D60
seg001:1D60 loc_3AA0:                               ; CODE XREF: sub_3A5C+14␘j
seg001:1D60                                         ; DATA XREF: sub_3A5C:off_3B74␙o ...
seg001:1D60                 cmp     byte_1F17C, 1
seg001:1D65                 jz      short loc_3AAA
seg001:1D67                 jmp     loc_3B80
seg001:1D6A ; ---------------------------------------------------------------------------
seg001:1D6A
seg001:1D6A loc_3AAA:                               ; CODE XREF: sub_3A5C+49␘j
seg001:1D6A                 cmp     byte_1F16E, 0
seg001:1D6F                 jz      short loc_3AB4
seg001:1D71                 jmp     loc_3B80
seg001:1D74 ; ---------------------------------------------------------------------------
seg001:1D74
seg001:1D74 loc_3AB4:                               ; CODE XREF: sub_3A5C+53␘j
seg001:1D74                 mov     ax, 0FACh
seg001:1D77                 push    ax
seg001:1D78                 mov     ax, 0A9Ch
seg001:1D7B                 push    ax
seg001:1D7C                 call    sub_195EA
seg001:1D81                 add     sp, 4
seg001:1D84                 mov     ax, 0FB6h
seg001:1D87                 push    ax
seg001:1D88                 mov     ax, 0A9Ah
seg001:1D8B                 push    ax
seg001:1D8C                 call    sub_1916A
seg001:1D91                 add     sp, 4
seg001:1D94                 mov     word_2D896, ax
seg001:1D97                 or      ax, ax
seg001:1D99                 jnz     short loc_3ADE
seg001:1D9B                 jmp     loc_3B80
seg001:1D9E ; ---------------------------------------------------------------------------
seg001:1D9E
seg001:1D9E loc_3ADE:                               ; CODE XREF: sub_3A5C+7D␘j
seg001:1D9E                 push    ax
seg001:1D9F                 call    sub_190A2
seg001:1DA4                 add     sp, 2
seg001:1DA7                 push    cs
seg001:1DA8                 call    near ptr sub_3B82
seg001:1DAB                 pop     bp
seg001:1DAC                 retf
seg001:1DAC ; ---------------------------------------------------------------------------
seg001:1DAD                 align 2
seg001:1DAE
seg001:1DAE loc_3AEE:                               ; CODE XREF: sub_3A5C+14␘j
seg001:1DAE                                         ; DATA XREF: sub_3A5C+120␙o
seg001:1DAE                 cmp     byte_1F16E, 0
seg001:1DB3                 jnz     short loc_3B03
seg001:1DB5                 cmp     word_1F16F, 1
seg001:1DBA                 jnz     short loc_3B03
seg001:1DBC                 cmp     byte_1F17C, 1
seg001:1DC1                 jz      short loc_3B18
seg001:1DC3
seg001:1DC3 loc_3B03:                               ; CODE XREF: sub_3A5C+97␘j
seg001:1DC3                                         ; sub_3A5C+9E␘j
seg001:1DC3                 cmp     byte_1F17C, 1
seg001:1DC8                 jnz     short loc_3B70
seg001:1DCA                 cmp     byte_1F16E, 0
seg001:1DCF                 jnz     short loc_3B70
seg001:1DD1                 cmp     word_1F176, 0
seg001:1DD6                 jz      short loc_3B70
seg001:1DD8
seg001:1DD8 loc_3B18:                               ; CODE XREF: sub_3A5C+A5␘j
seg001:1DD8                 sub     ax, ax
seg001:1DDA                 push    ax
seg001:1DDB                 call    sub_1E040
seg001:1DE0                 add     sp, 2
seg001:1DE3                 mov     ax, 0FB9h
seg001:1DE6                 push    ax
seg001:1DE7                 mov     ax, 0AE4h
seg001:1DEA                 push    ax
seg001:1DEB                 call    sub_195EA
seg001:1DF0                 add     sp, 4
seg001:1DF3                 mov     al, [bp+arg_0]
seg001:1DF6                 add     al, 41h ; 'A'
seg001:1DF8                 mov     byte_1FBC3, al
seg001:1DFB                 push    word_2DA6C
seg001:1DFF                 push    word_2DA6A
seg001:1E03                 mov     ax, 0ADAh
seg001:1E06                 push    ax
seg001:1E07                 call    sub_E26
seg001:1E0C                 add     sp, 6
seg001:1E0F                 cmp     byte_28477, 0
seg001:1E14                 jnz     short loc_3B6A
seg001:1E16                 sub     ax, ax
seg001:1E18                 push    ax
seg001:1E19                 push    ax
seg001:1E1A                 push    word_2DA6C
seg001:1E1E                 push    word_2DA6A
seg001:1E22                 call    sub_1DFD7
seg001:1E27                 add     sp, 8
seg001:1E2A
seg001:1E2A loc_3B6A:                               ; CODE XREF: sub_3A5C+F8␘j
seg001:1E2A                 mov     ax, 1
seg001:1E2D                 pop     bp
seg001:1E2E                 retf
seg001:1E2E ; ---------------------------------------------------------------------------
seg001:1E2F                 align 2
seg001:1E30
seg001:1E30 loc_3B70:                               ; CODE XREF: sub_3A5C+AC␘j
seg001:1E30                                         ; sub_3A5C+B3␘j ...
seg001:1E30                 sub     ax, ax
seg001:1E32                 pop     bp
seg001:1E33                 retf
seg001:1E33 ; ---------------------------------------------------------------------------
seg001:1E34 off_3B74        dw offset loc_3AA0      ; DATA XREF: sub_3A5C+14␘r
seg001:1E36                 dw offset loc_3AA0
seg001:1E38                 dw offset loc_3AA0
seg001:1E3A                 dw offset loc_3A76
seg001:1E3C                 dw offset loc_3AEE
seg001:1E3E                 dw offset loc_3AA0
seg001:1E40 ; ---------------------------------------------------------------------------
seg001:1E40
seg001:1E40 loc_3B80:                               ; CODE XREF: sub_3A5C+E␘j
seg001:1E40                                         ; sub_3A5C+21␘j ...
seg001:1E40                 pop     bp
seg001:1E41                 retf
seg001:1E41 sub_3A5C        endp
seg001:1E41
seg001:1E42
