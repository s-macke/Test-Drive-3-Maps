seg032:0C73 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:0C73
seg032:0C73
seg032:0C73 sub_1BE13       proc near               ; CODE XREF: sub_1B896+28␘p
seg032:0C73                                         ; DATA XREF: dseg:off_2B67C␙o
seg032:0C73
seg032:0C73 ; FUNCTION CHUNK AT seg032:0C2F SIZE 00000044 BYTES
seg032:0C73
seg032:0C73                 xor     ax, ax
seg032:0C75
seg032:0C75 loc_1BE15:                              ; CODE XREF: sub_1BE23+3␙j
seg032:0C75                 mov     bx, 0BAAh
seg032:0C78
seg032:0C78 loc_1BE18:                              ; CODE XREF: sub_1BE28+6␙j
seg032:0C78                 test    byte ptr word_2BEEC+1, 1
seg032:0C7D                 jnz     short loc_1BE21
seg032:0C7F                 jmp     short loc_1BDCF
seg032:0C81 ; ---------------------------------------------------------------------------
seg032:0C81
seg032:0C81 loc_1BE21:                              ; CODE XREF: sub_1BE13+A␘j
seg032:0C81                                         ; sub_1BE35+5␙j
seg032:0C81                 stc
seg032:0C82                 retn
seg032:0C82 sub_1BE13       endp
seg032:0C82
seg032:0C83
