seg032:03FD ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:03FD
seg032:03FD
seg032:03FD sub_1B59D       proc near               ; CODE XREF: seg032:0387␘p
seg032:03FD                                         ; sub_1B579+1F␘p
seg032:03FD                 mov     al, byte_2BD68
seg032:0400                 cmp     byte_2B5CC, 0
seg032:0405                 jnz     short loc_1B5C5
seg032:0407                 and     al, 0Fh
seg032:0409                 mov     bl, byte_2BD68
seg032:040D                 and     bl, 10h
seg032:0410                 mov     cl, 3
seg032:0412                 shl     bl, cl
seg032:0414                 or      al, bl
seg032:0416                 mov     bl, byte ptr word_2BD64
seg032:041A                 mov     cl, 4
seg032:041C                 shl     bl, cl
seg032:041E                 and     bl, 70h
seg032:0421                 or      al, bl
seg032:0423                 jmp     short loc_1B5D3
seg032:0425 ; ---------------------------------------------------------------------------
seg032:0425
seg032:0425 loc_1B5C5:                              ; CODE XREF: sub_1B59D+8␘j
seg032:0425                 cmp     byte_2B5F4, 2
seg032:042A                 jnz     short loc_1B5D3
seg032:042C                 call    off_2B60E
seg032:0430                 mov     al, byte ptr word_2BE36+1
seg032:0433
seg032:0433 loc_1B5D3:                              ; CODE XREF: sub_1B59D+26␘j
seg032:0433                                         ; sub_1B59D+2D␘j
seg032:0433                 mov     byte_2BD69, al
seg032:0436                 retn
seg032:0436 sub_1B59D       endp
seg032:0436
seg032:0437
