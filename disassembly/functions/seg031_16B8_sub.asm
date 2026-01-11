seg031:16B8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:16B8
seg031:16B8 ; Attributes: bp-based frame
seg031:16B8
seg031:16B8 sub_1A518       proc far                ; CODE XREF: sub_19F08+22E␘p
seg031:16B8                                         ; sub_1A622+5F␙p ...
seg031:16B8
seg031:16B8 arg_0           = byte ptr  6
seg031:16B8
seg031:16B8                 push    bp
seg031:16B9                 mov     bp, sp
seg031:16BB                 push    si
seg031:16BC                 cmp     word_2BD50, 0
seg031:16C1                 jnz     short loc_1A554
seg031:16C3                 mov     bx, word_2BD3A
seg031:16C7                 dec     word ptr [bx+2]
seg031:16CA                 js      short loc_1A53A
seg031:16CC                 mov     al, [bp+arg_0]
seg031:16CF                 mov     si, [bx]
seg031:16D1                 inc     word ptr [bx]
seg031:16D3                 mov     [si], al
seg031:16D5                 sub     ah, ah
seg031:16D7                 jmp     short loc_1A546
seg031:16D7 ; ---------------------------------------------------------------------------
seg031:16D9                 align 2
seg031:16DA
seg031:16DA loc_1A53A:                              ; CODE XREF: sub_1A518+12␘j
seg031:16DA                 push    bx
seg031:16DB                 push    word ptr [bp+arg_0]
seg031:16DE                 call    sub_19AEE
seg031:16E3                 add     sp, 4
seg031:16E6
seg031:16E6 loc_1A546:                              ; CODE XREF: sub_1A518+1F␘j
seg031:16E6                 inc     ax
seg031:16E7                 jnz     short loc_1A550
seg031:16E9                 inc     word_2BD50
seg031:16ED                 jmp     short loc_1A554
seg031:16ED ; ---------------------------------------------------------------------------
seg031:16EF                 align 2
seg031:16F0
seg031:16F0 loc_1A550:                              ; CODE XREF: sub_1A518+2F␘j
seg031:16F0                 inc     word_2BD4E
seg031:16F4
seg031:16F4 loc_1A554:                              ; CODE XREF: sub_1A518+9␘j
seg031:16F4                                         ; sub_1A518+35␘j
seg031:16F4                 pop     si
seg031:16F5                 pop     bp
seg031:16F6                 retf
seg031:16F6 sub_1A518       endp
seg031:16F6
seg031:16F6 ; ---------------------------------------------------------------------------
seg031:16F7                 align 2
seg031:16F8
