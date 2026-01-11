seg006:2F01 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:2F01
seg006:2F01
seg006:2F01 sub_10D51       proc near               ; CODE XREF: sub_10F0A+B␙p
seg006:2F01                 push    si
seg006:2F02                 push    di
seg006:2F03                 mov     word_27B4E, 0
seg006:2F09                 mov     si, 2
seg006:2F0C                 mov     cx, 4
seg006:2F0F
seg006:2F0F loc_10D5F:                              ; CODE XREF: sub_10D51+1C␙j
seg006:2F0F                 mov     [si-7592h], si
seg006:2F13                 add     si, 2
seg006:2F16                 mov     [si-7592h], si
seg006:2F1A                 add     si, 2
seg006:2F1D                 loop    loc_10D5F
seg006:2F1F                 mov     di, 10h
seg006:2F22                 mov     bl, 0FCh ; 'n'
seg006:2F24                 mov     dx, word_28CDF
seg006:2F28                 and     dh, bl
seg006:2F2A                 sub     dh, 4
seg006:2F2D                 mov     bh, 8
seg006:2F2F                 mov     ax, word_28F5F
seg006:2F32                 and     ah, bl
seg006:2F34                 sub     ah, 4
seg006:2F37                 mov     dl, ah
seg006:2F39                 mov     byte_28457, 8
seg006:2F3E                 mov     cx, word_28A5D
seg006:2F42                 shl     cx, 1
seg006:2F44                 jmp     short loc_10DC4
seg006:2F46 ; ---------------------------------------------------------------------------
seg006:2F46
seg006:2F46 loc_10D96:                              ; CODE XREF: sub_10D51+78␙j
seg006:2F46                 cmp     byte ptr [di-6681h], 0
seg006:2F4B                 jz      short loc_10DC4
seg006:2F4D                 mov     al, [di-6400h]
seg006:2F51                 and     al, bl
seg006:2F53                 sub     al, dh
seg006:2F55                 cmp     al, bh
seg006:2F57                 ja      short loc_10DC4
seg006:2F59                 mov     ah, [di-6180h]
seg006:2F5D                 and     ah, bl
seg006:2F5F                 sub     ah, dl
seg006:2F61                 cmp     ah, byte_28457
seg006:2F65                 ja      short loc_10DC4
seg006:2F67                 mov     [si-7592h], di
seg006:2F6B                 add     si, 2
seg006:2F6E                 cmp     si, 130h
seg006:2F72                 jnb     short loc_10DF1
seg006:2F74
seg006:2F74 loc_10DC4:                              ; CODE XREF: sub_10D51+43␘j
seg006:2F74                                         ; sub_10D51+4A␘j ...
seg006:2F74                 add     di, 2
seg006:2F77                 cmp     di, cx
seg006:2F79                 jb      short loc_10D96
seg006:2F7B                 sub     cx, cx
seg006:2F7D                 add     cl, byte_2AD0B
seg006:2F81                 jz      short loc_10DF1
seg006:2F83                 mov     di, word_28A5D
seg006:2F87                 shl     di, 1
seg006:2F89
seg006:2F89 loc_10DD9:                              ; CODE XREF: sub_10D51+9E␙j
seg006:2F89                 cmp     [di-6681h], ch
seg006:2F8D                 jz      short loc_10DEC
seg006:2F8F                 mov     [si-7592h], di
seg006:2F93                 add     si, 2
seg006:2F96                 cmp     si, 130h
seg006:2F9A                 jnb     short loc_10DF1
seg006:2F9C
seg006:2F9C loc_10DEC:                              ; CODE XREF: sub_10D51+8C␘j
seg006:2F9C                 add     di, 2
seg006:2F9F                 loop    loc_10DD9
seg006:2FA1
seg006:2FA1 loc_10DF1:                              ; CODE XREF: sub_10D51+71␘j
seg006:2FA1                                         ; sub_10D51+80␘j ...
seg006:2FA1                 shr     si, 1
seg006:2FA3                 mov     word_2849A, si
seg006:2FA7                 pop     di
seg006:2FA8                 pop     si
seg006:2FA9                 retn
seg006:2FA9 sub_10D51       endp
seg006:2FA9
seg006:2FAA
