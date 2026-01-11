seg006:2815 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:2815
seg006:2815
seg006:2815 sub_10665       proc near               ; CODE XREF: sub_105B7+A8␘p
seg006:2815                 push    es
seg006:2816                 push    bp
seg006:2817                 sub     cx, cx
seg006:2819                 mov     word_2A9C9, cx
seg006:281D                 mov     cl, byte_2846C
seg006:2821                 mov     al, cl
seg006:2823                 shr     al, 1
seg006:2825                 sub     ah, ah
seg006:2827                 neg     ax
seg006:2829                 add     ax, word_2846A
seg006:282D                 mov     word_2846A, ax
seg006:2830                 mov     byte_2A9BE, cl
seg006:2834                 cmp     ax, 58h ; 'X'
seg006:2837                 jnb     short loc_10697
seg006:2839                 neg     ax
seg006:283B                 add     ax, 58h ; 'X'
seg006:283E                 cmp     ax, cx
seg006:2840                 jnb     short loc_106AE
seg006:2842                 mov     byte_2A9BE, al
seg006:2845                 jmp     short loc_106AE
seg006:2847 ; ---------------------------------------------------------------------------
seg006:2847
seg006:2847 loc_10697:                              ; CODE XREF: sub_10665+22␘j
seg006:2847                 or      ah, 0FEh
seg006:284A                 add     ax, cx
seg006:284C                 js      short loc_106AB
seg006:284E                 jz      short loc_106AB
seg006:2850                 mov     byte_2A9BE, al
seg006:2853                 sub     cl, al
seg006:2855                 mov     word_2A9C9, cx
seg006:2859                 jmp     short loc_106AE
seg006:285B ; ---------------------------------------------------------------------------
seg006:285B
seg006:285B loc_106AB:                              ; CODE XREF: sub_10665+37␘j
seg006:285B                                         ; sub_10665+39␘j
seg006:285B                 pop     bp
seg006:285C                 pop     es
seg006:285D                 retn
seg006:285E ; ---------------------------------------------------------------------------
seg006:285E
seg006:285E loc_106AE:                              ; CODE XREF: sub_10665+2B␘j
seg006:285E                                         ; sub_10665+30␘j ...
seg006:285E                 shl     bx, 1
seg006:2860                 mov     cx, [bx-76C2h]
seg006:2864                 mov     bp, [bx-7592h]
seg006:2868                 mov     dx, [bp-5F01h]
seg006:286C                 mov     bp, 2
seg006:286F                 sub     dx, word_2848A
seg006:2873                 jns     short loc_106C9
seg006:2875                 neg     dx
seg006:2877                 sub     bp, bp
seg006:2879
seg006:2879 loc_106C9:                              ; CODE XREF: sub_10665+5E␘j
seg006:2879                 cmp     dx, cx
seg006:287B                 jb      short loc_106D2
seg006:287D                 xchg    cx, dx
seg006:287F                 xor     bp, 8
seg006:2882
seg006:2882 loc_106D2:                              ; CODE XREF: sub_10665+66␘j
seg006:2882                 sub     ax, ax
seg006:2884                 or      cx, cx
seg006:2886                 jz      short loc_106E6
seg006:2888                 mov     ah, dl
seg006:288A                 mov     dl, dh
seg006:288C                 sub     dh, dh
seg006:288E                 sub     al, al
seg006:2890                 shl     ax, 1
seg006:2892                 rcl     dx, 1
seg006:2894                 div     cx
seg006:2896
seg006:2896 loc_106E6:                              ; CODE XREF: sub_10665+71␘j
seg006:2896                 xchg    bx, dx
seg006:2898                 mov     bx, 1976h
seg006:289B                 add     bx, [bp-4957h]
seg006:289F                 shl     ax, 1
seg006:28A1                 add     bx, ax
seg006:28A3                 mov     ax, cs:[bx]
seg006:28A6                 add     ax, [bp-4967h]
seg006:28AA                 xchg    bx, dx
seg006:28AC                 sub     dx, dx
seg006:28AE                 mov     cl, byte_2848C
seg006:28B2                 or      cl, cl
seg006:28B4                 jz      short loc_1071E
seg006:28B6                 mov     ch, cl
seg006:28B8                 jns     short loc_1070C
seg006:28BA                 neg     cl
seg006:28BC
seg006:28BC loc_1070C:                              ; CODE XREF: sub_10665+A3␘j
seg006:28BC                 mov     dx, [bx-7462h]
seg006:28C0                 sub     dx, 9400h
seg006:28C4                 sar     dx, 1
seg006:28C6                 sar     dx, cl
seg006:28C8                 or      ch, ch
seg006:28CA                 js      short loc_1071E
seg006:28CC                 neg     dx
seg006:28CE
seg006:28CE loc_1071E:                              ; CODE XREF: sub_10665+9F␘j
seg006:28CE                                         ; sub_10665+B5␘j
seg006:28CE                 inc     ax
seg006:28CF                 sub     ax, dx
seg006:28D1                 sub     ax, word_2A9C5
seg006:28D5                 sub     ax, word_2847B
seg006:28D9                 sar     ax, 1
seg006:28DB                 add     ax, 7
seg006:28DE                 shr     bx, 1
seg006:28E0                 cmp     ax, 13h
seg006:28E3                 jge     short loc_10759
seg006:28E5                 mov     di, word_2A9CB
seg006:28E9                 mov     dh, es:[di]
seg006:28EC                 mov     cl, byte_2846C
seg006:28F0                 sub     ch, ch
seg006:28F2
seg006:28F2 loc_10742:                              ; CODE XREF: sub_10665+F2␙j
seg006:28F2                 or      ax, ax
seg006:28F4                 jns     short loc_1075C
seg006:28F6                 dec     dh
seg006:28F8                 jnz     short loc_10750
seg006:28FA                 inc     di
seg006:28FB                 mov     dh, es:[di]
seg006:28FE                 add     si, cx
seg006:2900
seg006:2900 loc_10750:                              ; CODE XREF: sub_10665+E3␘j
seg006:2900                 dec     byte_2846D
seg006:2904                 jz      short loc_10759
seg006:2906                 inc     ax
seg006:2907                 jmp     short loc_10742
seg006:2909 ; ---------------------------------------------------------------------------
seg006:2909
seg006:2909 loc_10759:                              ; CODE XREF: sub_10665+CE␘j
seg006:2909                                         ; sub_10665+EF␘j
seg006:2909                 pop     bp
seg006:290A                 pop     es
seg006:290B                 retn
seg006:290C ; ---------------------------------------------------------------------------
seg006:290C
seg006:290C loc_1075C:                              ; CODE XREF: sub_10665+DF␘j
seg006:290C                 mov     byte_2A9C8, dh
seg006:2910                 mov     word_2A9CB, di
seg006:2914                 call    sub_1076A
seg006:2917                 pop     bp
seg006:2918                 pop     es
seg006:2919                 retn
seg006:2919 sub_10665       endp
seg006:2919
seg006:291A
