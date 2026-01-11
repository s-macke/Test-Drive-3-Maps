seg033:02F6 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:02F6
seg033:02F6
seg033:02F6 sub_1E286       proc near               ; CODE XREF: sub_1E71E+D␙p
seg033:02F6                                         ; sub_1E979+6␙p
seg033:02F6                 push    bx
seg033:02F7                 push    cx
seg033:02F8                 push    dx
seg033:02F9                 push    ds
seg033:02FA                 mov     word_2BA76, 0
seg033:0300                 mov     ax, word ptr dword_2BA50
seg033:0303                 or      ax, word ptr dword_2BA50+2
seg033:0307                 jz      short loc_1E2A9
seg033:0309                 push    word ptr dword_2BA50+2
seg033:030D                 push    word ptr dword_2BA50
seg033:0311                 call    sub_1F028
seg033:0316                 add     sp, 4
seg033:0319
seg033:0319 loc_1E2A9:                              ; CODE XREF: sub_1E286+11␘j
seg033:0319                 mov     ax, 3D00h
seg033:031C                 mov     dx, 0C966h
seg033:031F                 int     21h             ; DOS - 2+ - OPEN DISK FILE WITH HANDLE
seg033:031F                                         ; DS:DX -> ASCIZ filename
seg033:031F                                         ; AL = access mode
seg033:031F                                         ; 0 - read
seg033:0321                 jnb     short loc_1E2B6
seg033:0323                 jmp     loc_1E33E
seg033:0326 ; ---------------------------------------------------------------------------
seg033:0326
seg033:0326 loc_1E2B6:                              ; CODE XREF: sub_1E286+2B␘j
seg033:0326                 mov     word_2BA54, ax
seg033:0329
seg033:0329 loc_1E2B9:                              ; CODE XREF: sub_1E286+59␙j
seg033:0329                 mov     ah, 3Fh ; '?'
seg033:032B                 mov     bx, word_2BA54
seg033:032F                 mov     cx, 2
seg033:0332                 mov     dx, 0C976h
seg033:0335                 int     21h             ; DOS - 2+ - READ FROM FILE WITH HANDLE
seg033:0335                                         ; BX = file handle, CX = number of bytes to read
seg033:0335                                         ; DS:DX -> buffer
seg033:0337                 jb      short loc_1E33A
seg033:0339                 or      si, si
seg033:033B                 jz      short loc_1E2E1
seg033:033D                 mov     ax, 4201h
seg033:0340                 sub     cx, cx
seg033:0342                 mov     dx, word_2BA56
seg033:0346                 or      dx, dx
seg033:0348                 jz      short loc_1E33A
seg033:034A                 int     21h             ; DOS - 2+ - MOVE FILE READ/WRITE POINTER (LSEEK)
seg033:034A                                         ; AL = method: offset from present location
seg033:034C                 jb      short loc_1E33A
seg033:034E                 dec     si
seg033:034F                 jmp     short loc_1E2B9
seg033:0351 ; ---------------------------------------------------------------------------
seg033:0351
seg033:0351 loc_1E2E1:                              ; CODE XREF: sub_1E286+45␘j
seg033:0351                 mov     cx, 1
seg033:0354                 mov     dx, 0C978h
seg033:0357
seg033:0357 loc_1E2E7:                              ; CODE XREF: sub_1E286+6C␙j
seg033:0357                 mov     ah, 3Fh
seg033:0359                 int     21h             ; DOS - 2+ - READ FROM FILE WITH HANDLE
seg033:0359                                         ; BX = file handle, CX = number of bytes to read
seg033:0359                                         ; DS:DX -> buffer
seg033:035B                 jb      short loc_1E33A
seg033:035D                 cmp     word_2BA58, 0
seg033:0362                 jnz     short loc_1E2E7
seg033:0364                 mov     ah, 3Fh ; '?'
seg033:0366                 mov     cx, 162h
seg033:0369                 mov     dx, 0C63Eh
seg033:036C                 int     21h             ; DOS - 2+ - READ FROM FILE WITH HANDLE
seg033:036C                                         ; BX = file handle, CX = number of bytes to read
seg033:036C                                         ; DS:DX -> buffer
seg033:036E                 jb      short loc_1E33A
seg033:0370                 mov     al, byte_2B87E
seg033:0373                 imul    byte_2B87F
seg033:0377                 mov     word_2BA56, ax
seg033:037A                 or      ax, ax
seg033:037C                 jz      short loc_1E334
seg033:037E                 mov     bx, ax
seg033:0380                 shr     bx, 1
seg033:0382                 shr     bx, 1
seg033:0384                 shr     bx, 1
seg033:0386                 shr     bx, 1
seg033:0388                 inc     bx
seg033:0389                 mov     ah, 48h
seg033:038B                 int     21h             ; DOS - 2+ - ALLOCATE MEMORY
seg033:038B                                         ; BX = number of 16-byte paragraphs desired
seg033:038D                 mov     word ptr dword_2BA50+2, ax
seg033:0390                 jb      short loc_1E33A
seg033:0392                 mov     bx, word_2BA54
seg033:0396                 mov     cx, word_2BA56
seg033:039A                 mov     ds, ax
seg033:039C                 assume ds:nothing
seg033:039C                 mov     ah, 3Fh ; '?'
seg033:039E                 sub     dx, dx
seg033:03A0                 int     21h             ; DOS - 2+ - READ FROM FILE WITH HANDLE
seg033:03A0                                         ; BX = file handle, CX = number of bytes to read
seg033:03A0                                         ; DS:DX -> buffer
seg033:03A2                 jb      short loc_1E33A
seg033:03A4
seg033:03A4 loc_1E334:                              ; CODE XREF: sub_1E286+86␘j
seg033:03A4                 mov     word ptr ds:0C996h, 1
seg033:03AA
seg033:03AA loc_1E33A:                              ; CODE XREF: sub_1E286+41␘j
seg033:03AA                                         ; sub_1E286+52␘j ...
seg033:03AA                 mov     ah, 3Eh
seg033:03AC                 int     21h             ; DOS - 2+ - CLOSE A FILE WITH HANDLE
seg033:03AC                                         ; BX = file handle
seg033:03AE
seg033:03AE loc_1E33E:                              ; CODE XREF: sub_1E286+2D␘j
seg033:03AE                 mov     ax, ds:0C996h
seg033:03B1                 pop     ds
seg033:03B2                 assume ds:dseg
seg033:03B2                 pop     dx
seg033:03B3                 pop     cx
seg033:03B4                 pop     bx
seg033:03B5                 retn
seg033:03B5 sub_1E286       endp
seg033:03B5
seg033:03B6 ; ---------------------------------------------------------------------------
seg033:03B6                 push    cx
seg033:03B7                 push    es
seg033:03B8                 push    di
seg033:03B9                 call    off_2B9F2
seg033:03BD                 mov     ax, seg dseg
seg033:03C0                 mov     es, ax
seg033:03C2                 assume es:dseg
seg033:03C2                 cld
seg033:03C3                 sub     ax, ax
seg033:03C5                 mov     cx, 0Bh
seg033:03C8                 mov     di, 0C843h
seg033:03CB                 rep stosw
seg033:03CD                 pop     di
seg033:03CE                 pop     es
seg033:03CF                 assume es:nothing
seg033:03CF                 pop     cx
seg033:03D0                 retn
seg033:03D1 ; [00000001 BYTES: COLLAPSED FUNCTION nullsub_5. PRESS KEYPAD "+" TO EXPAND]
seg033:03D2 ; ---------------------------------------------------------------------------
seg033:03D2                 push    ax
seg033:03D3                 push    bx
seg033:03D4                 push    cx
seg033:03D5                 push    dx
seg033:03D6                 push    ds
seg033:03D7                 push    es
seg033:03D8                 push    si
seg033:03D9                 push    di
seg033:03DA                 cld
seg033:03DB                 mov     ax, seg dseg
seg033:03DE                 mov     ds, ax
seg033:03E0                 mov     cx, 10h
seg033:03E3                 sub     al, al
seg033:03E5
seg033:03E5 loc_1E375:                              ; CODE XREF: seg033:03EB␙j
seg033:03E5                 mov     bx, cx
seg033:03E7                 mov     [bx-371Eh], al
seg033:03EB                 loop    loc_1E375
seg033:03ED                 call    off_2B9F8
seg033:03F1                 call    off_2B9F6
seg033:03F5                 test    byte_2B6C6, 1
seg033:03FA                 jnz     short loc_1E38F
seg033:03FC                 jmp     loc_1E410
seg033:03FF ; ---------------------------------------------------------------------------
seg033:03FF
seg033:03FF loc_1E38F:                              ; CODE XREF: seg033:03FA␘j
seg033:03FF                 test    byte_2B6C7, 1
seg033:0404                 jz      short loc_1E410
seg033:0406                 sub     bx, bx
seg033:0408                 call    sub_1E419
seg033:040B                 dec     word_2B921
seg033:040F                 js      short loc_1E3A3
seg033:0411                 jnz     short loc_1E410
seg033:0413
seg033:0413 loc_1E3A3:                              ; CODE XREF: seg033:040F␘j
seg033:0413                 les     di, dword_2B923
seg033:0417
seg033:0417 loc_1E3A7:                              ; CODE XREF: seg033:0462␙j
seg033:0417                 mov     cx, es:[di]
seg033:041A                 mov     dx, es:[di+2]
seg033:041E                 mov     al, cl
seg033:0420                 mov     byte_2B927, cl
seg033:0424                 and     cl, 0Fh
seg033:0427                 mov     bl, cl
seg033:0429                 mov     bl, [bx-38B2h]
seg033:042D                 mov     word_2B9E3, bx
seg033:0431                 and     ax, 70h
seg033:0434                 mov     cl, 4
seg033:0436                 shr     al, cl
seg033:0438                 mov     si, ax
seg033:043A                 mov     al, [si-3675h]
seg033:043E                 sub     ah, ah
seg033:0440                 add     di, ax
seg033:0442                 shl     si, 1
seg033:0444                 push    dx
seg033:0445                 mov     dx, [si-3685h]
seg033:0449                 mov     si, bx
seg033:044B                 shl     si, 1
seg033:044D                 mov     word_2BA74, dx
seg033:0451                 pop     dx
seg033:0452                 call    word_2BA74
seg033:0456                 test    byte_2B928, 1
seg033:045B                 jnz     short loc_1E40C
seg033:045D                 test    byte_2B927, 80h
seg033:0462                 jz      short loc_1E3A7
seg033:0464                 mov     al, es:[di]
seg033:0467                 inc     di
seg033:0468                 cbw
seg033:0469                 or      al, al
seg033:046B                 jns     short loc_1E409
seg033:046D                 and     al, 7Fh
seg033:046F                 mov     ah, es:[di]
seg033:0472                 inc     di
seg033:0473                 shl     al, 1
seg033:0475                 shr     ah, 1
seg033:0477                 rcr     al, 1
seg033:0479
seg033:0479 loc_1E409:                              ; CODE XREF: seg033:046B␘j
seg033:0479                 mov     word_2B921, ax
seg033:047C
seg033:047C loc_1E40C:                              ; CODE XREF: seg033:045B␘j
seg033:047C                 mov     word ptr dword_2B923, di
seg033:0480
seg033:0480 loc_1E410:                              ; CODE XREF: seg033:03FC␘j
seg033:0480                                         ; seg033:0404␘j ...
seg033:0480                 pop     di
seg033:0481                 pop     si
seg033:0482                 pop     es
seg033:0483                 pop     ds
seg033:0484                 pop     dx
seg033:0485                 pop     cx
seg033:0486                 pop     bx
seg033:0487                 pop     ax
seg033:0488                 retf
seg033:0489
