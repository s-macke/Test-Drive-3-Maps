seg005:066C ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:066C
seg005:066C
seg005:066C sub_C58C        proc far                ; CODE XREF: sub_1688:loc_1A80␘P
seg005:066C                                         ; sub_1688+409␘P ...
seg005:066C                 push    si
seg005:066D                 push    di
seg005:066E                 mov     dx, 201h
seg005:0671                 mov     cx, 0FFF8h
seg005:0674                 mov     di, 8
seg005:0677                 mov     bl, 3
seg005:0679                 push    word_1F180
seg005:067D                 out     dx, al          ; Game I/O port
seg005:067D                                         ; bits 0-3: Coordinates (resistive, time-dependent inputs)
seg005:067D                                         ; bits 4-7: Buttons/Triggers (digital inputs)
seg005:067E
seg005:067E loc_C59E:                               ; CODE XREF: sub_C58C+1B␙j
seg005:067E                 in      al, dx          ; Game I/O port
seg005:067E                                         ; bits 0-3: Coordinates (resistive, time-dependent inputs)
seg005:067E                                         ; bits 4-7: Buttons/Triggers (digital inputs)
seg005:067F                 add     cx, di
seg005:0681                 jo      short loc_C5D6
seg005:0683                 and     al, bl
seg005:0685                 cmp     al, bl
seg005:0687                 jz      short loc_C59E
seg005:0689                 mov     si, cx
seg005:068B                 test    al, bl
seg005:068D                 jz      short loc_C5DC
seg005:068F                 mov     bl, 2
seg005:0691                 test    al, bl
seg005:0693                 jnz     short loc_C5C4
seg005:0695                 mov     bl, 1
seg005:0697
seg005:0697 loc_C5B7:                               ; CODE XREF: sub_C58C+34␙j
seg005:0697                 in      al, dx          ; Game I/O port
seg005:0697                                         ; bits 0-3: Coordinates (resistive, time-dependent inputs)
seg005:0697                                         ; bits 4-7: Buttons/Triggers (digital inputs)
seg005:0698                 add     cx, di
seg005:069A                 jo      short loc_C5D1
seg005:069C                 and     al, bl
seg005:069E                 cmp     al, bl
seg005:06A0                 jz      short loc_C5B7
seg005:06A2                 jnz     short loc_C5DC
seg005:06A4
seg005:06A4 loc_C5C4:                               ; CODE XREF: sub_C58C+27␘j
seg005:06A4                                         ; sub_C58C+41␙j
seg005:06A4                 in      al, dx          ; Game I/O port
seg005:06A4                                         ; bits 0-3: Coordinates (resistive, time-dependent inputs)
seg005:06A4                                         ; bits 4-7: Buttons/Triggers (digital inputs)
seg005:06A5                 add     si, di
seg005:06A7                 jo      short loc_C5D9
seg005:06A9                 and     al, bl
seg005:06AB                 cmp     al, bl
seg005:06AD                 jz      short loc_C5C4
seg005:06AF                 jnz     short loc_C5DC
seg005:06B1
seg005:06B1 loc_C5D1:                               ; CODE XREF: sub_C58C+2E␘j
seg005:06B1                 mov     cx, 0FFFFh
seg005:06B4                 jmp     short loc_C5DC
seg005:06B6 ; ---------------------------------------------------------------------------
seg005:06B6
seg005:06B6 loc_C5D6:                               ; CODE XREF: sub_C58C+15␘j
seg005:06B6                 mov     cx, 0FFFFh
seg005:06B9
seg005:06B9 loc_C5D9:                               ; CODE XREF: sub_C58C+3B␘j
seg005:06B9                 mov     si, 0FFFFh
seg005:06BC
seg005:06BC loc_C5DC:                               ; CODE XREF: sub_C58C+21␘j
seg005:06BC                                         ; sub_C58C+36␘j ...
seg005:06BC                 sar     cx, 1
seg005:06BE                 sar     cx, 1
seg005:06C0                 sar     cx, 1
seg005:06C2                 sar     si, 1
seg005:06C4                 sar     si, 1
seg005:06C6                 sar     si, 1
seg005:06C8                 pop     ax
seg005:06C9                 cmp     ax, word_1F180
seg005:06CD                 jnz     short loc_C5F7
seg005:06CF                 mov     word_1F1A2, cx
seg005:06D3                 mov     word_1F1AC, si
seg005:06D7
seg005:06D7 loc_C5F7:                               ; CODE XREF: sub_C58C+61␘j
seg005:06D7                 in      al, dx          ; Game I/O port
seg005:06D7                                         ; bits 0-3: Coordinates (resistive, time-dependent inputs)
seg005:06D7                                         ; bits 4-7: Buttons/Triggers (digital inputs)
seg005:06D8                 not     al
seg005:06DA                 and     ax, 30h
seg005:06DD                 pop     di
seg005:06DE                 pop     si
seg005:06DF                 retf
seg005:06DF sub_C58C        endp
seg005:06DF
seg005:06E0
