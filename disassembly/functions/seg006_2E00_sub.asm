seg006:2E00 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:2E00
seg006:2E00
seg006:2E00 sub_10C50       proc near               ; CODE XREF: sub_10A20+3C␘p
seg006:2E00                 mov     al, cl
seg006:2E02                 and     al, 3Fh
seg006:2E04                 mov     byte_2846E, al
seg006:2E07                 mov     si, bx
seg006:2E09                 push    di
seg006:2E0A                 sub     bx, bx
seg006:2E0C                 sub     ch, ch
seg006:2E0E                 mov     dl, 8
seg006:2E10                 mov     ah, byte_2846C
seg006:2E14                 sub     ah, byte_2846E
seg006:2E18                 shr     ah, 1
seg006:2E1A                 mov     byte_2A9C3, ah
seg006:2E1E                 mov     cl, byte_2A9C3
seg006:2E22                 sub     al, al
seg006:2E24                 cmp     al, cl
seg006:2E26                 jz      short loc_10C8D
seg006:2E28
seg006:2E28 loc_10C78:                              ; CODE XREF: sub_10C50+33␙j
seg006:2E28                                         ; sub_10C50+3B␙j
seg006:2E28                 rol     byte ptr [bx-4707h], 1
seg006:2E2C                 jnb     short loc_10C7F
seg006:2E2E                 stosb
seg006:2E2F
seg006:2E2F loc_10C7F:                              ; CODE XREF: sub_10C50+2C␘j
seg006:2E2F                 dec     dl
seg006:2E31                 jz      short loc_10C88
seg006:2E33                 loop    loc_10C78
seg006:2E35                 jmp     short loc_10C8D
seg006:2E35 ; ---------------------------------------------------------------------------
seg006:2E37                 align 2
seg006:2E38
seg006:2E38 loc_10C88:                              ; CODE XREF: sub_10C50+31␘j
seg006:2E38                 inc     bx
seg006:2E39                 mov     dl, 8
seg006:2E3B                 loop    loc_10C78
seg006:2E3D
seg006:2E3D loc_10C8D:                              ; CODE XREF: sub_10C50+26␘j
seg006:2E3D                                         ; sub_10C50+35␘j
seg006:2E3D                 mov     cl, byte_2846E
seg006:2E41
seg006:2E41 loc_10C91:                              ; CODE XREF: sub_10C50+4D␙j
seg006:2E41                                         ; sub_10C50+55␙j
seg006:2E41                 rol     byte ptr [bx-4707h], 1
seg006:2E45                 lodsb
seg006:2E46                 jnb     short loc_10C99
seg006:2E48                 stosb
seg006:2E49
seg006:2E49 loc_10C99:                              ; CODE XREF: sub_10C50+46␘j
seg006:2E49                 dec     dl
seg006:2E4B                 jz      short loc_10CA2
seg006:2E4D                 loop    loc_10C91
seg006:2E4F                 jmp     short loc_10CA7
seg006:2E4F ; ---------------------------------------------------------------------------
seg006:2E51                 align 2
seg006:2E52
seg006:2E52 loc_10CA2:                              ; CODE XREF: sub_10C50+4B␘j
seg006:2E52                 inc     bx
seg006:2E53                 mov     dl, 8
seg006:2E55                 loop    loc_10C91
seg006:2E57
seg006:2E57 loc_10CA7:                              ; CODE XREF: sub_10C50+4F␘j
seg006:2E57                 mov     cl, byte_2A9C3
seg006:2E5B                 sub     al, al
seg006:2E5D                 cmp     al, cl
seg006:2E5F                 jz      short loc_10CC6
seg006:2E61
seg006:2E61 loc_10CB1:                              ; CODE XREF: sub_10C50+6C␙j
seg006:2E61                                         ; sub_10C50+74␙j
seg006:2E61                 rol     byte ptr [bx-4707h], 1
seg006:2E65                 jnb     short loc_10CB8
seg006:2E67                 stosb
seg006:2E68
seg006:2E68 loc_10CB8:                              ; CODE XREF: sub_10C50+65␘j
seg006:2E68                 dec     dl
seg006:2E6A                 jz      short loc_10CC1
seg006:2E6C                 loop    loc_10CB1
seg006:2E6E                 jmp     short loc_10CC6
seg006:2E6E ; ---------------------------------------------------------------------------
seg006:2E70                 db 90h
seg006:2E71 ; ---------------------------------------------------------------------------
seg006:2E71
seg006:2E71 loc_10CC1:                              ; CODE XREF: sub_10C50+6A␘j
seg006:2E71                 inc     bx
seg006:2E72                 mov     dl, 8
seg006:2E74                 loop    loc_10CB1
seg006:2E76
seg006:2E76 loc_10CC6:                              ; CODE XREF: sub_10C50+5F␘j
seg006:2E76                                         ; sub_10C50+6E␘j
seg006:2E76                 mov     cl, dl
seg006:2E78
seg006:2E78 loc_10CC8:                              ; CODE XREF: sub_10C50+7C␙j
seg006:2E78                 rol     byte ptr [bx-4707h], 1
seg006:2E7C                 loop    loc_10CC8
seg006:2E7E                 pop     dx
seg006:2E7F                 retn
seg006:2E7F sub_10C50       endp
seg006:2E7F
seg006:2E80
