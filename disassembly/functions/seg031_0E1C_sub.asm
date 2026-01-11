seg031:0E1C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0E1C
seg031:0E1C ; Attributes: bp-based frame
seg031:0E1C
seg031:0E1C sub_19C7C       proc far                ; CODE XREF: sub_1916A+19␘P
seg031:0E1C
seg031:0E1C var_8           = word ptr -8
seg031:0E1C var_6           = word ptr -6
seg031:0E1C var_4           = byte ptr -4
seg031:0E1C var_2           = word ptr -2
seg031:0E1C arg_0           = word ptr  6
seg031:0E1C arg_2           = word ptr  8
seg031:0E1C arg_4           = word ptr  0Ah
seg031:0E1C
seg031:0E1C                 push    bp
seg031:0E1D                 mov     bp, sp
seg031:0E1F                 sub     sp, 0Ah
seg031:0E22                 push    di
seg031:0E23                 push    si
seg031:0E24                 mov     si, [bp+arg_4]
seg031:0E27                 mov     bx, [bp+arg_2]
seg031:0E2A                 mov     al, [bx]
seg031:0E2C                 cbw
seg031:0E2D                 cmp     ax, 61h ; 'a'
seg031:0E30                 jz      short loc_19CBA
seg031:0E32                 cmp     ax, 72h ; 'r'
seg031:0E35                 jz      short loc_19CA2
seg031:0E37                 cmp     ax, 77h ; 'w'
seg031:0E3A                 jz      short loc_19CB0
seg031:0E3C
seg031:0E3C loc_19C9C:                              ; CODE XREF: sub_19C7C+B1␙j
seg031:0E3C                 sub     ax, ax
seg031:0E3E                 jmp     loc_19D70
seg031:0E3E ; ---------------------------------------------------------------------------
seg031:0E41                 align 2
seg031:0E42
seg031:0E42 loc_19CA2:                              ; CODE XREF: sub_19C7C+19␘j
seg031:0E42                 sub     di, di
seg031:0E44                 mov     [bp+var_4], 1
seg031:0E48
seg031:0E48 loc_19CA8:                              ; CODE XREF: sub_19C7C+3B␙j
seg031:0E48                 mov     cx, 1
seg031:0E4B                 mov     dl, [bp+var_4]
seg031:0E4E                 jmp     short loc_19CCF
seg031:0E50 ; ---------------------------------------------------------------------------
seg031:0E50
seg031:0E50 loc_19CB0:                              ; CODE XREF: sub_19C7C+1E␘j
seg031:0E50                 mov     di, 301h
seg031:0E53
seg031:0E53 loc_19CB3:                              ; CODE XREF: sub_19C7C+41␙j
seg031:0E53                 mov     [bp+var_4], 2
seg031:0E57                 jmp     short loc_19CA8
seg031:0E57 ; ---------------------------------------------------------------------------
seg031:0E59                 align 2
seg031:0E5A
seg031:0E5A loc_19CBA:                              ; CODE XREF: sub_19C7C+14␘j
seg031:0E5A                 mov     di, 109h
seg031:0E5D                 jmp     short loc_19CB3
seg031:0E5D ; ---------------------------------------------------------------------------
seg031:0E5F                 align 2
seg031:0E60
seg031:0E60 loc_19CC0:                              ; CODE XREF: sub_19C7C+68␙j
seg031:0E60                 test    di, 2
seg031:0E64                 jnz     short loc_19D05
seg031:0E66                 or      di, 2
seg031:0E6A                 and     di, 0FFFEh
seg031:0E6D                 mov     dl, 80h ; 'Ç'
seg031:0E6F
seg031:0E6F loc_19CCF:                              ; CODE XREF: sub_19C7C+32␘j
seg031:0E6F                                         ; sub_19C7C+7F␙j ...
seg031:0E6F                 inc     [bp+arg_2]
seg031:0E72                 mov     bx, [bp+arg_2]
seg031:0E75                 cmp     byte ptr [bx], 0
seg031:0E78                 jz      short loc_19D10
seg031:0E7A                 or      cx, cx
seg031:0E7C                 jz      short loc_19D10
seg031:0E7E                 mov     al, [bx]
seg031:0E80                 cbw
seg031:0E81                 cmp     ax, 2Bh ; '+'
seg031:0E84                 jz      short loc_19CC0
seg031:0E86                 cmp     ax, 62h ; 'b'
seg031:0E89                 jz      short loc_19CFE
seg031:0E8B                 cmp     ax, 74h ; 't'
seg031:0E8E                 jnz     short loc_19D05
seg031:0E90                 mov     ax, di
seg031:0E92                 test    ax, 0C000h
seg031:0E95                 jnz     short loc_19D05
seg031:0E97                 or      di, 4000h
seg031:0E9B                 jmp     short loc_19CCF
seg031:0E9B ; ---------------------------------------------------------------------------
seg031:0E9D                 align 2
seg031:0E9E
seg031:0E9E loc_19CFE:                              ; CODE XREF: sub_19C7C+6D␘j
seg031:0E9E                 mov     ax, di
seg031:0EA0                 test    ax, 0C000h
seg031:0EA3                 jz      short loc_19D0A
seg031:0EA5
seg031:0EA5 loc_19D05:                              ; CODE XREF: sub_19C7C+48␘j
seg031:0EA5                                         ; sub_19C7C+72␘j ...
seg031:0EA5                 sub     cx, cx
seg031:0EA7                 jmp     short loc_19CCF
seg031:0EA7 ; ---------------------------------------------------------------------------
seg031:0EA9                 align 2
seg031:0EAA
seg031:0EAA loc_19D0A:                              ; CODE XREF: sub_19C7C+87␘j
seg031:0EAA                 or      di, 8000h
seg031:0EAE                 jmp     short loc_19CCF
seg031:0EB0 ; ---------------------------------------------------------------------------
seg031:0EB0
seg031:0EB0 loc_19D10:                              ; CODE XREF: sub_19C7C+5C␘j
seg031:0EB0                                         ; sub_19C7C+60␘j
seg031:0EB0                 mov     [bp+var_4], dl
seg031:0EB3                 mov     [bp+var_2], cx
seg031:0EB6                 mov     ax, 1A4h
seg031:0EB9                 push    ax
seg031:0EBA                 push    di
seg031:0EBB                 push    [bp+arg_0]
seg031:0EBE                 call    sub_1AF2C
seg031:0EC3                 add     sp, 6
seg031:0EC6                 mov     [bp+var_6], ax
seg031:0EC9                 or      ax, ax
seg031:0ECB                 jge     short loc_19D30
seg031:0ECD                 jmp     loc_19C9C
seg031:0ED0 ; ---------------------------------------------------------------------------
seg031:0ED0
seg031:0ED0 loc_19D30:                              ; CODE XREF: sub_19C7C+AF␘j
seg031:0ED0                 mov     al, [bp+var_4]
seg031:0ED3                 mov     [si+6], al
seg031:0ED6                 inc     word_2B660
seg031:0EDA                 mov     ax, si
seg031:0EDC                 sub     ax, 0C39Ah
seg031:0EDF                 mov     cl, 3
seg031:0EE1                 sar     ax, cl
seg031:0EE3                 mov     cx, ax
seg031:0EE5                 shl     ax, 1
seg031:0EE7                 add     ax, cx
seg031:0EE9                 shl     ax, 1
seg031:0EEB                 add     ax, 0C43Ah
seg031:0EEE                 mov     [bp+var_8], ax
seg031:0EF1                 sub     al, al
seg031:0EF3                 mov     bx, [bp+var_8]
seg031:0EF6                 mov     [bx], al
seg031:0EF8                 cbw
seg031:0EF9                 mov     [si+2], ax
seg031:0EFC                 mov     word ptr [bx+4], 0
seg031:0F01                 sub     ax, ax
seg031:0F03                 mov     [si], ax
seg031:0F05                 mov     [si+4], ax
seg031:0F08                 mov     al, byte ptr [bp+var_6]
seg031:0F0B                 mov     [si+7], al
seg031:0F0E                 mov     ax, si
seg031:0F10
seg031:0F10 loc_19D70:                              ; CODE XREF: sub_19C7C+22␘j
seg031:0F10                 pop     si
seg031:0F11                 pop     di
seg031:0F12                 mov     sp, bp
seg031:0F14                 pop     bp
seg031:0F15                 retf
seg031:0F15 sub_19C7C       endp
seg031:0F15
seg031:0F16
