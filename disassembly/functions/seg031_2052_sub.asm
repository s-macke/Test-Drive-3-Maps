seg031:2052 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:2052
seg031:2052 ; Attributes: bp-based frame
seg031:2052
seg031:2052 sub_1AEB2       proc far                ; CODE XREF: sub_19AEE+11F␘P
seg031:2052
seg031:2052 var_4           = word ptr -4
seg031:2052 var_2           = word ptr -2
seg031:2052 arg_2           = word ptr  6
seg031:2052 arg_4           = word ptr  8
seg031:2052 arg_6           = word ptr  0Ah
seg031:2052 arg_8           = word ptr  0Ch
seg031:2052
seg031:2052                 push    bp
seg031:2053                 mov     bp, sp
seg031:2055                 sub     sp, 4
seg031:2058                 mov     bx, [bp+arg_2]
seg031:205B                 cmp     bx, word_2B440
seg031:205F                 jb      short loc_1AEC6
seg031:2061                 mov     ax, 900h
seg031:2064                 jmp     short loc_1AEF0
seg031:2066 ; ---------------------------------------------------------------------------
seg031:2066
seg031:2066 loc_1AEC6:                              ; CODE XREF: sub_1AEB2+D␘j
seg031:2066                 test    [bp+arg_6], 8000h
seg031:206B                 jz      short loc_1AF15
seg031:206D                 cmp     [bp+arg_8], 0
seg031:2071                 jz      short loc_1AEED
seg031:2073                 xor     cx, cx
seg031:2075                 mov     dx, cx
seg031:2077                 mov     ax, 4201h
seg031:207A                 int     21h             ; DOS - 2+ - MOVE FILE READ/WRITE POINTER (LSEEK)
seg031:207A                                         ; AL = method: offset from present location
seg031:207C                 jb      short loc_1AF29
seg031:207E                 test    [bp+arg_8], 2
seg031:2083                 jnz     short loc_1AEF3
seg031:2085                 add     ax, [bp+arg_4]
seg031:2088                 adc     dx, [bp+arg_6]
seg031:208B                 jns     short loc_1AF15
seg031:208D
seg031:208D loc_1AEED:                              ; CODE XREF: sub_1AEB2+1F␘j
seg031:208D                                         ; sub_1AEB2+61␙j
seg031:208D                 mov     ax, 1600h
seg031:2090
seg031:2090 loc_1AEF0:                              ; CODE XREF: sub_1AEB2+12␘j
seg031:2090                 stc
seg031:2091                 jmp     short loc_1AF29
seg031:2093 ; ---------------------------------------------------------------------------
seg031:2093
seg031:2093 loc_1AEF3:                              ; CODE XREF: sub_1AEB2+31␘j
seg031:2093                 mov     [bp+var_2], dx
seg031:2096                 mov     [bp+var_4], ax
seg031:2099                 mov     dx, cx
seg031:209B                 mov     ax, 4202h
seg031:209E                 int     21h             ; DOS - 2+ - MOVE FILE READ/WRITE POINTER (LSEEK)
seg031:209E                                         ; AL = method: offset from end of file
seg031:20A0                 add     ax, [bp+arg_4]
seg031:20A3                 adc     dx, [bp+arg_6]
seg031:20A6                 jns     short loc_1AF15
seg031:20A8                 mov     cx, [bp+var_2]
seg031:20AB                 mov     dx, [bp+var_4]
seg031:20AE                 mov     ax, 4200h
seg031:20B1                 int     21h             ; DOS - 2+ - MOVE FILE READ/WRITE POINTER (LSEEK)
seg031:20B1                                         ; AL = method: offset from beginning of file
seg031:20B3                 jmp     short loc_1AEED
seg031:20B5 ; ---------------------------------------------------------------------------
seg031:20B5
seg031:20B5 loc_1AF15:                              ; CODE XREF: sub_1AEB2+19␘j
seg031:20B5                                         ; sub_1AEB2+39␘j ...
seg031:20B5                 mov     dx, [bp+arg_4]
seg031:20B8                 mov     cx, [bp+arg_6]
seg031:20BB                 mov     al, byte ptr [bp+arg_8]
seg031:20BE                 mov     ah, 42h
seg031:20C0                 int     21h             ; DOS - 2+ - MOVE FILE READ/WRITE POINTER (LSEEK)
seg031:20C0                                         ; AL = method:
seg031:20C0                                         ; 0-from beginnig,1-from current,2-from end
seg031:20C2                 jb      short loc_1AF29
seg031:20C4                 and     byte ptr [bx-3C9Eh], 0FDh
seg031:20C9
seg031:20C9 loc_1AF29:                              ; CODE XREF: sub_1AEB2+2A␘j
seg031:20C9                                         ; sub_1AEB2+3F␘j ...
seg031:20C9                 jmp     loc_1AE03
seg031:20C9 sub_1AEB2       endp
seg031:20C9
seg031:20CC
