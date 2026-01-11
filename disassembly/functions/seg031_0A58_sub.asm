seg031:0A58 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0A58
seg031:0A58 ; Attributes: bp-based frame
seg031:0A58
seg031:0A58 sub_198B8       proc far                ; CODE XREF: sub_0:loc_463␘P
seg031:0A58                                         ; sub_300E+36␘P ...
seg031:0A58
seg031:0A58 arg_0           = word ptr  6
seg031:0A58 arg_2           = word ptr  8
seg031:0A58 arg_4           = word ptr  0Ah
seg031:0A58 arg_6           = word ptr  0Ch
seg031:0A58
seg031:0A58                 push    bp
seg031:0A59                 mov     bp, sp
seg031:0A5B                 push    bx
seg031:0A5C                 push    si
seg031:0A5D                 mov     ax, [bp+arg_6]
seg031:0A60                 or      ax, ax
seg031:0A62                 jnz     short loc_198D9
seg031:0A64                 mov     cx, [bp+arg_4]
seg031:0A67                 mov     ax, [bp+arg_2]
seg031:0A6A                 xor     dx, dx
seg031:0A6C                 div     cx
seg031:0A6E                 mov     bx, ax
seg031:0A70                 mov     ax, [bp+arg_0]
seg031:0A73                 div     cx
seg031:0A75                 mov     dx, bx
seg031:0A77                 jmp     short loc_19911
seg031:0A79 ; ---------------------------------------------------------------------------
seg031:0A79
seg031:0A79 loc_198D9:                              ; CODE XREF: sub_198B8+A␘j
seg031:0A79                 mov     cx, ax
seg031:0A7B                 mov     bx, [bp+arg_4]
seg031:0A7E                 mov     dx, [bp+arg_2]
seg031:0A81                 mov     ax, [bp+arg_0]
seg031:0A84
seg031:0A84 loc_198E4:                              ; CODE XREF: sub_198B8+36␙j
seg031:0A84                 shr     cx, 1
seg031:0A86                 rcr     bx, 1
seg031:0A88                 shr     dx, 1
seg031:0A8A                 rcr     ax, 1
seg031:0A8C                 or      cx, cx
seg031:0A8E                 jnz     short loc_198E4
seg031:0A90                 div     bx
seg031:0A92                 mov     si, ax
seg031:0A94                 mul     [bp+arg_6]
seg031:0A97                 xchg    ax, cx
seg031:0A98                 mov     ax, [bp+arg_4]
seg031:0A9B                 mul     si
seg031:0A9D                 add     dx, cx
seg031:0A9F                 jb      short loc_1990D
seg031:0AA1                 cmp     dx, [bp+arg_2]
seg031:0AA4                 ja      short loc_1990D
seg031:0AA6                 jb      short loc_1990E
seg031:0AA8                 cmp     ax, [bp+arg_0]
seg031:0AAB                 jbe     short loc_1990E
seg031:0AAD
seg031:0AAD loc_1990D:                              ; CODE XREF: sub_198B8+47␘j
seg031:0AAD                                         ; sub_198B8+4C␘j
seg031:0AAD                 dec     si
seg031:0AAE
seg031:0AAE loc_1990E:                              ; CODE XREF: sub_198B8+4E␘j
seg031:0AAE                                         ; sub_198B8+53␘j
seg031:0AAE                 xor     dx, dx
seg031:0AB0                 xchg    ax, si
seg031:0AB1
seg031:0AB1 loc_19911:                              ; CODE XREF: sub_198B8+1F␘j
seg031:0AB1                 pop     si
seg031:0AB2                 pop     bx
seg031:0AB3                 mov     sp, bp
seg031:0AB5                 pop     bp
seg031:0AB6                 retf    8
seg031:0AB6 sub_198B8       endp
seg031:0AB6
seg031:0AB6 ; ---------------------------------------------------------------------------
seg031:0AB9                 align 2
seg031:0ABA
