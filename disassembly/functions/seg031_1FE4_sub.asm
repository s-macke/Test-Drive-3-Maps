seg031:1FE4 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:1FE4
seg031:1FE4 ; Attributes: bp-based frame
seg031:1FE4
seg031:1FE4 sub_1AE44       proc near               ; CODE XREF: sub_19A2C+6A␘p
seg031:1FE4                                         ; sub_19AEE+B9␘p
seg031:1FE4
seg031:1FE4 var_2           = word ptr -2
seg031:1FE4 arg_0           = word ptr  4
seg031:1FE4
seg031:1FE4                 push    bp
seg031:1FE5                 mov     bp, sp
seg031:1FE7                 sub     sp, 2
seg031:1FEA                 push    si
seg031:1FEB                 mov     ax, [bp+arg_0]
seg031:1FEE                 sub     ax, 0C39Ah
seg031:1FF1                 mov     cl, 3
seg031:1FF3                 sar     ax, cl
seg031:1FF5                 mov     cx, ax
seg031:1FF7                 shl     ax, 1
seg031:1FF9                 add     ax, cx
seg031:1FFB                 shl     ax, 1
seg031:1FFD                 add     ax, 0C43Ah
seg031:2000                 mov     [bp+var_2], ax
seg031:2003                 mov     ax, 200h
seg031:2006                 push    ax
seg031:2007                 call    sub_1AA6C
seg031:200C                 add     sp, 2
seg031:200F                 mov     bx, [bp+arg_0]
seg031:2012                 mov     [bx+4], ax
seg031:2015                 or      ax, ax
seg031:2017                 jz      short loc_1AE88
seg031:2019                 or      byte ptr [bx+6], 8
seg031:201D                 mov     bx, [bp+var_2]
seg031:2020                 mov     word ptr [bx+2], 200h
seg031:2025                 jmp     short loc_1AE9E
seg031:2025 ; ---------------------------------------------------------------------------
seg031:2027                 align 2
seg031:2028
seg031:2028 loc_1AE88:                              ; CODE XREF: sub_1AE44+33␘j
seg031:2028                 mov     bx, [bp+arg_0]
seg031:202B                 or      byte ptr [bx+6], 4
seg031:202F                 mov     ax, [bp+var_2]
seg031:2032                 inc     ax
seg031:2033                 mov     [bx+4], ax
seg031:2036                 mov     bx, [bp+var_2]
seg031:2039                 mov     word ptr [bx+2], 1
seg031:203E
seg031:203E loc_1AE9E:                              ; CODE XREF: sub_1AE44+41␘j
seg031:203E                 mov     bx, [bp+arg_0]
seg031:2041                 mov     si, bx
seg031:2043                 mov     ax, [si+4]
seg031:2046                 mov     [bx], ax
seg031:2048                 mov     word ptr [bx+2], 0
seg031:204D                 pop     si
seg031:204E                 mov     sp, bp
seg031:2050                 pop     bp
seg031:2051                 retn
seg031:2051 sub_1AE44       endp
seg031:2051
seg031:2052
