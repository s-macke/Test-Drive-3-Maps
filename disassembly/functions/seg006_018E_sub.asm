seg006:018E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:018E
seg006:018E
seg006:018E sub_DFDE        proc near               ; CODE XREF: sub_E02F:loc_E038␙p
seg006:018E                                         ; sub_E684:loc_E6FC␙p
seg006:018E                 cmp     byte_28477, 0
seg006:0193                 jnz     short locret_E02E
seg006:0195                 mov     byte_2A6F1, 1
seg006:019A                 cmp     byte_2A6C1, 0
seg006:019F                 jz      short locret_E02E
seg006:01A1                 dec     byte_2A6C1
seg006:01A5                 jnz     short loc_E016
seg006:01A7                 test    word_20330, 8000h
seg006:01AD                 jnz     short loc_E016
seg006:01AF                 mov     dx, word_20376
seg006:01B3                 cmp     dx, 14h
seg006:01B6                 jbe     short loc_E016
seg006:01B8                 or      word_28472, 100h
seg006:01BE                 mov     ax, 0Bh
seg006:01C1                 call    sub_D045
seg006:01C6
seg006:01C6 loc_E016:                               ; CODE XREF: sub_DFDE+17␘j
seg006:01C6                                         ; sub_DFDE+1F␘j ...
seg006:01C6                 cmp     byte_2A6C1, 1
seg006:01CB                 jz      short loc_E029
seg006:01CD                 mov     dx, word_20314
seg006:01D1                 ja      short loc_E025
seg006:01D3                 shl     dx, 1
seg006:01D5
seg006:01D5 loc_E025:                               ; CODE XREF: sub_DFDE+43␘j
seg006:01D5                 mov     byte_2A6C0, dl
seg006:01D9
seg006:01D9 loc_E029:                               ; CODE XREF: sub_DFDE+3D␘j
seg006:01D9                 call    sub_DFCB
seg006:01DE
seg006:01DE locret_E02E:                            ; CODE XREF: sub_DFDE+5␘j
seg006:01DE                                         ; sub_DFDE+11␘j
seg006:01DE                 retn
seg006:01DE sub_DFDE        endp
seg006:01DE
seg006:01DF
