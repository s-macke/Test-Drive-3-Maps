seg031:01BB ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:01BB
seg031:01BB ; Attributes: bp-based frame
seg031:01BB
seg031:01BB sub_1901B       proc near               ; CODE XREF: start+C1␘p
seg031:01BB                                         ; DATA XREF: dseg:off_2B3C6␙o
seg031:01BB
seg031:01BB arg_2           = word ptr  6
seg031:01BB
seg031:01BB                 push    bp
seg031:01BC                 mov     bp, sp
seg031:01BE
seg031:01BE loc_1901E:                              ; CODE XREF: sub_19004+15␘j
seg031:01BE                 mov     si, 0CB72h
seg031:01C1                 mov     di, 0CB72h
seg031:01C4                 call    sub_1908F
seg031:01C7                 mov     si, 0CB72h
seg031:01CA                 mov     di, 0CB76h
seg031:01CD                 call    sub_1908F
seg031:01D0                 call    sub_199B0
seg031:01D5                 or      ax, ax
seg031:01D7                 jz      short loc_19044
seg031:01D9                 cmp     [bp+arg_2], 0
seg031:01DD                 jnz     short loc_19044
seg031:01DF                 mov     [bp+arg_2], 0FFh
seg031:01E4
seg031:01E4 loc_19044:                              ; CODE XREF: sub_1901B+1C␘j
seg031:01E4                                         ; sub_1901B+22␘j
seg031:01E4                 mov     cx, 0Fh
seg031:01E7                 mov     bx, 5
seg031:01EA
seg031:01EA loc_1904A:                              ; CODE XREF: sub_1901B+3B␙j
seg031:01EA                 test    byte ptr [bx-3C9Eh], 1
seg031:01EF                 jz      short loc_19055
seg031:01F1                 mov     ah, 3Eh
seg031:01F3                 int     21h             ; DOS - 2+ - CLOSE A FILE WITH HANDLE
seg031:01F3                                         ; BX = file handle
seg031:01F5
seg031:01F5 loc_19055:                              ; CODE XREF: sub_1901B+34␘j
seg031:01F5                 inc     bx
seg031:01F6                 loop    loc_1904A
seg031:01F8                 call    sub_19062
seg031:01FB                 mov     ax, [bp+arg_2]
seg031:01FE                 mov     ah, 4Ch
seg031:0200                 int     21h             ; DOS - 2+ - QUIT WITH EXIT CODE (EXIT)
seg031:0200 sub_1901B       endp                    ; AL = exit code
seg031:0200
seg031:0202
