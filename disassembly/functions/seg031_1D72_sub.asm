seg031:1D72 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:1D72
seg031:1D72
seg031:1D72 sub_1ABD2       proc near               ; CODE XREF: sub_1AAB5+B0␘p
seg031:1D72                                         ; sub_1AAB5+BC␘p ...
seg031:1D72                 push    dx
seg031:1D73                 push    cx
seg031:1D74                 call    sub_1ABF4
seg031:1D77                 jz      short loc_1ABF1
seg031:1D79                 push    di
seg031:1D7A                 mov     di, si
seg031:1D7C                 mov     si, ax
seg031:1D7E                 add     si, dx
seg031:1D80                 mov     word ptr [si-2], 0FFFEh
seg031:1D85                 mov     [bx+6], si
seg031:1D88                 mov     dx, si
seg031:1D8A                 sub     dx, di
seg031:1D8C                 dec     dx
seg031:1D8D                 mov     [di-2], dx
seg031:1D90                 pop     ax
seg031:1D91
seg031:1D91 loc_1ABF1:                              ; CODE XREF: sub_1ABD2+5␘j
seg031:1D91                 pop     cx
seg031:1D92                 pop     dx
seg031:1D93                 retn
seg031:1D93 sub_1ABD2       endp
seg031:1D93
seg031:1D94
