seg031:1F6C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:1F6C
seg031:1F6C
seg031:1F6C sub_1ADCC       proc far                ; CODE XREF: sub_19F08+6␘P
seg031:1F6C                 pop     cx
seg031:1F6D                 pop     dx
seg031:1F6E                 mov     bx, sp
seg031:1F70                 sub     bx, ax
seg031:1F72                 jb      short loc_1ADDF
seg031:1F74                 cmp     bx, word_2B64A
seg031:1F78                 jb      short loc_1ADDF
seg031:1F7A                 mov     sp, bx
seg031:1F7C                 push    dx
seg031:1F7D                 push    cx
seg031:1F7E                 retf
seg031:1F7F ; ---------------------------------------------------------------------------
seg031:1F7F
seg031:1F7F loc_1ADDF:                              ; CODE XREF: sub_1ADCC+6␘j
seg031:1F7F                                         ; sub_1ADCC+C␘j
seg031:1F7F                 mov     ax, word ptr dword_2B646
seg031:1F82                 inc     ax
seg031:1F83                 jnz     short loc_1ADEA
seg031:1F85                 xor     ax, ax
seg031:1F87                 jmp     loc_18F2B
seg031:1F8A ; ---------------------------------------------------------------------------
seg031:1F8A
seg031:1F8A loc_1ADEA:                              ; CODE XREF: sub_1ADCC+17␘j
seg031:1F8A                 push    dx
seg031:1F8B                 push    cx
seg031:1F8C                 jmp     dword_2B646
seg031:1F8C sub_1ADCC       endp
seg031:1F8C
seg031:1F90 ; ---------------------------------------------------------------------------
seg031:1F90 ; START OF FUNCTION CHUNK FOR sub_1A832
seg031:1F90
seg031:1F90 loc_1ADF0:                              ; CODE XREF: sub_1A832:loc_1A84F␘j
seg031:1F90                                         ; sub_1ADBE+A␘j
seg031:1F90                 jb      short loc_1AE05
seg031:1F92
seg031:1F92 loc_1ADF2:                              ; CODE XREF: seg031:1F98␙j
seg031:1F92                 xor     ax, ax
seg031:1F94                 mov     sp, bp
seg031:1F96                 pop     bp
seg031:1F97                 retf
seg031:1F97 ; END OF FUNCTION CHUNK FOR sub_1A832
seg031:1F98 ; ---------------------------------------------------------------------------
seg031:1F98                 jnb     short loc_1ADF2
seg031:1F9A                 push    ax
seg031:1F9B                 call    sub_1AE16
seg031:1F9E                 pop     ax
seg031:1F9F                 mov     sp, bp
seg031:1FA1                 pop     bp
seg031:1FA2                 retf
seg031:1FA3 ; ---------------------------------------------------------------------------
seg031:1FA3 ; START OF FUNCTION CHUNK FOR sub_1AF2C
seg031:1FA3
seg031:1FA3 loc_1AE03:                              ; CODE XREF: sub_1A852:loc_1A8C3␘j
seg031:1FA3                                         ; sub_1A930:loc_1A943␘j ...
seg031:1FA3                 jnb     short loc_1AE0C
seg031:1FA5
seg031:1FA5 loc_1AE05:                              ; CODE XREF: sub_1A832:loc_1ADF0␘j
seg031:1FA5                 call    sub_1AE16
seg031:1FA8                 mov     ax, 0FFFFh
seg031:1FAB                 cwd
seg031:1FAC
seg031:1FAC loc_1AE0C:                              ; CODE XREF: sub_1AF2C:loc_1AE03␘j
seg031:1FAC                 mov     sp, bp
seg031:1FAE                 pop     bp
seg031:1FAF                 retf
seg031:1FAF ; END OF FUNCTION CHUNK FOR sub_1AF2C
seg031:1FB0
