seg033:0C62 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:0C62
seg033:0C62
seg033:0C62 sub_1EBF2       proc near               ; CODE XREF: seg033:0C47␘p
seg033:0C62                 push    bx
seg033:0C63                 push    cx
seg033:0C64                 push    dx
seg033:0C65                 mov     ax, 6000h
seg033:0C68                 call    sub_1E7F9
seg033:0C6B                 call    sub_1ED12
seg033:0C6E                 shr     ax, cl
seg033:0C70
seg033:0C70 loc_1EC00:                              ; CODE XREF: sub_1EBF2+15␙j
seg033:0C70                 cmp     ax, 3FFh
seg033:0C73                 jbe     short loc_1EC09
seg033:0C75                 shr     ax, 1
seg033:0C77                 jmp     short loc_1EC00
seg033:0C79 ; ---------------------------------------------------------------------------
seg033:0C79
seg033:0C79 loc_1EC09:                              ; CODE XREF: sub_1EBF2+11␘j
seg033:0C79                 mov     dx, ax
seg033:0C7B                 shr     ax, 1
seg033:0C7D                 shr     ax, 1
seg033:0C7F                 shr     ax, 1
seg033:0C81                 shr     ax, 1
seg033:0C83                 mov     ah, al
seg033:0C85                 mov     al, dl
seg033:0C87                 and     al, 0Fh
seg033:0C89                 or      al, [bx-3508h]
seg033:0C8D                 or      al, 80h
seg033:0C8F                 pushf
seg033:0C90                 cli
seg033:0C91                 out     0C0h, al        ; DMA controller, 8237A-5.
seg033:0C91                                         ; channel 0 base address
seg033:0C91                                         ; (also sets current address)
seg033:0C93                 mov     al, ah
seg033:0C95                 out     0C1h, al        ; DMA controller, 8237A-5.
seg033:0C95                                         ; channel 0 base address and word count
seg033:0C97                 popf
seg033:0C98                 pop     dx
seg033:0C99                 pop     cx
seg033:0C9A                 pop     bx
seg033:0C9B                 retn
seg033:0C9B sub_1EBF2       endp
seg033:0C9B
seg033:0C9C ; ---------------------------------------------------------------------------
seg033:0C9C                 push    bx
seg033:0C9D                 push    cx
seg033:0C9E                 sub     ch, 18h
seg033:0CA1
seg033:0CA1 loc_1EC31:                              ; CODE XREF: seg033:0CA6␙j
seg033:0CA1                 jns     short loc_1EC38
seg033:0CA3                 add     ch, 0Ch
seg033:0CA6                 jmp     short loc_1EC31
seg033:0CA8 ; ---------------------------------------------------------------------------
seg033:0CA8
seg033:0CA8 loc_1EC38:                              ; CODE XREF: seg033:loc_1EC31␘j
seg033:0CA8                 test    byte_2BA73, 1
seg033:0CAD                 jnz     short loc_1EC45
seg033:0CAF                 cmp     ch, [bx-373Dh]
seg033:0CB3                 jnz     short loc_1EC5A
seg033:0CB5
seg033:0CB5 loc_1EC45:                              ; CODE XREF: seg033:0CAD␘j
seg033:0CB5                 mov     al, [bx-3508h]
seg033:0CB9                 add     al, 10h
seg033:0CBB                 or      al, 8Fh
seg033:0CBD                 out     0C0h, al        ; DMA controller, 8237A-5.
seg033:0CBD                                         ; channel 0 base address
seg033:0CBD                                         ; (also sets current address)
seg033:0CBF                 mov     word ptr [si-378Dh], 0
seg033:0CC5                 mov     byte ptr [bx-373Dh], 0
seg033:0CCA
seg033:0CCA loc_1EC5A:                              ; CODE XREF: seg033:0CB3␘j
seg033:0CCA                 pop     cx
seg033:0CCB                 pop     bx
seg033:0CCC                 retn
seg033:0CCD ; ---------------------------------------------------------------------------
seg033:0CCD                 push    cx
seg033:0CCE                 push    dx
seg033:0CCF                 mov     cx, 2
seg033:0CD2
seg033:0CD2 loc_1EC62:                              ; CODE XREF: seg033:0CE0␙j
seg033:0CD2                 mov     bx, cx
seg033:0CD4                 mov     al, [bx-3508h]
seg033:0CD8                 add     al, 10h
seg033:0CDA                 or      al, 8Fh
seg033:0CDC                 out     0C0h, al        ; DMA controller, 8237A-5.
seg033:0CDC                                         ; channel 0 base address
seg033:0CDC                                         ; (also sets current address)
seg033:0CDE                 dec     cl
seg033:0CE0                 jns     short loc_1EC62
seg033:0CE2                 pop     dx
seg033:0CE3                 pop     cx
seg033:0CE4                 retn
seg033:0CE5
