seg005:19EC ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:19EC
seg005:19EC
seg005:19EC sub_D90C        proc near               ; CODE XREF: sub_D6F5+B7␘p
seg005:19EC                                         ; sub_D6F5+C3␘p ...
seg005:19EC                 push    bx
seg005:19ED                 push    dx
seg005:19EE                 mov     dx, 3CEh
seg005:19F1                 mov     cx, 8008h
seg005:19F4
seg005:19F4 loc_D914:                               ; CODE XREF: sub_D90C+4F␙j
seg005:19F4                                         ; sub_D90C+53␙j ...
seg005:19F4                 lodsw
seg005:19F5                 mov     bx, ax
seg005:19F7                 lodsw
seg005:19F8                 cmp     bl, bh
seg005:19FA                 jz      short loc_D991
seg005:19FC                 cmp     al, bl
seg005:19FE                 jz      short loc_D964
seg005:1A00                 xchg    ax, bx
seg005:1A01                 mov     cl, ah
seg005:1A03                 mov     ah, al
seg005:1A05                 sub     al, al
seg005:1A07                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1A07                                         ; set/reset.
seg005:1A07                                         ; Data bits 0-3 select planes for write mode 00
seg005:1A08                 mov     ah, ch
seg005:1A0A                 mov     al, 8
seg005:1A0C                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1A0C                                         ; unknown register
seg005:1A0D                 and     es:[di], al
seg005:1A10                 ror     ch, 1
seg005:1A12                 mov     ah, cl
seg005:1A14                 mov     cl, al
seg005:1A16                 sub     al, al
seg005:1A18                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1A18                                         ; set/reset.
seg005:1A18                                         ; Data bits 0-3 select planes for write mode 00
seg005:1A19                 mov     ax, cx
seg005:1A1B                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1A1B                                         ; unknown register
seg005:1A1C                 and     es:[di], al
seg005:1A1F                 ror     ch, 1
seg005:1A21                 mov     ah, bl
seg005:1A23                 sub     al, al
seg005:1A25                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1A25                                         ; set/reset.
seg005:1A25                                         ; Data bits 0-3 select planes for write mode 00
seg005:1A26                 mov     ax, cx
seg005:1A28                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1A28                                         ; unknown register
seg005:1A29                 and     es:[di], al
seg005:1A2C                 ror     ch, 1
seg005:1A2E                 mov     ah, bh
seg005:1A30                 sub     al, al
seg005:1A32                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1A32                                         ; set/reset.
seg005:1A32                                         ; Data bits 0-3 select planes for write mode 00
seg005:1A33                 mov     ax, cx
seg005:1A35
seg005:1A35 loc_D955:                               ; CODE XREF: sub_D90C+83␙j
seg005:1A35                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1A35                                         ; unknown register
seg005:1A36                 and     es:[di], al
seg005:1A39                 ror     ch, 1
seg005:1A3B                 jnb     short loc_D914
seg005:1A3D
seg005:1A3D loc_D95D:                               ; CODE XREF: sub_D90C+178␙j
seg005:1A3D                 inc     di
seg005:1A3E                 dec     bp
seg005:1A3F                 jnz     short loc_D914
seg005:1A41                 pop     dx
seg005:1A42                 pop     bx
seg005:1A43                 retn
seg005:1A44 ; ---------------------------------------------------------------------------
seg005:1A44
seg005:1A44 loc_D964:                               ; CODE XREF: sub_D90C+12␘j
seg005:1A44                 cmp     ah, bh
seg005:1A46                 jnz     short loc_D9C3
seg005:1A48                 or      ch, ch
seg005:1A4A                 jns     short loc_D96F
seg005:1A4C                 jmp     loc_DA64
seg005:1A4F ; ---------------------------------------------------------------------------
seg005:1A4F
seg005:1A4F loc_D96F:                               ; CODE XREF: sub_D90C+5E␘j
seg005:1A4F                                         ; sub_D90C+180␙j ...
seg005:1A4F                 mov     ah, bl
seg005:1A51                 sub     al, al
seg005:1A53                 out     dx, ax
seg005:1A54                 mov     ax, cx
seg005:1A56                 ror     ch, 1
seg005:1A58                 mov     bl, ch
seg005:1A5A                 ror     ch, 1
seg005:1A5C                 or      ah, ch
seg005:1A5E                 out     dx, ax
seg005:1A5F                 ror     ch, 1
seg005:1A61                 or      bl, ch
seg005:1A63                 and     es:[di], al
seg005:1A66                 mov     ah, bh
seg005:1A68                 sub     al, al
seg005:1A6A                 out     dx, ax
seg005:1A6B                 mov     al, cl
seg005:1A6D                 mov     ah, bl
seg005:1A6F                 jmp     short loc_D955
seg005:1A71 ; ---------------------------------------------------------------------------
seg005:1A71
seg005:1A71 loc_D991:                               ; CODE XREF: sub_D90C+E␘j
seg005:1A71                 cmp     al, bl
seg005:1A73                 jnz     short loc_DA14
seg005:1A75                 cmp     ah, bl
seg005:1A77                 jnz     short loc_D9F2
seg005:1A79                 or      ch, ch
seg005:1A7B                 jns     short loc_D9A0
seg005:1A7D                 jmp     loc_DA3F
seg005:1A80 ; ---------------------------------------------------------------------------
seg005:1A80
seg005:1A80 loc_D9A0:                               ; CODE XREF: sub_D90C+8F␘j
seg005:1A80                                         ; sub_D90C+14D␙j ...
seg005:1A80                 sub     al, al
seg005:1A82                 out     dx, ax
seg005:1A83                 mov     ax, cx
seg005:1A85                 ror     ch, 1
seg005:1A87                 or      ah, ch
seg005:1A89                 ror     ch, 1
seg005:1A8B                 or      ah, ch
seg005:1A8D                 ror     ch, 1
seg005:1A8F                 or      ah, ch
seg005:1A91                 out     dx, ax
seg005:1A92                 and     es:[di], al
seg005:1A95
seg005:1A95 loc_D9B5:                               ; CODE XREF: sub_D90C+E4␙j
seg005:1A95                                         ; sub_D90C+106␙j ...
seg005:1A95                 ror     ch, 1
seg005:1A97                 jnb     short loc_D9C0
seg005:1A99                 inc     di
seg005:1A9A
seg005:1A9A loc_D9BA:                               ; CODE XREF: sub_D90C+145␙j
seg005:1A9A                 dec     bp
seg005:1A9B                 jnz     short loc_D9C0
seg005:1A9D                 pop     dx
seg005:1A9E                 pop     bx
seg005:1A9F                 retn
seg005:1AA0 ; ---------------------------------------------------------------------------
seg005:1AA0
seg005:1AA0 loc_D9C0:                               ; CODE XREF: sub_D90C+AB␘j
seg005:1AA0                                         ; sub_D90C+AF␘j
seg005:1AA0                 jmp     loc_D914
seg005:1AA3 ; ---------------------------------------------------------------------------
seg005:1AA3
seg005:1AA3 loc_D9C3:                               ; CODE XREF: sub_D90C+5A␘j
seg005:1AA3                 xchg    ah, bl
seg005:1AA5                 sub     al, al
seg005:1AA7                 out     dx, ax
seg005:1AA8                 mov     ax, cx
seg005:1AAA                 ror     ch, 1
seg005:1AAC                 ror     ch, 1
seg005:1AAE                 or      ah, ch
seg005:1AB0                 out     dx, ax
seg005:1AB1                 and     es:[di], al
seg005:1AB4                 mov     ah, bh
seg005:1AB6                 sub     al, al
seg005:1AB8                 out     dx, ax
seg005:1AB9                 rol     ch, 1
seg005:1ABB                 mov     ax, cx
seg005:1ABD                 out     dx, ax
seg005:1ABE                 and     es:[di], al
seg005:1AC1                 ror     ch, 1
seg005:1AC3                 ror     ch, 1
seg005:1AC5                 mov     ah, bl
seg005:1AC7                 sub     al, al
seg005:1AC9                 out     dx, ax
seg005:1ACA                 mov     ax, cx
seg005:1ACC                 out     dx, ax
seg005:1ACD                 and     es:[di], al
seg005:1AD0                 jmp     short loc_D9B5
seg005:1AD2 ; ---------------------------------------------------------------------------
seg005:1AD2
seg005:1AD2 loc_D9F2:                               ; CODE XREF: sub_D90C+8B␘j
seg005:1AD2                 xchg    bh, ah
seg005:1AD4                 sub     al, al
seg005:1AD6                 out     dx, ax
seg005:1AD7                 mov     ax, cx
seg005:1AD9                 ror     ch, 1
seg005:1ADB                 or      ah, ch
seg005:1ADD                 ror     ch, 1
seg005:1ADF                 or      ah, ch
seg005:1AE1                 out     dx, ax
seg005:1AE2                 and     es:[di], al
seg005:1AE5                 sub     al, al
seg005:1AE7                 mov     ah, bl
seg005:1AE9                 out     dx, ax
seg005:1AEA                 ror     ch, 1
seg005:1AEC                 mov     ax, cx
seg005:1AEE                 out     dx, ax
seg005:1AEF                 and     es:[di], al
seg005:1AF2                 jmp     short loc_D9B5
seg005:1AF4 ; ---------------------------------------------------------------------------
seg005:1AF4
seg005:1AF4 loc_DA14:                               ; CODE XREF: sub_D90C+87␘j
seg005:1AF4                 xchg    ax, bx
seg005:1AF5                 sub     al, al
seg005:1AF7                 out     dx, ax
seg005:1AF8                 mov     ax, cx
seg005:1AFA                 ror     ch, 1
seg005:1AFC                 or      ah, ch
seg005:1AFE                 out     dx, ax
seg005:1AFF                 and     es:[di], al
seg005:1B02                 ror     ch, 1
seg005:1B04                 sub     al, al
seg005:1B06                 mov     ah, bl
seg005:1B08                 out     dx, ax
seg005:1B09                 mov     ax, cx
seg005:1B0B                 out     dx, ax
seg005:1B0C                 and     es:[di], al
seg005:1B0F                 ror     ch, 1
seg005:1B11                 sub     al, al
seg005:1B13                 mov     ah, bh
seg005:1B15                 out     dx, ax
seg005:1B16                 mov     ax, cx
seg005:1B18                 out     dx, ax
seg005:1B19                 and     es:[di], al
seg005:1B1C                 jmp     loc_D9B5
seg005:1B1F ; ---------------------------------------------------------------------------
seg005:1B1F
seg005:1B1F loc_DA3F:                               ; CODE XREF: sub_D90C+91␘j
seg005:1B1F                 lodsw
seg005:1B20                 cmp     ax, bx
seg005:1B22                 jnz     short loc_DA5C
seg005:1B24                 lodsw
seg005:1B25                 cmp     ax, bx
seg005:1B27                 jnz     short loc_DA54
seg005:1B29                 sub     al, al
seg005:1B2B                 out     dx, ax
seg005:1B2C                 mov     ax, 0FF08h
seg005:1B2F                 out     dx, ax
seg005:1B30                 stosb
seg005:1B31                 jmp     loc_D9BA
seg005:1B34 ; ---------------------------------------------------------------------------
seg005:1B34
seg005:1B34 loc_DA54:                               ; CODE XREF: sub_D90C+13B␘j
seg005:1B34                 sub     si, 4
seg005:1B37                 mov     ah, bl
seg005:1B39                 jmp     loc_D9A0
seg005:1B3C ; ---------------------------------------------------------------------------
seg005:1B3C
seg005:1B3C loc_DA5C:                               ; CODE XREF: sub_D90C+136␘j
seg005:1B3C                 sub     si, 2
seg005:1B3F                 mov     ah, bl
seg005:1B41                 jmp     loc_D9A0
seg005:1B44 ; ---------------------------------------------------------------------------
seg005:1B44
seg005:1B44 loc_DA64:                               ; CODE XREF: sub_D90C+60␘j
seg005:1B44                 lodsw
seg005:1B45                 cmp     ax, bx
seg005:1B47                 jnz     short loc_DA8F
seg005:1B49                 lodsw
seg005:1B4A                 cmp     ax, bx
seg005:1B4C                 jnz     short loc_DA87
seg005:1B4E                 sub     al, al
seg005:1B50                 out     dx, ax
seg005:1B51                 mov     ax, 5508h
seg005:1B54                 out     dx, ax
seg005:1B55                 and     es:[di], al
seg005:1B58                 sub     al, al
seg005:1B5A                 mov     ah, bl
seg005:1B5C                 out     dx, ax
seg005:1B5D                 mov     ax, 0AA08h
seg005:1B60                 out     dx, ax
seg005:1B61                 and     es:[di], al
seg005:1B64                 jmp     loc_D95D
seg005:1B67 ; ---------------------------------------------------------------------------
seg005:1B67
seg005:1B67 loc_DA87:                               ; CODE XREF: sub_D90C+160␘j
seg005:1B67                 sub     si, 4
seg005:1B6A                 mov     ah, bl
seg005:1B6C                 jmp     loc_D96F
seg005:1B6F ; ---------------------------------------------------------------------------
seg005:1B6F
seg005:1B6F loc_DA8F:                               ; CODE XREF: sub_D90C+15B␘j
seg005:1B6F                 sub     si, 2
seg005:1B72                 mov     ah, bl
seg005:1B74                 jmp     loc_D96F
seg005:1B74 sub_D90C        endp
seg005:1B74
seg005:1B77
