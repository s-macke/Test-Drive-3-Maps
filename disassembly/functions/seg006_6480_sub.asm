seg006:6480 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:6480
seg006:6480
seg006:6480 sub_142D0       proc near               ; CODE XREF: sub_140ED+1BA␘p
seg006:6480                 mov     bl, byte_28456
seg006:6484                 mov     dh, bl
seg006:6486                 and     bx, 3Fh
seg006:6489                 jz      short loc_14317
seg006:648B                 xor     dh, bl
seg006:648D                 shl     bx, 1
seg006:648F                 push    dx
seg006:6490                 mov     si, ax
seg006:6492                 imul    word ptr [bx-48A5h]
seg006:6496                 shl     ax, 1
seg006:6498                 rcl     dx, 1
seg006:649A                 mov     bp, dx
seg006:649C                 mov     ax, cx
seg006:649E                 imul    word ptr [bx-4927h]
seg006:64A2                 shl     ax, 1
seg006:64A4                 rcl     dx, 1
seg006:64A6                 add     bp, dx
seg006:64A8                 mov     ax, si
seg006:64AA                 imul    word ptr [bx-4927h]
seg006:64AE                 shl     ax, 1
seg006:64B0                 rcl     dx, 1
seg006:64B2                 neg     dx
seg006:64B4                 mov     ax, cx
seg006:64B6                 mov     cx, dx
seg006:64B8                 imul    word ptr [bx-48A5h]
seg006:64BC                 shl     ax, 1
seg006:64BE                 rcl     dx, 1
seg006:64C0                 add     cx, dx
seg006:64C2                 mov     ax, bp
seg006:64C4                 pop     dx
seg006:64C5                 jmp     short loc_14319
seg006:64C7 ; ---------------------------------------------------------------------------
seg006:64C7
seg006:64C7 loc_14317:                              ; CODE XREF: sub_142D0+9␘j
seg006:64C7                 xor     dh, bl
seg006:64C9
seg006:64C9 loc_14319:                              ; CODE XREF: sub_142D0+45␘j
seg006:64C9                 cmp     dh, 40h ; '@'
seg006:64CC                 jb      short locret_14328
seg006:64CE                 jz      short loc_1432E
seg006:64D0                 cmp     dh, 80h ; 'Ç'
seg006:64D3                 jz      short loc_14329
seg006:64D5                 xchg    ax, cx
seg006:64D6                 neg     ax
seg006:64D8
seg006:64D8 locret_14328:                           ; CODE XREF: sub_142D0+4C␘j
seg006:64D8                 retn
seg006:64D9 ; ---------------------------------------------------------------------------
seg006:64D9
seg006:64D9 loc_14329:                              ; CODE XREF: sub_142D0+53␘j
seg006:64D9                 neg     ax
seg006:64DB                 neg     cx
seg006:64DD                 retn
seg006:64DE ; ---------------------------------------------------------------------------
seg006:64DE
seg006:64DE loc_1432E:                              ; CODE XREF: sub_142D0+4E␘j
seg006:64DE                 xchg    ax, cx
seg006:64DF                 neg     cx
seg006:64E1                 retn
seg006:64E1 sub_142D0       endp
seg006:64E1
seg006:64E2
