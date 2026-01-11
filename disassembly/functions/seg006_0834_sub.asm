seg006:0834 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:0834
seg006:0834
seg006:0834 sub_E684        proc near               ; CODE XREF: sub_153B8+18␙p
seg006:0834                 mov     ax, word_2037C
seg006:0837                 mov     bl, byte_2A6C1
seg006:083B                 cmp     ax, word_202EA
seg006:083F                 jb      short loc_E6C6
seg006:0841                 cmp     bl, 2
seg006:0844                 jb      short loc_E6C6
seg006:0846                 cmp     byte_1F174, 0
seg006:084B                 jnz     short loc_E6BA
seg006:084D                 mov     cl, byte_2D895
seg006:0851                 cmp     cl, 1
seg006:0854                 jz      short locret_E6FF
seg006:0856                 mov     ch, 1
seg006:0858                 add     ch, cl
seg006:085A                 cmp     ch, bl
seg006:085C                 jz      short loc_E6C6
seg006:085E                 add     ch, cl
seg006:0860                 cmp     ch, bl
seg006:0862                 jz      short loc_E6C6
seg006:0864                 add     ch, cl
seg006:0866                 cmp     ch, bl
seg006:0868                 jbe     short loc_E6C6
seg006:086A
seg006:086A loc_E6BA:                               ; CODE XREF: sub_E684+17␘j
seg006:086A                                         ; sub_E684+3F␙j
seg006:086A                 call    sub_DF5C
seg006:086D                 retn
seg006:086E ; ---------------------------------------------------------------------------
seg006:086E
seg006:086E loc_E6BE:                               ; CODE XREF: sub_E684+54␙j
seg006:086E                 cmp     byte_1F174, 0
seg006:0873                 jnz     short loc_E6BA
seg006:0875                 retn
seg006:0876 ; ---------------------------------------------------------------------------
seg006:0876
seg006:0876 loc_E6C6:                               ; CODE XREF: sub_E684+B␘j
seg006:0876                                         ; sub_E684+10␘j ...
seg006:0876                 cmp     byte_2A6C0, 0
seg006:087B                 jnz     short locret_E6FF
seg006:087D                 cmp     ax, word_202EC
seg006:0881                 jnb     short locret_E6FF
seg006:0883                 cmp     bl, 1
seg006:0886                 jz      short locret_E6FF
seg006:0888                 jb      short loc_E6BE
seg006:088A                 cmp     byte_1F174, 0
seg006:088F                 jnz     short loc_E6FC
seg006:0891                 mov     cl, byte_2D895
seg006:0895                 cmp     cl, 1
seg006:0898                 jz      short locret_E6FF
seg006:089A                 mov     ch, 2
seg006:089C                 cmp     ch, bl
seg006:089E                 jz      short locret_E6FF
seg006:08A0                 add     ch, cl
seg006:08A2                 cmp     ch, bl
seg006:08A4                 jz      short locret_E6FF
seg006:08A6                 add     ch, cl
seg006:08A8                 cmp     ch, bl
seg006:08AA                 jz      short locret_E6FF
seg006:08AC
seg006:08AC loc_E6FC:                               ; CODE XREF: sub_E684+5B␘j
seg006:08AC                 call    sub_DFDE
seg006:08AF
seg006:08AF locret_E6FF:                            ; CODE XREF: sub_E684+20␘j
seg006:08AF                                         ; sub_E684+47␘j ...
seg006:08AF                 retn
seg006:08AF sub_E684        endp
seg006:08AF
seg006:08B0 ; ---------------------------------------------------------------------------
seg006:08B0                 push    si
seg006:08B1                 test    cl, 3
seg006:08B4                 jz      short loc_E743
seg006:08B6                 test    cl, 1
seg006:08B9                 jz      short loc_E72F
seg006:08BB                 cmp     byte_2A6C0, 1Eh
seg006:08C0                 jnb     short loc_E743
seg006:08C2                 inc     byte_2A6C0
seg006:08C6                 inc     byte_2A6C0
seg006:08CA                 cmp     byte_1F174, 0
seg006:08CF                 jz      short loc_E743
seg006:08D1                 cmp     byte_2A6C1, 1
seg006:08D6                 jnz     short loc_E743
seg006:08D8                 push    cx
seg006:08D9                 call    sub_DF5C
seg006:08DC                 pop     cx
seg006:08DD                 jmp     short loc_E743
seg006:08DF ; ---------------------------------------------------------------------------
seg006:08DF
seg006:08DF loc_E72F:                               ; CODE XREF: seg006:08B9␘j
seg006:08DF                 mov     byte_2A6C3, 1
seg006:08E4                 mov     ch, byte_2A6C0
seg006:08E8                 sub     ch, 2
seg006:08EB                 jns     short loc_E73F
seg006:08ED                 sub     ch, ch
seg006:08EF
seg006:08EF loc_E73F:                               ; CODE XREF: seg006:08EB␘j
seg006:08EF                 mov     byte_2A6C0, ch
seg006:08F3
seg006:08F3 loc_E743:                               ; CODE XREF: seg006:08B4␘j
seg006:08F3                                         ; seg006:08C0␘j ...
seg006:08F3                 mov     al, byte_2D62A
seg006:08F6                 mov     ah, al
seg006:08F8                 test    cl, 0Ch
seg006:08FB                 jnz     short loc_E754
seg006:08FD                 mov     byte_2A6EE, 0
seg006:0902                 pop     si
seg006:0903                 retn
seg006:0904 ; ---------------------------------------------------------------------------
seg006:0904
seg006:0904 loc_E754:                               ; CODE XREF: seg006:08FB␘j
seg006:0904                 mov     bl, byte_2A6EE
seg006:0908                 inc     bl
seg006:090A                 cmp     bl, 3
seg006:090D                 jnb     short loc_E763
seg006:090F                 mov     byte_2A6EE, bl
seg006:0913
seg006:0913 loc_E763:                               ; CODE XREF: seg006:090D␘j
seg006:0913                 and     cl, 0Ch
seg006:0916                 cmp     cl, 0Ch
seg006:0919                 jnz     short loc_E785
seg006:091B                 cmp     al, 20h ; ' '
seg006:091D                 jz      short loc_E7C9
seg006:091F                 jb      short loc_E77B
seg006:0921                 sub     al, bl
seg006:0923                 cmp     al, 20h ; ' '
seg006:0925                 jnb     short loc_E7C9
seg006:0927                 mov     al, 20h ; ' '
seg006:0929                 jmp     short loc_E7C9
seg006:092B ; ---------------------------------------------------------------------------
seg006:092B
seg006:092B loc_E77B:                               ; CODE XREF: seg006:091F␘j
seg006:092B                 add     al, bl
seg006:092D                 cmp     al, 20h ; ' '
seg006:092F                 jbe     short loc_E7C9
seg006:0931                 mov     al, 20h ; ' '
seg006:0933                 jmp     short loc_E7C9
seg006:0935 ; ---------------------------------------------------------------------------
seg006:0935
seg006:0935 loc_E785:                               ; CODE XREF: seg006:0919␘j
seg006:0935                 test    cl, 8
seg006:0938                 jz      short loc_E7A8
seg006:093A                 cmp     al, 14h
seg006:093C                 jnb     short loc_E790
seg006:093E                 add     al, 1
seg006:0940
seg006:0940 loc_E790:                               ; CODE XREF: seg006:093C␘j
seg006:0940                 add     al, bl
seg006:0942                 cmp     al, 40h ; '@'
seg006:0944                 jbe     short loc_E798
seg006:0946                 mov     al, 40h ; '@'
seg006:0948
seg006:0948 loc_E798:                               ; CODE XREF: seg006:0944␘j
seg006:0948                 cmp     al, 20h ; ' '
seg006:094A                 jb      short loc_E7A8
seg006:094C                 cmp     ah, 20h ; ' '
seg006:094F                 jnb     short loc_E7A8
seg006:0951                 mov     byte_2A6EE, 0
seg006:0956                 mov     al, 20h ; ' '
seg006:0958
seg006:0958 loc_E7A8:                               ; CODE XREF: seg006:0938␘j
seg006:0958                                         ; seg006:094A␘j ...
seg006:0958                 test    cl, 4
seg006:095B                 jz      short loc_E7C9
seg006:095D                 cmp     al, 2Ch ; ','
seg006:095F                 jbe     short loc_E7B3
seg006:0961                 sub     al, 1
seg006:0963
seg006:0963 loc_E7B3:                               ; CODE XREF: seg006:095F␘j
seg006:0963                 sub     al, bl
seg006:0965                 jns     short loc_E7B9
seg006:0967                 sub     al, al
seg006:0969
seg006:0969 loc_E7B9:                               ; CODE XREF: seg006:0965␘j
seg006:0969                 cmp     al, 20h ; ' '
seg006:096B                 ja      short loc_E7C9
seg006:096D                 cmp     ah, 20h ; ' '
seg006:0970                 jbe     short loc_E7C9
seg006:0972                 mov     byte_2A6EE, 0
seg006:0977                 mov     al, 20h ; ' '
seg006:0979
seg006:0979 loc_E7C9:                               ; CODE XREF: seg006:091D␘j
seg006:0979                                         ; seg006:0925␘j ...
seg006:0979                 mov     byte_2D62A, al
seg006:097C                 pop     si
seg006:097D                 retn
seg006:097E ; ---------------------------------------------------------------------------
seg006:097E                 push    cx
seg006:097F                 test    cl, 1
seg006:0982                 jz      short loc_E7D9
seg006:0984                 call    sub_DF8E
seg006:0987                 pop     cx
seg006:0988                 retn
seg006:0989 ; ---------------------------------------------------------------------------
seg006:0989
seg006:0989 loc_E7D9:                               ; CODE XREF: seg006:0982␘j
seg006:0989                 test    cl, 2
seg006:098C                 jz      short loc_E7E1
seg006:098E                 call    sub_E02F
seg006:0991
seg006:0991 loc_E7E1:                               ; CODE XREF: seg006:098C␘j
seg006:0991                 pop     cx
seg006:0992                 retn
seg006:0992 ; ---------------------------------------------------------------------------
seg006:0993                 db 54h, 4Ah, 4Ch, 20h, 39h, 30h
seg006:0999
