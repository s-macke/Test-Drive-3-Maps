seg000:1C9E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg000:1C9E
seg000:1C9E
seg000:1C9E sub_1C9E        proc far                ; CODE XREF: sub_1688+45D␘p
seg000:1C9E                                         ; sub_1C3E+37␘p
seg000:1C9E                 mov     ax, word_1F19C
seg000:1CA1                 cmp     word_1F1A2, ax
seg000:1CA5                 jnb     short loc_1CAD
seg000:1CA7                 mov     ax, word_1F1A2
seg000:1CAA                 mov     word_1F19C, ax
seg000:1CAD
seg000:1CAD loc_1CAD:                               ; CODE XREF: sub_1C9E+7␘j
seg000:1CAD                 mov     ax, word_1F1A0
seg000:1CB0                 cmp     word_1F1A2, ax
seg000:1CB4                 jbe     short loc_1CBC
seg000:1CB6                 mov     ax, word_1F1A2
seg000:1CB9                 mov     word_1F1A0, ax
seg000:1CBC
seg000:1CBC loc_1CBC:                               ; CODE XREF: sub_1C9E+16␘j
seg000:1CBC                 mov     ax, word_1F1A6
seg000:1CBF                 cmp     word_1F1AC, ax
seg000:1CC3                 jnb     short loc_1CCB
seg000:1CC5                 mov     ax, word_1F1AC
seg000:1CC8                 mov     word_1F1A6, ax
seg000:1CCB
seg000:1CCB loc_1CCB:                               ; CODE XREF: sub_1C9E+25␘j
seg000:1CCB                 mov     ax, word_1F1AA
seg000:1CCE                 cmp     word_1F1AC, ax
seg000:1CD2                 jbe     short loc_1CDA
seg000:1CD4                 mov     ax, word_1F1AC
seg000:1CD7                 mov     word_1F1AA, ax
seg000:1CDA
seg000:1CDA loc_1CDA:                               ; CODE XREF: sub_1C9E+34␘j
seg000:1CDA                 mov     ax, word_1F1A0
seg000:1CDD                 sub     ax, word_1F19E
seg000:1CE1                 mov     cl, 3
seg000:1CE3                 shr     ax, cl
seg000:1CE5                 add     ax, word_1F19E
seg000:1CE9                 cmp     ax, word_1F1A2
seg000:1CED                 jnb     short loc_1CF6
seg000:1CEF                 add     byte_28467, 8
seg000:1CF4                 jmp     short loc_1D10
seg000:1CF6 ; ---------------------------------------------------------------------------
seg000:1CF6
seg000:1CF6 loc_1CF6:                               ; CODE XREF: sub_1C9E+4F␘j
seg000:1CF6                 mov     ax, word_1F19E
seg000:1CF9                 mov     cx, ax
seg000:1CFB                 sub     cx, word_1F19C
seg000:1CFF                 shr     cx, 1
seg000:1D01                 shr     cx, 1
seg000:1D03                 sub     ax, cx
seg000:1D05                 cmp     ax, word_1F1A2
seg000:1D09                 jbe     short loc_1D10
seg000:1D0B                 add     byte_28467, 4
seg000:1D10
seg000:1D10 loc_1D10:                               ; CODE XREF: sub_1C9E+56␘j
seg000:1D10                                         ; sub_1C9E+6B␘j
seg000:1D10                 mov     ax, word_1F1AA
seg000:1D13                 sub     ax, word_1F1A8
seg000:1D17                 sub     dx, dx
seg000:1D19                 mov     cx, 6
seg000:1D1C                 div     cx
seg000:1D1E                 add     ax, word_1F1A8
seg000:1D22                 cmp     ax, word_1F1AC
seg000:1D26                 jnb     short loc_1D2E
seg000:1D28                 add     byte_28467, 2
seg000:1D2D                 retf
seg000:1D2E ; ---------------------------------------------------------------------------
seg000:1D2E
seg000:1D2E loc_1D2E:                               ; CODE XREF: sub_1C9E+88␘j
seg000:1D2E                 mov     ax, word_1F1A8
seg000:1D31                 mov     cx, ax
seg000:1D33                 sub     cx, word_1F1A6
seg000:1D37                 shr     cx, 1
seg000:1D39                 shr     cx, 1
seg000:1D3B                 sub     ax, cx
seg000:1D3D                 cmp     ax, word_1F1AC
seg000:1D41                 jbe     short locret_1D47
seg000:1D43                 inc     byte_28467
seg000:1D47
seg000:1D47 locret_1D47:                            ; CODE XREF: sub_1C9E+A3␘j
seg000:1D47                 retf
seg000:1D47 sub_1C9E        endp
seg000:1D47
seg000:1D47 seg000          ends
seg000:1D47
seg001:0008 ; ---------------------------------------------------------------------------
seg001:0008
seg001:0008 ; Segment type: Pure code
seg001:0008 seg001          segment byte public 'CODE' use16
seg001:0008                 assume cs:seg001
seg001:0008                 ;org 8
seg001:0008                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg001:0008
