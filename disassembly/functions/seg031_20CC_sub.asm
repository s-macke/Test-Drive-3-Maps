seg031:20CC ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:20CC
seg031:20CC ; Attributes: bp-based frame
seg031:20CC
seg031:20CC sub_1AF2C       proc far                ; CODE XREF: sub_19C7C+A2␘P
seg031:20CC
seg031:20CC var_4           = byte ptr -4
seg031:20CC var_3           = byte ptr -3
seg031:20CC var_2           = byte ptr -2
seg031:20CC var_1           = byte ptr -1
seg031:20CC arg_0           = word ptr  6
seg031:20CC arg_2           = word ptr  8
seg031:20CC arg_4           = word ptr  0Ah
seg031:20CC
seg031:20CC ; FUNCTION CHUNK AT seg031:1FA3 SIZE 0000000D BYTES
seg031:20CC
seg031:20CC                 push    bp
seg031:20CD                 mov     bp, sp
seg031:20CF                 sub     sp, 4
seg031:20D2                 xor     bh, bh
seg031:20D4                 mov     [bp+var_2], bh
seg031:20D7                 mov     ax, [bp+arg_2]
seg031:20DA                 mov     cx, ax
seg031:20DC                 mov     [bp+var_4], 0
seg031:20E0                 test    ax, 8000h
seg031:20E3                 jnz     short loc_1AF55
seg031:20E5                 test    ax, 4000h
seg031:20E8                 jnz     short loc_1AF51
seg031:20EA                 test    byte_2B6C3, 80h
seg031:20EF                 jnz     short loc_1AF55
seg031:20F1
seg031:20F1 loc_1AF51:                              ; CODE XREF: sub_1AF2C+1C␘j
seg031:20F1                 mov     [bp+var_4], 80h ; 'Ç'
seg031:20F5
seg031:20F5 loc_1AF55:                              ; CODE XREF: sub_1AF2C+17␘j
seg031:20F5                                         ; sub_1AF2C+23␘j
seg031:20F5                 mov     dx, [bp+arg_0]
seg031:20F8                 and     al, 3
seg031:20FA                 or      al, bh
seg031:20FC                 mov     ah, 3Dh
seg031:20FE                 int     21h             ; DOS - 2+ - OPEN DISK FILE WITH HANDLE
seg031:20FE                                         ; DS:DX -> ASCIZ filename
seg031:20FE                                         ; AL = access mode
seg031:20FE                                         ; 0 - read, 1 - write, 2 - read & write
seg031:2100                 jnb     short loc_1AF74
seg031:2102                 cmp     ax, 2
seg031:2105                 jnz     short loc_1AF70
seg031:2107                 test    cx, 100h
seg031:210B                 jz      short loc_1AF70
seg031:210D                 jmp     loc_1B011
seg031:2110 ; ---------------------------------------------------------------------------
seg031:2110
seg031:2110 loc_1AF70:                              ; CODE XREF: sub_1AF2C+39␘j
seg031:2110                                         ; sub_1AF2C+3F␘j ...
seg031:2110                 stc
seg031:2111                 jmp     loc_1AE03
seg031:2114 ; ---------------------------------------------------------------------------
seg031:2114
seg031:2114 loc_1AF74:                              ; CODE XREF: sub_1AF2C+34␘j
seg031:2114                 xchg    ax, bx
seg031:2115                 mov     ax, cx
seg031:2117                 and     ax, 500h
seg031:211A                 cmp     ax, 500h
seg031:211D                 jnz     short loc_1AF88
seg031:211F                 mov     ah, 3Eh
seg031:2121                 int     21h             ; DOS - 2+ - CLOSE A FILE WITH HANDLE
seg031:2121                                         ; BX = file handle
seg031:2123                 mov     ax, 1100h
seg031:2126                 jmp     short loc_1AF70
seg031:2128 ; ---------------------------------------------------------------------------
seg031:2128
seg031:2128 loc_1AF88:                              ; CODE XREF: sub_1AF2C+51␘j
seg031:2128                 mov     [bp+var_3], 1
seg031:212C                 mov     ax, 4400h
seg031:212F                 int     21h             ; DOS - 2+ - IOCTL - GET DEVICE INFORMATION
seg031:212F                                         ; BX = file or device handle
seg031:2131                 test    dl, 80h
seg031:2134                 jz      short loc_1AF9A
seg031:2136                 or      [bp+var_4], 40h
seg031:213A
seg031:213A loc_1AF9A:                              ; CODE XREF: sub_1AF2C+68␘j
seg031:213A                 test    [bp+var_4], 40h
seg031:213E                 jz      short loc_1AFA3
seg031:2140                 jmp     loc_1B078
seg031:2143 ; ---------------------------------------------------------------------------
seg031:2143
seg031:2143 loc_1AFA3:                              ; CODE XREF: sub_1AF2C+72␘j
seg031:2143                 mov     ax, [bp+arg_2]
seg031:2146                 test    ax, 200h
seg031:2149                 jz      short loc_1AFC8
seg031:214B                 test    ax, 3
seg031:214E                 jz      short loc_1AFB9
seg031:2150                 xor     cx, cx
seg031:2152                 mov     ah, 40h
seg031:2154                 int     21h             ; DOS - 2+ - WRITE TO FILE WITH HANDLE
seg031:2154                                         ; BX = file handle, CX = number of bytes to write, DS:DX -> buffer
seg031:2156                 jmp     loc_1B078
seg031:2159 ; ---------------------------------------------------------------------------
seg031:2159
seg031:2159 loc_1AFB9:                              ; CODE XREF: sub_1AF2C+82␘j
seg031:2159                 mov     ah, 3Eh
seg031:215B                 int     21h             ; DOS - 2+ - CLOSE A FILE WITH HANDLE
seg031:215B                                         ; BX = file handle
seg031:215D                 mov     dx, [bp+arg_0]
seg031:2160                 mov     ax, 4300h
seg031:2163                 int     21h             ; DOS - 2+ - GET FILE ATTRIBUTES
seg031:2163                                         ; DS:DX -> ASCIZ file name or directory
seg031:2163                                         ; name without trailing slash
seg031:2165                 jmp     short loc_1B02E
seg031:2165 ; ---------------------------------------------------------------------------
seg031:2167                 align 2
seg031:2168
seg031:2168 loc_1AFC8:                              ; CODE XREF: sub_1AF2C+7D␘j
seg031:2168                 test    [bp+var_4], 80h
seg031:216C                 jnz     short loc_1AFD1
seg031:216E                 jmp     loc_1B078
seg031:2171 ; ---------------------------------------------------------------------------
seg031:2171
seg031:2171 loc_1AFD1:                              ; CODE XREF: sub_1AF2C+A0␘j
seg031:2171                 test    ax, 2
seg031:2174                 jnz     short loc_1AFD9
seg031:2176                 jmp     loc_1B078
seg031:2179 ; ---------------------------------------------------------------------------
seg031:2179
seg031:2179 loc_1AFD9:                              ; CODE XREF: sub_1AF2C+A8␘j
seg031:2179                 mov     cx, 0FFFFh
seg031:217C                 mov     dx, cx
seg031:217E                 mov     ax, 4202h
seg031:2181                 int     21h             ; DOS - 2+ - MOVE FILE READ/WRITE POINTER (LSEEK)
seg031:2181                                         ; AL = method: offset from end of file
seg031:2183                 neg     cx
seg031:2185                 lea     dx, [bp-1]
seg031:2188                 mov     ah, 3Fh
seg031:218A                 int     21h             ; DOS - 2+ - READ FROM FILE WITH HANDLE
seg031:218A                                         ; BX = file handle, CX = number of bytes to read
seg031:218A                                         ; DS:DX -> buffer
seg031:218C                 or      ax, ax
seg031:218E                 jz      short loc_1B005
seg031:2190                 cmp     [bp+var_1], 1Ah
seg031:2194                 jnz     short loc_1B005
seg031:2196                 neg     cx
seg031:2198                 mov     dx, cx
seg031:219A                 mov     ax, 4202h
seg031:219D                 int     21h             ; DOS - 2+ - MOVE FILE READ/WRITE POINTER (LSEEK)
seg031:219D                                         ; AL = method: offset from end of file
seg031:219F                 xor     cx, cx
seg031:21A1                 mov     ah, 40h
seg031:21A3                 int     21h             ; DOS - 2+ - WRITE TO FILE WITH HANDLE
seg031:21A3                                         ; BX = file handle, CX = number of bytes to write, DS:DX -> buffer
seg031:21A5
seg031:21A5 loc_1B005:                              ; CODE XREF: sub_1AF2C+C2␘j
seg031:21A5                                         ; sub_1AF2C+C8␘j
seg031:21A5                 xor     cx, cx
seg031:21A7                 mov     dx, cx
seg031:21A9                 mov     ax, 4200h
seg031:21AC                 int     21h             ; DOS - 2+ - MOVE FILE READ/WRITE POINTER (LSEEK)
seg031:21AC                                         ; AL = method: offset from beginning of file
seg031:21AE                 jmp     short loc_1B078
seg031:21AE ; ---------------------------------------------------------------------------
seg031:21B0                 db 90h
seg031:21B1 ; ---------------------------------------------------------------------------
seg031:21B1
seg031:21B1 loc_1B011:                              ; CODE XREF: sub_1AF2C+41␘j
seg031:21B1                 mov     [bp+var_3], 0
seg031:21B5                 mov     cx, [bp+arg_4]
seg031:21B8                 call    sub_1B0BF
seg031:21BB                 mov     [bp+arg_4], cx
seg031:21BE                 test    [bp+var_2], 0FFh
seg031:21C2                 jnz     short loc_1B02B
seg031:21C4                 test    [bp+arg_2], 2
seg031:21C9                 jnz     short loc_1B02E
seg031:21CB
seg031:21CB loc_1B02B:                              ; CODE XREF: sub_1AF2C+F6␘j
seg031:21CB                 and     cl, 0FEh
seg031:21CE
seg031:21CE loc_1B02E:                              ; CODE XREF: sub_1AF2C+99␘j
seg031:21CE                                         ; sub_1AF2C+FD␘j
seg031:21CE                 mov     dx, [bp+arg_0]
seg031:21D1                 mov     ah, 3Ch
seg031:21D3                 int     21h             ; DOS - 2+ - CREATE A FILE WITH HANDLE (CREAT)
seg031:21D3                                         ; CX = attributes for file
seg031:21D3                                         ; DS:DX -> ASCIZ filename (may include drive and path)
seg031:21D5                 jnb     short loc_1B03A
seg031:21D7
seg031:21D7 loc_1B037:                              ; CODE XREF: sub_1AF2C+12F␙j
seg031:21D7                                         ; sub_1AF2C+14A␙j
seg031:21D7                 jmp     loc_1AE03
seg031:21DA ; ---------------------------------------------------------------------------
seg031:21DA
seg031:21DA loc_1B03A:                              ; CODE XREF: sub_1AF2C+109␘j
seg031:21DA                 xchg    ax, bx
seg031:21DB                 test    [bp+var_2], 0FFh
seg031:21DF                 jnz     short loc_1B048
seg031:21E1                 test    [bp+arg_2], 2
seg031:21E6                 jnz     short loc_1B078
seg031:21E8
seg031:21E8 loc_1B048:                              ; CODE XREF: sub_1AF2C+113␘j
seg031:21E8                 mov     ah, 3Eh
seg031:21EA                 int     21h             ; DOS - 2+ - CLOSE A FILE WITH HANDLE
seg031:21EA                                         ; BX = file handle
seg031:21EC                 mov     al, byte ptr [bp+arg_2]
seg031:21EF                 and     al, 3
seg031:21F1                 or      al, [bp+var_2]
seg031:21F4                 mov     dx, [bp+arg_0]
seg031:21F7                 mov     ah, 3Dh
seg031:21F9                 int     21h             ; DOS - 2+ - OPEN DISK FILE WITH HANDLE
seg031:21F9                                         ; DS:DX -> ASCIZ filename
seg031:21F9                                         ; AL = access mode
seg031:21F9                                         ; 0 - read, 1 - write, 2 - read & write
seg031:21FB                 jb      short loc_1B037
seg031:21FD                 xchg    ax, bx
seg031:21FE                 test    [bp+var_3], 1
seg031:2202                 jnz     short loc_1B078
seg031:2204                 test    [bp+arg_4], 1
seg031:2209                 jz      short loc_1B078
seg031:220B                 or      cl, 1
seg031:220E                 mov     dx, [bp+arg_0]
seg031:2211                 mov     ax, 4301h
seg031:2214                 int     21h             ; DOS - 2+ - SET FILE ATTRIBUTES
seg031:2214                                         ; DS:DX -> ASCIZ file name
seg031:2214                                         ; CX = file attribute bits
seg031:2216                 jb      short loc_1B037
seg031:2218
seg031:2218 loc_1B078:                              ; CODE XREF: sub_1AF2C+74␘j
seg031:2218                                         ; sub_1AF2C+8A␘j ...
seg031:2218                 test    [bp+var_4], 40h
seg031:221C                 jnz     short loc_1B0BB
seg031:221E                 mov     dx, [bp+arg_0]
seg031:2221                 mov     ax, 4300h
seg031:2224                 int     21h             ; DOS - 2+ - GET FILE ATTRIBUTES
seg031:2224                                         ; DS:DX -> ASCIZ file name or directory
seg031:2224                                         ; name without trailing slash
seg031:2226                 mov     ax, cx
seg031:2228                 xor     cl, cl
seg031:222A                 and     ax, 1
seg031:222D                 jz      short loc_1B091
seg031:222F                 mov     cl, 10h
seg031:2231
seg031:2231 loc_1B091:                              ; CODE XREF: sub_1AF2C+161␘j
seg031:2231                 test    [bp+arg_2], 8
seg031:2236                 jz      short loc_1B09B
seg031:2238                 or      cl, 20h
seg031:223B
seg031:223B loc_1B09B:                              ; CODE XREF: sub_1AF2C+16A␘j
seg031:223B                                         ; sub_1AF2C+191␙j
seg031:223B                 cmp     bx, word_2B440
seg031:223F                 jb      short loc_1B0AB
seg031:2241                 mov     ah, 3Eh
seg031:2243                 int     21h             ; DOS - 2+ - CLOSE A FILE WITH HANDLE
seg031:2243                                         ; BX = file handle
seg031:2245                 mov     ax, 1800h
seg031:2248                 jmp     loc_1AF70
seg031:224B ; ---------------------------------------------------------------------------
seg031:224B
seg031:224B loc_1B0AB:                              ; CODE XREF: sub_1AF2C+173␘j
seg031:224B                 or      cl, [bp+var_4]
seg031:224E                 or      cl, 1
seg031:2251                 mov     [bx-3C9Eh], cl
seg031:2255                 mov     ax, bx
seg031:2257                 mov     sp, bp
seg031:2259                 pop     bp
seg031:225A                 retf
seg031:225B ; ---------------------------------------------------------------------------
seg031:225B
seg031:225B loc_1B0BB:                              ; CODE XREF: sub_1AF2C+150␘j
seg031:225B                 xor     cl, cl
seg031:225D                 jmp     short loc_1B09B
seg031:225D sub_1AF2C       endp
seg031:225D
seg031:225F
