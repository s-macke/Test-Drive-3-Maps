seg032:0BA9 ; ---------------------------------------------------------------------------
seg032:0BAA                 db 3 dup(0), 28h, 19h, 40h, 1, 0C8h, 2 dup(0), 0B8h, 0Fh
seg032:0BAA                 db 3Fh, 2, 80h, 0, 2 dup(7), 0, 36h, 2Ch
seg032:0BBF                 dw seg seg032
seg032:0BC1                 dd byte_1C997
seg032:0BC5                 db 0A4h, 0Ch, 0EBh, 0Ch, 5Ch, 2Ch, 93h, 2Ch, 0C8h, 2Ch
seg032:0BC5                 db 1Dh, 2Dh, 0, 2, 0, 50h, 19h, 80h, 2, 0C8h, 2 dup(0)
seg032:0BC5                 db 0B8h, 0Fh, 3Fh, 4, 0, 1, 3, 7, 0, 36h, 2Ch
seg032:0BE6                 dw seg seg032
seg032:0BE8                 dd byte_1C997
seg032:0BEC                 db 0A4h, 0Ch, 0EBh, 0Ch, 5Ch, 2Ch, 93h, 2Ch, 0C8h, 2Ch
seg032:0BEC                 db 1Dh, 2Dh, 0, 7, 0, 50h, 19h, 0D0h, 2, 5Eh, 1, 0, 0B0h
seg032:0BEC                 db 0Fh, 2, 4, 0, 1, 0, 7, 0, 1Fh, 0Ch
seg032:0C0D                 dw seg seg032
seg032:0C0F                 db 4 dup(0), 0A4h, 0Ch, 0EBh, 0Ch, 63h, 2Ch, 9Ah, 2Ch
seg032:0C0F                 db 0FBh, 0Ch, 1Dh, 2Dh, 0, 7 dup(8), 0, 7 dup(18h)
seg032:0C2F ; ---------------------------------------------------------------------------
seg032:0C2F ; START OF FUNCTION CHUNK FOR sub_1BE13
seg032:0C2F
seg032:0C2F loc_1BDCF:                              ; CODE XREF: sub_1BE13+C␙j
seg032:0C2F                                         ; sub_1BE35+D␙j
seg032:0C2F                 mov     cx, 27h ; '''
seg032:0C32                 push    ax
seg032:0C33                 call    sub_1B68E
seg032:0C36                 pop     ax
seg032:0C37                 mov     word_2B5CD, ax
seg032:0C3A                 test    byte ptr word_2BEEC, 23h
seg032:0C3F                 jnz     short loc_1BE00
seg032:0C41                 mov     ah, 7
seg032:0C43                 cmp     al, 1
seg032:0C45                 jbe     short loc_1BDF0
seg032:0C47                 cmp     word_2BEEE, 40h ; '@'
seg032:0C4C                 ja      short loc_1BDF0
seg032:0C4E                 shr     ah, 1
seg032:0C50
seg032:0C50 loc_1BDF0:                              ; CODE XREF: sub_1BE13-2E␘j
seg032:0C50                                         ; sub_1BE13-27␘j
seg032:0C50                 mov     byte_2B5DC, ah
seg032:0C54                 test    byte ptr word_2BEEC+1, 2
seg032:0C59                 jz      short loc_1BE00
seg032:0C5B                 mov     byte_2B5D8, 0Fh
seg032:0C60
seg032:0C60 loc_1BE00:                              ; CODE XREF: sub_1BE13-34␘j
seg032:0C60                                         ; sub_1BE13-1A␘j
seg032:0C60                 cmp     al, 7
seg032:0C62                 jz      short loc_1BE11
seg032:0C64                 test    byte ptr word_2BEEC+1, 1Ch
seg032:0C69                 jz      short loc_1BE11
seg032:0C6B                 mov     word_2B5DF, 2C46h
seg032:0C71
seg032:0C71 loc_1BE11:                              ; CODE XREF: sub_1BE13-11␘j
seg032:0C71                                         ; sub_1BE13-A␘j
seg032:0C71                 clc
seg032:0C72                 retn
seg032:0C72 ; END OF FUNCTION CHUNK FOR sub_1BE13
seg032:0C73
