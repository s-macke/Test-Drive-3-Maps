seg002:040E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:040E
seg002:040E ; Attributes: bp-based frame
seg002:040E
seg002:040E sub_7ADE        proc far                ; CODE XREF: sub_76D6+237␘p
seg002:040E                                         ; sub_76D6+247␘p ...
seg002:040E
seg002:040E var_2           = word ptr -2
seg002:040E arg_0           = word ptr  6
seg002:040E
seg002:040E                 push    bp
seg002:040F                 mov     bp, sp
seg002:0411                 sub     sp, 2
seg002:0414                 cmp     [bp+arg_0], 2
seg002:0418                 jz      short loc_7B1C
seg002:041A                 cmp     word_1F172, 0
seg002:041F                 jnz     short loc_7AF8
seg002:0421
seg002:0421 loc_7AF1:                               ; CODE XREF: sub_7ADE+3C␙j
seg002:0421                 call    sub_DEDA
seg002:0426                 jmp     short loc_7B2D
seg002:0428 ; ---------------------------------------------------------------------------
seg002:0428
seg002:0428 loc_7AF8:                               ; CODE XREF: sub_7ADE+11␘j
seg002:0428                 cmp     [bp+arg_0], 0
seg002:042C                 jz      short loc_7B0B
seg002:042E                 cmp     [bp+arg_0], 1
seg002:0432                 jnz     short loc_7B2D
seg002:0434                 cmp     byte_2A6F8, 28h ; '('
seg002:0439                 jbe     short loc_7B2D
seg002:043B
seg002:043B loc_7B0B:                               ; CODE XREF: sub_7ADE+1E␘j
seg002:043B                 lea     ax, [bp+var_2]
seg002:043E                 push    ax
seg002:043F                 call    sub_1C3E
seg002:0444                 add     sp, 2
seg002:0447                 mov     [bp+var_2], ax
seg002:044A                 jmp     short loc_7AF1
seg002:044C ; ---------------------------------------------------------------------------
seg002:044C
seg002:044C loc_7B1C:                               ; CODE XREF: sub_7ADE+A␘j
seg002:044C                 lea     ax, [bp+var_2]
seg002:044F                 push    ax
seg002:0450                 call    sub_EC6
seg002:0455                 add     sp, 2
seg002:0458                 call    sub_DEDE
seg002:045D
seg002:045D loc_7B2D:                               ; CODE XREF: sub_7ADE+18␘j
seg002:045D                                         ; sub_7ADE+24␘j ...
seg002:045D                 cmp     byte_2A777, 0
seg002:0462                 jnz     short loc_7B88
seg002:0464                 cmp     byte_28477, 0
seg002:0469                 jnz     short loc_7B88
seg002:046B                 mov     ax, word_2032E
seg002:046E                 or      ax, word_20330
seg002:0472                 jz      short loc_7B84
seg002:0474                 cmp     byte_2A6EE, 0
seg002:0479                 jnz     short loc_7B84
seg002:047B                 cmp     byte_2A6C4, 0
seg002:0480                 jz      short loc_7B84
seg002:0482                 test    byte ptr word_2AD23, 1
seg002:0487                 jnz     short loc_7B84
seg002:0489                 cmp     byte_2D62A, 1Dh
seg002:048E                 jb      short loc_7B6C
seg002:0490                 cmp     byte_2D62A, 23h ; '#'
seg002:0495                 ja      short loc_7B6C
seg002:0497                 mov     byte_2D62A, 20h ; ' '
seg002:049C
seg002:049C loc_7B6C:                               ; CODE XREF: sub_7ADE+80␘j
seg002:049C                                         ; sub_7ADE+87␘j
seg002:049C                 cmp     byte_2D62A, 1Dh
seg002:04A1                 jnb     short loc_7B78
seg002:04A3                 add     byte_2D62A, 4
seg002:04A8
seg002:04A8 loc_7B78:                               ; CODE XREF: sub_7ADE+93␘j
seg002:04A8                 cmp     byte_2D62A, 23h ; '#'
seg002:04AD                 jbe     short loc_7B84
seg002:04AF                 sub     byte_2D62A, 4
seg002:04B4
seg002:04B4 loc_7B84:                               ; CODE XREF: sub_7ADE+64␘j
seg002:04B4                                         ; sub_7ADE+6B␘j ...
seg002:04B4                 push    cs
seg002:04B5                 call    near ptr sub_89C2
seg002:04B8
seg002:04B8 loc_7B88:                               ; CODE XREF: sub_7ADE+54␘j
seg002:04B8                                         ; sub_7ADE+5B␘j
seg002:04B8                 mov     sp, bp
seg002:04BA                 pop     bp
seg002:04BB                 retf
seg002:04BB sub_7ADE        endp
seg002:04BB
seg002:04BC
