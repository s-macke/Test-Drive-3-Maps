seg032:032F ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:032F
seg032:032F
seg032:032F sub_1B4CF       proc near               ; CODE XREF: sub_1B325:loc_1B3A3␘p
seg032:032F                                         ; sub_1B42B+1␘p ...
seg032:032F                 mov     bh, byte ptr word_2B633
seg032:0333                 mov     dh, byte ptr word_2BDA9
seg032:0337                 add     dh, byte ptr word_2BDA5
seg032:033B                 mov     dl, byte ptr word_2BDAB
seg032:033F                 add     dl, byte ptr word_2BDA7
seg032:0343                 push    bp
seg032:0344                 push    si
seg032:0345                 push    di
seg032:0346                 mov     ah, 2
seg032:0348                 int     10h             ; - VIDEO - SET CURSOR POSITION
seg032:0348                                         ; DH,DL = row, column (0,0 = upper left)
seg032:0348                                         ; BH = page number
seg032:034A                 pop     di
seg032:034B                 pop     si
seg032:034C                 pop     bp
seg032:034D                 retn
seg032:034D sub_1B4CF       endp
seg032:034D
seg032:034E ; ---------------------------------------------------------------------------
seg032:034E                 mov     bl, byte_2B5D7
seg032:0352                 or      ah, ah
seg032:0354                 jnz     short loc_1B4FA
seg032:0356                 cmp     al, bl
seg032:0358                 jbe     short loc_1B4FE
seg032:035A
seg032:035A loc_1B4FA:                              ; CODE XREF: seg032:0354␘j
seg032:035A                 mov     al, bl
seg032:035C                 xor     ah, ah
seg032:035E
seg032:035E loc_1B4FE:                              ; CODE XREF: seg032:0358␘j
seg032:035E                 xchg    al, byte_2B5DD
seg032:0362                 retn
seg032:0363 ; ---------------------------------------------------------------------------
seg032:0363                 push    si
seg032:0364                 push    di
seg032:0365                 mov     si, word_2BD64
seg032:0369                 mov     di, word_2BD66
seg032:036D                 cmp     word_2B5CD, 6
seg032:0372                 jz      short loc_1B564
seg032:0374                 cmp     byte_2B5CC, 0
seg032:0379                 jnz     short loc_1B52C
seg032:037B                 and     ax, 7
seg032:037E                 mov     word_2BD64, ax
seg032:0381                 mov     word_2BD66, 0
seg032:0387                 call    sub_1B59D
seg032:038A                 jmp     short loc_1B572
seg032:038C ; ---------------------------------------------------------------------------
seg032:038C
seg032:038C loc_1B52C:                              ; CODE XREF: seg032:0379␘j
seg032:038C                 call    nullsub_3
seg032:0391                 push    ax
seg032:0392                 push    dx
seg032:0393                 cmp     byte_2B5CC, 1
seg032:0398                 jnz     short loc_1B55A
seg032:039A                 test    byte ptr word_2BEEC, 1Ch
seg032:039F                 jnz     short loc_1B55A
seg032:03A1                 xor     bx, bx
seg032:03A3                 call    off_2B5EF
seg032:03A7                 mov     bl, al
seg032:03A9                 jb      short loc_1B560
seg032:03AB                 xor     bh, bh
seg032:03AD                 push    bp
seg032:03AE                 push    si
seg032:03AF                 push    di
seg032:03B0                 mov     ah, 0Bh
seg032:03B2                 int     10h             ; - VIDEO - SET COLOR PALETTE
seg032:03B2                                         ; BH = 00h, BL = border color
seg032:03B2                                         ; BH = 01h, BL = palette (0-3)
seg032:03B4                 pop     di
seg032:03B5                 pop     si
seg032:03B6                 pop     bp
seg032:03B7                 clc
seg032:03B8                 jmp     short loc_1B560
seg032:03BA ; ---------------------------------------------------------------------------
seg032:03BA
seg032:03BA loc_1B55A:                              ; CODE XREF: seg032:0398␘j
seg032:03BA                                         ; seg032:039F␘j
seg032:03BA                 xor     bl, bl
seg032:03BC                 call    off_2B5ED
seg032:03C0
seg032:03C0 loc_1B560:                              ; CODE XREF: seg032:03A9␘j
seg032:03C0                                         ; seg032:03B8␘j
seg032:03C0                 pop     dx
seg032:03C1                 pop     ax
seg032:03C2                 jnb     short loc_1B56B
seg032:03C4
seg032:03C4 loc_1B564:                              ; CODE XREF: seg032:0372␘j
seg032:03C4                 mov     ax, 0FFFFh
seg032:03C7                 mov     dx, si
seg032:03C9                 jmp     short loc_1B576
seg032:03CB ; ---------------------------------------------------------------------------
seg032:03CB
seg032:03CB loc_1B56B:                              ; CODE XREF: seg032:03C2␘j
seg032:03CB                 mov     word_2BD64, ax
seg032:03CE                 mov     word_2BD66, dx
seg032:03D2
seg032:03D2 loc_1B572:                              ; CODE XREF: seg032:038A␘j
seg032:03D2                 mov     ax, si
seg032:03D4                 mov     dx, di
seg032:03D6
seg032:03D6 loc_1B576:                              ; CODE XREF: seg032:03C9␘j
seg032:03D6                 pop     di
seg032:03D7                 pop     si
seg032:03D8                 retn
seg032:03D9
