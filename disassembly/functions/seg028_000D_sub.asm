seg028:000D ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg028:000D
seg028:000D ; Attributes: bp-based frame
seg028:000D
seg028:000D sub_18ABD       proc far                ; CODE XREF: sub_7BC+19␘P
seg028:000D                                         ; sub_84C+28␘P ...
seg028:000D
seg028:000D arg_0           = word ptr  6
seg028:000D
seg028:000D                 push    bp
seg028:000E                 mov     bp, sp
seg028:0010                 push    si
seg028:0011                 push    di
seg028:0012                 cld
seg028:0013                 mov     ax, [bp+arg_0]
seg028:0016                 cmp     ax, 14h
seg028:0019                 jg      short loc_18AE2
seg028:001B                 mov     byte_2AD33, al
seg028:001E                 or      ax, ax
seg028:0020                 jge     short loc_18AD7
seg028:0022                 mov     ah, 0Fh
seg028:0024                 int     10h             ; - VIDEO - GET CURRENT VIDEO MODE
seg028:0024                                         ; Return: AH = number of columns on screen
seg028:0024                                         ; AL = current video mode
seg028:0024                                         ; BH = current active display page
seg028:0026                 cbw
seg028:0027
seg028:0027 loc_18AD7:                              ; CODE XREF: sub_18ABD+13␘j
seg028:0027                 lea     bx, aColors     ; "colors\n"
seg028:002B                 add     bx, ax
seg028:002D                 add     bx, ax
seg028:002F                 jmp     word ptr cs:[bx]
seg028:0032 ; ---------------------------------------------------------------------------
seg028:0032
seg028:0032 loc_18AE2:                              ; CODE XREF: sub_18ABD+C␘j
seg028:0032                 jmp     loc_18D17
seg028:0032 ; ---------------------------------------------------------------------------
seg028:0035                 db 33h, 0C0h, 8Eh, 0C0h, 0BFh, 49h, 4, 8Dh, 36h, 9Bh, 0C2h
seg028:0035                 db 0B9h, 10h, 0, 0F3h, 0A4h, 0BAh, 0BFh, 3, 0B0h, 3, 0EEh
seg028:0035                 db 0B2h, 0B8h, 32h, 0C0h, 0EEh, 0B2h, 0B4h, 0B9h, 9, 0
seg028:0035                 db 8Dh, 36h, 0B9h, 0C2h
seg028:0059 ; ---------------------------------------------------------------------------
seg028:0059
seg028:0059 loc_18B09:                              ; CODE XREF: sub_18ABD+4E␙j
seg028:0059                 lodsw
seg028:005A                 out     dx, ax          ; Video: CRT cntrlr addr
seg028:005A                                         ; horizontal total
seg028:005B                 loop    loc_18B09
seg028:005D                 mov     ax, 0B000h
seg028:0060                 mov     es, ax
seg028:0062                 assume es:nothing
seg028:0062                 xor     ax, ax
seg028:0064                 mov     cx, 8000h
seg028:0067                 xor     di, di
seg028:0069                 rep stosw
seg028:006B                 mov     dl, 0B8h ; '+'
seg028:006D                 mov     al, 0Ah
seg028:006F                 out     dx, al
seg028:0070                 push    ds
seg028:0071                 mov     ax, 0F000h
seg028:0074                 mov     ds, ax
seg028:0076                 assume ds:nothing
seg028:0076                 mov     dx, 0FA6Eh
seg028:0079                 mov     al, 43h ; 'C'
seg028:007B                 mov     ah, 25h
seg028:007D                 int     21h             ; DOS - SET INTERRUPT VECTOR
seg028:007D                                         ; AL = interrupt number
seg028:007D                                         ; DS:DX = new vector to be used for specified interrupt
seg028:007F                 pop     ds
seg028:0080                 assume ds:dseg
seg028:0080                 jmp     short loc_18BA6
seg028:0080 ; ---------------------------------------------------------------------------
seg028:0082                 db 0B0h, 13h, 32h, 0E4h, 0CDh, 10h, 0BAh, 0C4h, 3, 0B0h
seg028:0082                 db 4, 0EEh, 42h, 0ECh, 24h, 0F7h, 0Ch, 4, 0EEh, 0BAh, 0CEh
seg028:0082                 db 3, 0B0h, 5, 0EEh, 42h, 0ECh, 24h, 0EFh, 0EEh, 4Ah, 0B0h
seg028:0082                 db 6, 0EEh, 42h, 0ECh, 24h, 0FDh, 0EEh, 0BAh, 0C4h, 3
seg028:0082                 db 0B0h, 2, 0B4h, 0Fh, 0EFh, 0B8h, 0, 0A0h, 8Eh, 0C0h
seg028:0082                 db 33h, 0C0h, 0B9h, 0, 80h, 33h, 0FFh, 0F3h, 0ABh, 0BAh
seg028:0082                 db 0D4h, 3, 0B0h, 14h, 0EEh, 42h, 0ECh, 24h, 0BFh, 0EEh
seg028:0082                 db 4Ah, 0B0h, 17h, 0EEh, 42h, 0ECh, 0Ch, 40h, 0EEh, 0EBh
seg028:0082                 db 21h, 50h, 1Eh, 0B8h, 0, 0F0h, 8Eh, 0D8h, 0BAh, 6Eh
seg028:0082                 db 0FAh, 0B0h, 43h, 0B4h, 25h, 0CDh, 21h, 1Fh, 58h, 8Ah
seg028:0082                 db 1Eh, 53h, 0BCh, 0A2h, 53h, 0BCh, 0Ah, 0DBh, 7Ch, 4
seg028:0082                 db 32h, 0E4h, 0CDh, 10h
seg028:00F6 ; ---------------------------------------------------------------------------
seg028:00F6
seg028:00F6 loc_18BA6:                              ; CODE XREF: sub_18ABD+73␘j
seg028:00F6                 mov     bl, byte_2AD33
seg028:00FA                 xor     bh, bh
seg028:00FC                 shl     bx, 1
seg028:00FE                 mov     word_2AD2E, bx
seg028:0102                 add     bx, 2
seg028:0105                 xor     ax, ax
seg028:0107                 mov     byte_2AD2A, al
seg028:010A                 mov     byte_2AD2D, al
seg028:010D                 mov     byte_2AD34, al
seg028:0110                 mov     byte_2AD2B, al
seg028:0113                 mov     byte_2AD2C, al
seg028:0116                 mov     word_2B3AB, ax
seg028:0119                 mov     word_2AD35, ax
seg028:011C                 mov     word_2AD37, ax
seg028:011F                 mov     ax, [bx-3F76h]
seg028:0123                 mov     word_2B16A, ax
seg028:0126                 or      al, al
seg028:0128                 jz      short loc_18C1B
seg028:012A                 mov     dx, ax
seg028:012C                 mov     ax, [bx-3FCEh]
seg028:0130                 mov     word_2B112, ax
seg028:0133                 push    bx
seg028:0134                 mov     bx, 100h
seg028:0137                 lea     di, unk_2AD96
seg028:013B
seg028:013B loc_18BEB:                              ; CODE XREF: sub_18ABD+13B␙j
seg028:013B                 mov     cx, dx
seg028:013D                 xor     ax, ax
seg028:013F
seg028:013F loc_18BEF:                              ; CODE XREF: sub_18ABD+137␙j
seg028:013F                 mov     [di], al
seg028:0141                 inc     ax
seg028:0142                 inc     di
seg028:0143                 dec     bx
seg028:0144                 loop    loc_18BEF
seg028:0146                 or      bx, bx
seg028:0148                 jnz     short loc_18BEB
seg028:014A                 mov     bx, 100h
seg028:014D                 lea     di, unk_2AE96
seg028:0151
seg028:0151 loc_18C01:                              ; CODE XREF: sub_18ABD+15B␙j
seg028:0151                 mov     cx, dx
seg028:0153                 lea     si, word_2B112
seg028:0157                 mov     si, [si]
seg028:0159
seg028:0159 loc_18C09:                              ; CODE XREF: sub_18ABD+157␙j
seg028:0159                 mov     ax, [si]
seg028:015B                 mov     [di], ax
seg028:015D                 add     si, 2
seg028:0160                 add     di, 2
seg028:0163                 dec     bx
seg028:0164                 loop    loc_18C09
seg028:0166                 or      bx, bx
seg028:0168                 jnz     short loc_18C01
seg028:016A                 pop     bx
seg028:016B
seg028:016B loc_18C1B:                              ; CODE XREF: sub_18ABD+11B␘j
seg028:016B                 mov     ax, [bx-3F1Eh]
seg028:016F                 mov     word_2B1C2, ax
seg028:0172                 mov     ax, [bx-3EF2h]
seg028:0176                 mov     word_2B1EE, ax
seg028:0179                 mov     byte_2B3C0, 19h
seg028:017E                 mov     ax, [bx-3F4Ah]
seg028:0182                 mov     word_2B196, ax
seg028:0185                 mov     ax, [bx-3EC6h]
seg028:0189                 mov     word_2B21A, ax
seg028:018C                 mov     word_2AD72, ax
seg028:018F                 mov     word_2AD70, ax
seg028:0192                 mov     word_2AD74, ax
seg028:0195                 lea     di, unk_2AD76
seg028:0199                 mov     cx, offset unk_1F0F0
seg028:019C                 mov     dx, ds
seg028:019E                 mov     es, dx
seg028:01A0                 assume es:dseg
seg028:01A0                 rep stosw
seg028:01A2                 mov     ax, [bx-3FA2h]
seg028:01A6                 mov     word_2B13E, ax
seg028:01A9                 mov     ax, [bx-3E9Ah]
seg028:01AD                 mov     word_2B246, ax
seg028:01B0                 dec     ax
seg028:01B1                 xor     dx, dx
seg028:01B3                 mov     word_2AD3D, dx
seg028:01B7                 mov     word_2AD3B, ax
seg028:01BA                 mov     word_2AD45, dx
seg028:01BE                 mov     word_2AD43, ax
seg028:01C1                 mov     ax, [bx-3E6Eh]
seg028:01C5                 mov     word_2B272, ax
seg028:01C8                 dec     ax
seg028:01C9                 mov     word_2AD41, dx
seg028:01CD                 mov     word_2AD3F, ax
seg028:01D0                 mov     word_2AD49, dx
seg028:01D4                 mov     word_2AD47, ax
seg028:01D7                 mov     al, byte_2AD33
seg028:01DA                 cmp     al, 0Bh
seg028:01DC                 jl      short loc_18CB8
seg028:01DE                 cmp     al, 0Ch
seg028:01E0                 jg      short loc_18CBA
seg028:01E2                 lea     di, unk_2AD76
seg028:01E6                 mov     dx, 0B800h
seg028:01E9                 mov     [di+2], dx
seg028:01EC                 cmp     al, 0Ch
seg028:01EE                 jnz     short loc_18CB8
seg028:01F0                 mov     word_2AD45, 28h ; '('
seg028:01F6                 mov     word_2AD43, 2A7h
seg028:01FC                 mov     word_2AD49, 18h
seg028:0202                 mov     word_2AD47, 143h
seg028:0208
seg028:0208 loc_18CB8:                              ; CODE XREF: sub_18ABD+1CF␘j
seg028:0208                                         ; sub_18ABD+1E1␘j
seg028:0208                 jmp     short loc_18D17
seg028:020A ; ---------------------------------------------------------------------------
seg028:020A
seg028:020A loc_18CBA:                              ; CODE XREF: sub_18ABD+1D3␘j
seg028:020A                 cmp     al, 12h
seg028:020C                 jg      short loc_18D17
seg028:020E                 push    ax
seg028:020F                 mov     al, 1
seg028:0211                 mov     ah, 0Fh
seg028:0213                 push    dx
seg028:0214                 mov     dx, 3CEh
seg028:0217                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg028:0217                                         ; unknown register
seg028:0218                 pop     dx
seg028:0219                 pop     ax
seg028:021A                 cmp     al, 10h
seg028:021C                 jle     short loc_18D17
seg028:021E                 mov     byte_2B3C0, 1Eh
seg028:0223                 cmp     al, 12h
seg028:0225                 jz      short loc_18CF6
seg028:0227                 mov     ah, 10h
seg028:0229                 mov     al, ah
seg028:022B                 mov     bx, 1
seg028:022E                 mov     ch, 3Fh ; '?'
seg028:0230                 mov     cl, ch
seg028:0232                 mov     dh, ch
seg028:0234                 int     10h             ; - VIDEO - SET INDIVIDUAL DAC REGISTER (EGA, VGA/MCGA)
seg028:0234                                         ; BX = register number, CH = new value for green (0-63)
seg028:0234                                         ; CL = new value for blue (0-63), DH = new value for red (0-63)
seg028:0236                 lea     dx, unk_2B0C2
seg028:023A                 mov     ax, ds
seg028:023C                 mov     es, ax
seg028:023E                 mov     ah, 10h
seg028:0240                 mov     al, 2
seg028:0242                 int     10h             ; - VIDEO - SET ALL PALETTE REGISTERS (Jr, PS, TANDY 1000, EGA, VGA)
seg028:0242                                         ; ES:DX -> 17-byte palette register list
seg028:0244                 jmp     short loc_18D17
seg028:0246 ; ---------------------------------------------------------------------------
seg028:0246
seg028:0246 loc_18CF6:                              ; CODE XREF: sub_18ABD+218␘j
seg028:0246                 lea     dx, unk_2B0E2
seg028:024A                 mov     ax, ds
seg028:024C                 mov     es, ax
seg028:024E                 mov     ah, 10h
seg028:0250                 mov     al, 12h
seg028:0252                 xor     bx, bx
seg028:0254                 mov     cx, 10h
seg028:0257                 int     10h             ; - VIDEO - SET BLOCK OF DAC REGISTERS (EGA, VGA/MCGA)
seg028:0257                                         ; BX = starting color register, CX = number of registers to set
seg028:0257                                         ; ES:DX -> table of 3*CX bytes where each 3 byte group represents one
seg028:0257                                         ; byte each of red, green and blue (0-63)
seg028:0259                 lea     dx, unk_2B0D2
seg028:025D                 mov     ax, ds
seg028:025F                 mov     es, ax
seg028:0261                 mov     ah, 10h
seg028:0263                 mov     al, 2
seg028:0265                 int     10h             ; - VIDEO - SET ALL PALETTE REGISTERS (Jr, PS, TANDY 1000, EGA, VGA)
seg028:0265                                         ; ES:DX -> 17-byte palette register list
seg028:0267
seg028:0267 loc_18D17:                              ; CODE XREF: sub_18ABD:loc_18AE2␘j
seg028:0267                                         ; sub_18ABD:loc_18CB8␘j ...
seg028:0267                 xor     ax, ax
seg028:0269                 pop     di
seg028:026A                 pop     si
seg028:026B                 pop     bp
seg028:026C                 retf
seg028:026C sub_18ABD       endp
seg028:026C
seg028:026C ; ---------------------------------------------------------------------------
seg028:026D                 db 0E7h, 0, 0E7h, 0, 0E7h, 0, 0E7h, 0, 0D5h, 0, 0D5h, 0
seg028:026D                 db 0D5h, 0, 0E7h, 0, 0D5h, 0, 0D5h, 0, 0D5h, 0, 35h, 0
seg028:026D                 db 35h, 0, 0E7h, 0, 0E7h, 0, 0E7h, 0, 0E7h, 0, 0E7h, 0
seg028:026D                 db 0E7h, 0, 0E7h, 0
seg028:026D seg028          ends
seg028:026D
seg029:0005 ; ---------------------------------------------------------------------------
seg029:0005
seg029:0005 ; Segment type: Pure code
seg029:0005 seg029          segment byte public 'CODE' use16
seg029:0005                 assume cs:seg029
seg029:0005                 ;org 5
seg029:0005                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg029:0005                 db 82h, 0
seg029:0007
