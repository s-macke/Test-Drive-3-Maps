seg006:2FAA ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:2FAA
seg006:2FAA
seg006:2FAA sub_10DFA       proc near               ; CODE XREF: sub_10F0A+11␙p
seg006:2FAA                 push    si
seg006:2FAB                 cmp     word_2849A, 0
seg006:2FB0                 jz      short loc_10E11
seg006:2FB2                 cmp     byte_2AA3F, 0
seg006:2FB7                 jz      short loc_10E0E
seg006:2FB9                 call    sub_15573
seg006:2FBC                 jmp     short loc_10E11
seg006:2FBE ; ---------------------------------------------------------------------------
seg006:2FBE
seg006:2FBE loc_10E0E:                              ; CODE XREF: sub_10DFA+D␘j
seg006:2FBE                 call    sub_10E13
seg006:2FC1
seg006:2FC1 loc_10E11:                              ; CODE XREF: sub_10DFA+6␘j
seg006:2FC1                                         ; sub_10DFA+12␘j
seg006:2FC1                 pop     si
seg006:2FC2                 retn
seg006:2FC2 sub_10DFA       endp
seg006:2FC2
seg006:2FC3
