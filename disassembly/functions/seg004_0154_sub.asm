seg004:0154 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg004:0154
seg004:0154
seg004:0154 sub_AA04        proc near               ; CODE XREF: sub_A8EF:loc_A938␘p
seg004:0154                                         ; sub_A8EF+5F␘p
seg004:0154                 mov     ax, word_207B2
seg004:0157                 add     ax, word_207A4
seg004:015B                 xchg    ax, word_207B2
seg004:015F                 mov     cx, 8
seg004:0162                 xor     dx, dx
seg004:0164                 div     cx
seg004:0166                 cmp     ax, 3FDh
seg004:0169                 jl      short loc_AA4F
seg004:016B                 push    dx
seg004:016C                 add     dx, word_207A4
seg004:0170                 mov     word_207B2, dx
seg004:0174                 mov     cx, 400h
seg004:0177                 mov     bp, ax
seg004:0179                 sub     cx, ax
seg004:017B                 add     ax, 12B4h
seg004:017E                 mov     si, ax
seg004:0180                 lea     di, unk_20394
seg004:0184                 rep movsb
seg004:0186                 mov     cx, bp
seg004:0188                 push    si
seg004:0189                 push    es
seg004:018A                 push    ds
seg004:018B                 mov     es, word ptr off_20794+2
seg004:018F                 assume es:dseg
seg004:018F                 lds     si, dword_2038C
seg004:0193                 rep movsb
seg004:0195                 pop     ds
seg004:0196                 pop     es
seg004:0197                 assume es:nothing
seg004:0197                 mov     word ptr dword_2038C, si
seg004:019B                 pop     si
seg004:019C                 xor     ax, ax
seg004:019E                 pop     dx
seg004:019F
seg004:019F loc_AA4F:                               ; CODE XREF: sub_AA04+15␘j
seg004:019F                 add     ax, 12B4h
seg004:01A2                 mov     si, ax
seg004:01A4                 lodsw
seg004:01A5                 mov     bx, ax
seg004:01A7                 lodsb
seg004:01A8                 mov     cx, dx
seg004:01AA                 jcxz    short loc_AA62
seg004:01AC
seg004:01AC loc_AA5C:                               ; CODE XREF: sub_AA04+5C␙j
seg004:01AC                 shr     al, 1
seg004:01AE                 rcr     bx, 1
seg004:01B0                 loop    loc_AA5C
seg004:01B2
seg004:01B2 loc_AA62:                               ; CODE XREF: sub_AA04+56␘j
seg004:01B2                 mov     ax, bx
seg004:01B4                 mov     bx, word_207A4
seg004:01B8                 sub     bx, 9
seg004:01BB                 shl     bx, 1
seg004:01BD                 and     ax, [bx+16CAh]
seg004:01C1                 retn
seg004:01C1 sub_AA04        endp
seg004:01C1
seg004:01C2
