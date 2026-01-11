seg032:07C8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:07C8
seg032:07C8
seg032:07C8 sub_1B968       proc near               ; CODE XREF: sub_1B896+37␘p
seg032:07C8                                         ; seg032:0771␘p ...
seg032:07C8                 mov     cx, word_2BEEC
seg032:07CC                 test    cl, 1Ch
seg032:07CF                 jz      short loc_1B9B5
seg032:07D1                 mov     bx, 0C5C4h
seg032:07D4                 mov     al, byte ptr word_2B5CD
seg032:07D7                 xlat
seg032:07D8                 xchg    ax, bx
seg032:07D9                 mov     al, byte_2B5D0
seg032:07DC                 test    cl, 18h
seg032:07DF                 jz      short loc_1B9A7
seg032:07E1                 cmp     al, 3Ch ; '<'
seg032:07E3                 jnz     short loc_1B98C
seg032:07E5                 test    bl, 10h
seg032:07E8                 jnz     short loc_1B9B7
seg032:07EA                 mov     al, 1Eh
seg032:07EC
seg032:07EC loc_1B98C:                              ; CODE XREF: sub_1B968+1B␘j
seg032:07EC                 cmp     al, 1Eh
seg032:07EE                 jnz     short loc_1B997
seg032:07F0                 test    bl, 2
seg032:07F3                 jnz     short loc_1B9B7
seg032:07F5                 mov     al, 32h ; '2'
seg032:07F7
seg032:07F7 loc_1B997:                              ; CODE XREF: sub_1B968+26␘j
seg032:07F7                 test    cl, 8
seg032:07FA                 jz      short loc_1B9B5
seg032:07FC                 cmp     al, 32h ; '2'
seg032:07FE                 jnz     short loc_1B9A7
seg032:0800                 test    bl, 8
seg032:0803                 jnz     short loc_1B9B7
seg032:0805                 mov     al, 2Bh ; '+'
seg032:0807
seg032:0807 loc_1B9A7:                              ; CODE XREF: sub_1B968+17␘j
seg032:0807                                         ; sub_1B968+36␘j
seg032:0807                 cmp     al, 2Bh ; '+'
seg032:0809                 jnz     short loc_1B9B5
seg032:080B                 test    bl, 4
seg032:080E                 jz      short loc_1B9B5
seg032:0810                 test    ch, 2
seg032:0813                 jz      short loc_1B9B7
seg032:0815
seg032:0815 loc_1B9B5:                              ; CODE XREF: sub_1B968+7␘j
seg032:0815                                         ; sub_1B968+32␘j ...
seg032:0815                 mov     al, 19h
seg032:0817
seg032:0817 loc_1B9B7:                              ; CODE XREF: sub_1B968+20␘j
seg032:0817                                         ; sub_1B968+2B␘j ...
seg032:0817                 mov     byte_2B5D0, al
seg032:081A                 retn
seg032:081A sub_1B968       endp
seg032:081A
seg032:081B
