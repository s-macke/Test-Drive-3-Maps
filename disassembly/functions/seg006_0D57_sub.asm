seg006:0D57 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:0D57
seg006:0D57
seg006:0D57 sub_EBA7        proc far                ; CODE XREF: sub_110C3:loc_1113B␙P
seg006:0D57                                         ; sub_122FD+7F␙P
seg006:0D57                 mov     ax, word_1F1B2
seg006:0D5A                 shr     ax, 1
seg006:0D5C                 shr     ax, 1
seg006:0D5E                 test    ah, 65h
seg006:0D61                 jz      short loc_EBD0
seg006:0D63                 test    ah, 1Fh
seg006:0D66                 jnz     short locret_EBFC
seg006:0D68                 mov     cl, al
seg006:0D6A                 and     cl, 1
seg006:0D6D                 push    cx
seg006:0D6E                 mov     ax, 2Eh ; '.'
seg006:0D71                 push    ax
seg006:0D72                 call    sub_1688
seg006:0D77                 add     sp, 2
seg006:0D7A                 pop     cx
seg006:0D7B                 mov     ax, 1
seg006:0D7E                 jmp     short loc_EBF6
seg006:0D80 ; ---------------------------------------------------------------------------
seg006:0D80
seg006:0D80 loc_EBD0:                               ; CODE XREF: sub_EBA7+A␘j
seg006:0D80                 mov     cl, al
seg006:0D82                 and     cl, 1
seg006:0D85                 mov     ax, 0Ch
seg006:0D88                 call    sub_D045
seg006:0D8D                 mov     ax, 4
seg006:0D90                 jmp     short loc_EBF6
seg006:0D92 ; ---------------------------------------------------------------------------
seg006:0D92
seg006:0D92 loc_EBE2:                               ; CODE XREF: sub_EB91+14␘j
seg006:0D92                 mov     cl, byte_2A6C1
seg006:0D96                 cmp     cl, 1
seg006:0D99                 jz      short locret_EBFC
seg006:0D9B                 mov     ax, 0Bh
seg006:0D9E                 call    sub_D045
seg006:0DA3                 mov     ax, 100h
seg006:0DA6
seg006:0DA6 loc_EBF6:                               ; CODE XREF: sub_EBA7+27␘j
seg006:0DA6                                         ; sub_EBA7+39␘j
seg006:0DA6                 shl     ax, cl
seg006:0DA8                 or      word_28472, ax
seg006:0DAC
seg006:0DAC locret_EBFC:                            ; CODE XREF: sub_EB91+5␘j
seg006:0DAC                                         ; sub_EB91+C␘j ...
seg006:0DAC                 retf
seg006:0DAC sub_EBA7        endp
seg006:0DAC
seg006:0DAD
