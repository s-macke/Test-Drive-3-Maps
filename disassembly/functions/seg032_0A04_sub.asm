seg032:0A04 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:0A04
seg032:0A04
seg032:0A04 sub_1BBA4       proc near               ; CODE XREF: seg032:0A00␘p
seg032:0A04                 push    ax
seg032:0A05                 push    bx
seg032:0A06                 push    cx
seg032:0A07                 push    es
seg032:0A08                 push    di
seg032:0A09                 mov     ax, 2
seg032:0A0C                 mov     byte ptr word_2BEEC, al
seg032:0A0F                 mov     word_2BEEE, 10h
seg032:0A15                 mov     byte ptr word_2BEEC+1, al
seg032:0A18                 mov     byte_2BEE9, ah
seg032:0A1C                 push    ds
seg032:0A1D                 pop     es
seg032:0A1E                 assume es:dseg
seg032:0A1E                 mov     di, 0CCD5h
seg032:0A21                 xor     bx, bx
seg032:0A23                 mov     ah, 1Bh
seg032:0A25                 call    sub_1B83E
seg032:0A28                 cmp     al, 1Bh
seg032:0A2A                 jnz     short loc_1BBF9
seg032:0A2C                 mov     byte ptr word_2BEEC+1, 18h
seg032:0A31                 mov     bl, byte_2BDE6
seg032:0A35                 les     di, [di]
seg032:0A37                 assume es:nothing
seg032:0A37                 mov     ax, es:[di]
seg032:0A3A                 mov     word_2BEE6, ax
seg032:0A3D                 mov     al, es:[di+2]
seg032:0A41                 mov     byte_2BEE8, al
seg032:0A44                 mov     byte ptr word_2BEEC, 10h
seg032:0A49                 test    al, 4
seg032:0A4B                 jz      short loc_1BC31
seg032:0A4D                 mov     byte ptr word_2BEEC, 8
seg032:0A52                 mov     byte_2BEE9, 1
seg032:0A57                 jmp     short loc_1BC31
seg032:0A59 ; ---------------------------------------------------------------------------
seg032:0A59
seg032:0A59 loc_1BBF9:                              ; CODE XREF: sub_1BBA4+26␘j
seg032:0A59                 mov     bl, 10h
seg032:0A5B                 mov     ah, 12h
seg032:0A5D                 call    sub_1B83E
seg032:0A60                 test    bl, 0FCh
seg032:0A63                 jnz     short loc_1BC3F
seg032:0A65                 mov     al, byte ptr word_2BEEA+1
seg032:0A68                 and     ax, 30h
seg032:0A6B                 cmp     al, 30h ; '0'
seg032:0A6D                 jnz     short loc_1BC11
seg032:0A6F                 inc     ah
seg032:0A71
seg032:0A71 loc_1BC11:                              ; CODE XREF: sub_1BBA4+69␘j
seg032:0A71                 cmp     ah, bh
seg032:0A73                 jnz     short loc_1BC3F
seg032:0A75                 mov     byte ptr word_2BEEC, 4
seg032:0A7A                 mov     byte_2BEE9, 1
seg032:0A7F                 and     cl, 0Fh
seg032:0A82                 sub     cl, 9
seg032:0A85                 jb      short loc_1BC31
seg032:0A87                 mov     ch, 4
seg032:0A89                 jz      short loc_1BC2D
seg032:0A8B                 mov     ch, 1
seg032:0A8D
seg032:0A8D loc_1BC2D:                              ; CODE XREF: sub_1BBA4+85␘j
seg032:0A8D                 mov     byte ptr word_2BEEC+1, ch
seg032:0A91
seg032:0A91 loc_1BC31:                              ; CODE XREF: sub_1BBA4+47␘j
seg032:0A91                                         ; sub_1BBA4+53␘j ...
seg032:0A91                 inc     bl
seg032:0A93                 xor     bh, bh
seg032:0A95                 mov     cl, 6
seg032:0A97                 shl     bx, cl
seg032:0A99                 mov     word_2BEEE, bx
seg032:0A9D                 jmp     short loc_1BC56
seg032:0A9F ; ---------------------------------------------------------------------------
seg032:0A9F
seg032:0A9F loc_1BC3F:                              ; CODE XREF: sub_1BBA4+5F␘j
seg032:0A9F                                         ; sub_1BBA4+6F␘j
seg032:0A9F                 mov     al, byte ptr word_2BEEA+1
seg032:0AA2                 and     al, 30h
seg032:0AA4                 cmp     al, 30h ; '0'
seg032:0AA6                 jnz     short loc_1BC56
seg032:0AA8                 dec     byte ptr word_2BEEC+1
seg032:0AAC                 dec     byte ptr word_2BEEC
seg032:0AB0                 mov     word_2BEEE, 4
seg032:0AB6
seg032:0AB6 loc_1BC56:                              ; CODE XREF: sub_1BBA4+99␘j
seg032:0AB6                                         ; sub_1BBA4+A2␘j
seg032:0AB6                 mov     dx, 0FFFFh
seg032:0AB9                 mov     ah, 0EFh ; 'n'
seg032:0ABB                 call    sub_1B83E
seg032:0ABE                 cmp     dl, 0FFh
seg032:0AC1                 jz      short loc_1BC83
seg032:0AC3                 cmp     byte ptr word_2BEEC, 1
seg032:0AC8                 jnz     short loc_1BC7D
seg032:0ACA                 mov     byte ptr word_2BEEC, 20h ; ' '
seg032:0ACF                 mov     word_2BEEE, 40h ; '@'
seg032:0AD5                 or      dh, dh
seg032:0AD7                 jnz     short loc_1BC83
seg032:0AD9                 shr     word_2BEEE, 1
seg032:0ADD
seg032:0ADD loc_1BC7D:                              ; CODE XREF: sub_1BBA4+C4␘j
seg032:0ADD                 mov     dx, 3BFh
seg032:0AE0                 mov     al, 0FDh ; '²'
seg032:0AE2                 out     dx, al          ; Printer Status Bits:
seg032:0AE2                                         ; 3: 0=printer signals an error
seg032:0AE2                                         ; 4: 1=printer is selected
seg032:0AE2                                         ; 5: 1=out of paper
seg032:0AE2                                         ; 6: 0=ready for next character
seg032:0AE2                                         ; 7: 0=busy or offline or error
seg032:0AE3
seg032:0AE3 loc_1BC83:                              ; CODE XREF: sub_1BBA4+BD␘j
seg032:0AE3                                         ; sub_1BBA4+D3␘j
seg032:0AE3                 pop     di
seg032:0AE4                 pop     es
seg032:0AE5                 pop     cx
seg032:0AE6                 pop     bx
seg032:0AE7                 pop     ax
seg032:0AE8                 retn
seg032:0AE8 sub_1BBA4       endp
seg032:0AE8
seg032:0AE9 ; [00000001 BYTES: COLLAPSED FUNCTION nullsub_4. PRESS KEYPAD "+" TO EXPAND]
seg032:0AEA ; ---------------------------------------------------------------------------
seg032:0AEA                 retn
seg032:0AEA ; ---------------------------------------------------------------------------
seg032:0AEB                 align 2
seg032:0AEC
