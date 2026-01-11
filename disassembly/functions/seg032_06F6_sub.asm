seg032:06F6 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:06F6
seg032:06F6 ; Attributes: bp-based frame
seg032:06F6
seg032:06F6 sub_1B896       proc far                ; CODE XREF: seg032:0787␙P
seg032:06F6
seg032:06F6 arg_0           = word ptr  6
seg032:06F6
seg032:06F6                 push    bp
seg032:06F7                 mov     bp, sp
seg032:06F9
seg032:06F9 loc_1B899:                              ; CODE XREF: seg032:075B␙j
seg032:06F9                 call    sub_1B3EC
seg032:06FC                 xor     ax, ax
seg032:06FE                 mov     bx, [bp+arg_0]
seg032:0701                 cmp     bx, 0FFFFh
seg032:0704                 jnz     short loc_1B8B7
seg032:0706                 xor     bx, bx
seg032:0708                 mov     bl, byte_2B6C0
seg032:070C                 mov     byte_2B6B8, bl
seg032:0710                 mov     bl, byte_2B6BC
seg032:0714                 mov     byte_2BDB4, al
seg032:0717
seg032:0717 loc_1B8B7:                              ; CODE XREF: sub_1B896+E␘j
seg032:0717                 cmp     bx, 13h
seg032:071A                 ja      short loc_1B8C7
seg032:071C                 shl     bx, 1
seg032:071E                 call    off_2B67C[bx]
seg032:0722                 mov     ax, 0
seg032:0725                 jnb     short loc_1B8CA
seg032:0727
seg032:0727 loc_1B8C7:                              ; CODE XREF: sub_1B896+24␘j
seg032:0727                 jmp     short loc_1B8ED
seg032:0727 ; ---------------------------------------------------------------------------
seg032:0729                 align 2
seg032:072A
seg032:072A loc_1B8CA:                              ; CODE XREF: sub_1B896+2F␘j
seg032:072A                 call    sub_1B939
seg032:072D                 call    sub_1B968
seg032:0730                 call    nullsub_4
seg032:0733                 call    off_2B5E7
seg032:0737                 call    sub_1B939
seg032:073A                 call    sub_1B9BB
seg032:073D                 call    off_2B5EB
seg032:0741                 xor     ax, ax
seg032:0743                 call    off_2B5E9
seg032:0747                 call    sub_1BAA7
seg032:074A                 call    sub_1B4C3
seg032:074D
seg032:074D loc_1B8ED:                              ; CODE XREF: sub_1B896:loc_1B8C7␘j
seg032:074D                 call    sub_1B40A
seg032:0750                 pop     bp
seg032:0751                 retf
seg032:0751 sub_1B896       endp
seg032:0751
seg032:0752 ; ---------------------------------------------------------------------------
seg032:0752                 push    bp
seg032:0753                 mov     bp, sp
seg032:0755                 mov     ax, [bp+8]
seg032:0758                 mov     byte_2B6B8, al
seg032:075B                 jmp     short loc_1B899
seg032:075D ; ---------------------------------------------------------------------------
seg032:075D                 push    bp
seg032:075E                 mov     bp, sp
seg032:0760                 mov     dx, [bp+6]
seg032:0763                 or      dh, dh
seg032:0765                 jnz     short loc_1B92F
seg032:0767                 mov     dh, dl
seg032:0769                 xchg    dh, byte_2B5D0
seg032:076D                 cmp     dl, dh
seg032:076F                 jz      short loc_1B92F
seg032:0771                 call    sub_1B968
seg032:0774                 cmp     dl, al
seg032:0776                 jz      short loc_1B91E
seg032:0778                 mov     byte_2B5D0, dh
seg032:077C                 jmp     short loc_1B92F
seg032:077E ; ---------------------------------------------------------------------------
seg032:077E
seg032:077E loc_1B91E:                              ; CODE XREF: seg032:0776␘j
seg032:077E                 mov     byte_2B6B8, al
seg032:0781                 xor     ax, ax
seg032:0783                 mov     al, byte ptr word_2B5CD
seg032:0786                 push    ax
seg032:0787                 call    sub_1B896
seg032:078C                 or      ax, ax
seg032:078E                 pop     ax
seg032:078F
seg032:078F loc_1B92F:                              ; CODE XREF: seg032:0765␘j
seg032:078F                                         ; seg032:076F␘j ...
seg032:078F                 mov     ax, 0
seg032:0792                 jz      short loc_1B937
seg032:0794                 mov     al, byte_2B5D0
seg032:0797
seg032:0797 loc_1B937:                              ; CODE XREF: seg032:0792␘j
seg032:0797                 pop     bp
seg032:0798                 retf
seg032:0799
