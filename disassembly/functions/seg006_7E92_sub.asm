seg006:7E92 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:7E92
seg006:7E92
seg006:7E92 sub_15CE2       proc near               ; CODE XREF: sub_15E93+10B␙p
seg006:7E92                 push    es
seg006:7E93                 mov     es, word_280BE
seg006:7E97                 sub     si, 20h ; ' '
seg006:7E9A                 add     bp, 20h ; ' '
seg006:7E9D                 mov     bx, word_2AA86
seg006:7EA1                 mov     dx, 0FFE0h
seg006:7EA4                 or      bx, bx
seg006:7EA6                 jns     short loc_15CFD
seg006:7EA8                 jmp     loc_15D84
seg006:7EAB ; ---------------------------------------------------------------------------
seg006:7EAB
seg006:7EAB loc_15CFB:                              ; CODE XREF: sub_15CE2+1E␙j
seg006:7EAB                 pop     es
seg006:7EAC                 retn
seg006:7EAD ; ---------------------------------------------------------------------------
seg006:7EAD
seg006:7EAD loc_15CFD:                              ; CODE XREF: sub_15CE2+14␘j
seg006:7EAD                                         ; sub_15CE2+D6␙j ...
seg006:7EAD                 cmp     bx, 13h
seg006:7EB0                 jnb     short loc_15CFB
seg006:7EB2                 mov     ax, bx
seg006:7EB4                 add     ax, word_2AAAB
seg006:7EB8                 sub     ax, 13h
seg006:7EBB                 js      short loc_15D11
seg006:7EBD                 sub     word_2AAAB, ax
seg006:7EC1
seg006:7EC1 loc_15D11:                              ; CODE XREF: sub_15CE2+29␘j
seg006:7EC1                 shl     bx, 1
seg006:7EC3
seg006:7EC3 loc_15D13:                              ; CODE XREF: sub_15CE2+9E␙j
seg006:7EC3                 mov     ax, si
seg006:7EC5                 and     ax, dx
seg006:7EC7                 mov     cx, bp
seg006:7EC9                 and     cx, dx
seg006:7ECB                 cmp     cx, 0B00h
seg006:7ECF                 jbe     short loc_15D33
seg006:7ED1                 cmp     cx, 8B00h
seg006:7ED5                 ja      short loc_15D6B
seg006:7ED7                 cmp     ax, 0AE0h
seg006:7EDA                 jbe     short loc_15D30
seg006:7EDC                 cmp     ax, cx
seg006:7EDE                 jbe     short loc_15D6B
seg006:7EE0
seg006:7EE0 loc_15D30:                              ; CODE XREF: sub_15CE2+48␘j
seg006:7EE0                 mov     cx, 0B00h
seg006:7EE3
seg006:7EE3 loc_15D33:                              ; CODE XREF: sub_15CE2+3D␘j
seg006:7EE3                 sub     cx, ax
seg006:7EE5                 jns     short loc_15D39
seg006:7EE7                 sub     cx, cx
seg006:7EE9
seg006:7EE9 loc_15D39:                              ; CODE XREF: sub_15CE2+53␘j
seg006:7EE9                 cmp     ax, 0AE0h
seg006:7EEC                 jbe     short loc_15D49
seg006:7EEE                 cmp     ax, 8000h
seg006:7EF1                 jbe     short loc_15D6B
seg006:7EF3                 add     cx, ax
seg006:7EF5                 js      short loc_15D6B
seg006:7EF7                 sub     ax, ax
seg006:7EF9
seg006:7EF9 loc_15D49:                              ; CODE XREF: sub_15CE2+5A␘j
seg006:7EF9                 shl     ax, 1
seg006:7EFB                 shl     ax, 1
seg006:7EFD                 rol     ax, 1
seg006:7EFF                 xchg    al, ah
seg006:7F01                 shl     cx, 1
seg006:7F03                 shl     cx, 1
seg006:7F05                 rol     cx, 1
seg006:7F07                 xchg    cl, ch
seg006:7F09                 mov     di, [bx-4763h]
seg006:7F0D                 add     di, ax
seg006:7F0F                 mov     ax, word_2AA9B
seg006:7F12                 shr     cx, 1
seg006:7F14                 jz      short loc_15D6A
seg006:7F16                 rep stosw
seg006:7F18                 jnb     short loc_15D6B
seg006:7F1A
seg006:7F1A loc_15D6A:                              ; CODE XREF: sub_15CE2+82␘j
seg006:7F1A                 stosb
seg006:7F1B
seg006:7F1B loc_15D6B:                              ; CODE XREF: sub_15CE2+43␘j
seg006:7F1B                                         ; sub_15CE2+4C␘j ...
seg006:7F1B                 add     bx, 2
seg006:7F1E                 mov     ax, word_2AA9D
seg006:7F21                 sub     ax, word_2AA9F
seg006:7F25                 mov     word_2AA9D, ax
seg006:7F28                 sub     si, ax
seg006:7F2A                 add     bp, ax
seg006:7F2C                 dec     word_2AAAB
seg006:7F30                 jnz     short loc_15D13
seg006:7F32                 pop     es
seg006:7F33                 retn
seg006:7F34 ; ---------------------------------------------------------------------------
seg006:7F34
seg006:7F34 loc_15D84:                              ; CODE XREF: sub_15CE2+16␘j
seg006:7F34                 mov     cx, bx
seg006:7F36                 neg     cx
seg006:7F38                 sub     bx, bx
seg006:7F3A                 mov     ax, word_2AA9D
seg006:7F3D                 mov     di, word_2AA9F
seg006:7F41                 sub     word_2AAAB, cx
seg006:7F45                 jz      short loc_15D99
seg006:7F47                 jns     short loc_15D9B
seg006:7F49
seg006:7F49 loc_15D99:                              ; CODE XREF: sub_15CE2+B3␘j
seg006:7F49                 pop     es
seg006:7F4A                 retn
seg006:7F4B ; ---------------------------------------------------------------------------
seg006:7F4B
seg006:7F4B loc_15D9B:                              ; CODE XREF: sub_15CE2+B5␘j
seg006:7F4B                 shr     cx, 1
seg006:7F4D                 jz      short loc_15DBB
seg006:7F4F                 jnb     short loc_15DA7
seg006:7F51                 sub     ax, di
seg006:7F53                 sub     si, ax
seg006:7F55                 add     bp, ax
seg006:7F57
seg006:7F57 loc_15DA7:                              ; CODE XREF: sub_15CE2+BD␘j
seg006:7F57                                         ; sub_15CE2+D1␙j
seg006:7F57                 sub     ax, di
seg006:7F59                 sub     si, ax
seg006:7F5B                 add     bp, ax
seg006:7F5D                 sub     ax, di
seg006:7F5F                 sub     si, ax
seg006:7F61                 add     bp, ax
seg006:7F63                 loop    loc_15DA7
seg006:7F65                 mov     word_2AA9D, ax
seg006:7F68                 jmp     loc_15CFD
seg006:7F6B ; ---------------------------------------------------------------------------
seg006:7F6B
seg006:7F6B loc_15DBB:                              ; CODE XREF: sub_15CE2+BB␘j
seg006:7F6B                 sub     ax, di
seg006:7F6D                 sub     si, ax
seg006:7F6F                 add     bp, ax
seg006:7F71                 mov     word_2AA9D, ax
seg006:7F74                 jmp     loc_15CFD
seg006:7F74 sub_15CE2       endp
seg006:7F74
seg006:7F77
