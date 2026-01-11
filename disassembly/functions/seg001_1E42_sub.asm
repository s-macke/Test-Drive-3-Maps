seg001:1E42 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:1E42
seg001:1E42
seg001:1E42 sub_3B82        proc far                ; CODE XREF: sub_3A5C+8C␘p
seg001:1E42                 cmp     byte_1F17C, 1
seg001:1E47                 jnz     short locret_3BD3
seg001:1E49                 cmp     byte_1F16E, 0
seg001:1E4E                 jnz     short locret_3BD3
seg001:1E50                 sub     ax, ax
seg001:1E52                 push    ax
seg001:1E53                 call    sub_1E040
seg001:1E58                 add     sp, 2
seg001:1E5B                 mov     ax, 0FBEh
seg001:1E5E                 push    ax
seg001:1E5F                 mov     ax, 0A9Ch
seg001:1E62                 push    ax
seg001:1E63                 call    sub_195EA
seg001:1E68                 add     sp, 4
seg001:1E6B                 push    word_2DAE2
seg001:1E6F                 push    word_2DAE0
seg001:1E73                 mov     ax, 0A9Ah
seg001:1E76                 push    ax
seg001:1E77                 call    sub_E26
seg001:1E7C                 add     sp, 6
seg001:1E7F                 sub     ax, ax
seg001:1E81                 push    ax
seg001:1E82                 push    ax
seg001:1E83                 push    word_2DAE2
seg001:1E87                 push    word_2DAE0
seg001:1E8B                 call    sub_1DFD7
seg001:1E90                 add     sp, 8
seg001:1E93
seg001:1E93 locret_3BD3:                            ; CODE XREF: sub_3B82+5␘j
seg001:1E93                                         ; sub_3B82+C␘j
seg001:1E93                 retf
seg001:1E93 sub_3B82        endp
seg001:1E93
seg001:1E94
