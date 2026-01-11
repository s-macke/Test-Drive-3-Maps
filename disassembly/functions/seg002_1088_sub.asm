seg002:1088 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:1088
seg002:1088
seg002:1088 sub_8758        proc far                ; CODE XREF: sub_3186+25B␘P
seg002:1088                                         ; sub_76D6+40␘p ...
seg002:1088                 mov     byte_2A6F3, 0FFh
seg002:108D                 cmp     word_1F16A, 2
seg002:1092                 jz      short loc_876A
seg002:1094                 mov     word_2AD1E, 0FFFFh
seg002:109A
seg002:109A loc_876A:                               ; CODE XREF: sub_8758+A␘j
seg002:109A                 sub     ax, ax
seg002:109C                 mov     word_1F17A, ax
seg002:109F                 push    ax
seg002:10A0                 call    far ptr sub_16BB0
seg002:10A5                 add     sp, 2
seg002:10A8                 retf
seg002:10A8 sub_8758        endp
seg002:10A8
seg002:10A8 ; ---------------------------------------------------------------------------
seg002:10A9                 align 2
seg002:10AA
