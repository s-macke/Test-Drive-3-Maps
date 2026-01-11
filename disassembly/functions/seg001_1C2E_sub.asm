seg001:1C2E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:1C2E
seg001:1C2E
seg001:1C2E sub_396E        proc far                ; CODE XREF: sub_7CC4+211␙P
seg001:1C2E                                         ; sub_7FD4+3BB␙P
seg001:1C2E                 cmp     word_2D628, 13h
seg001:1C33                 jz      short locret_3981
seg001:1C35                 mov     ax, 0E6Ah
seg001:1C38                 push    ax
seg001:1C39                 call    far ptr sub_18994
seg001:1C3E                 add     sp, 2
seg001:1C41
seg001:1C41 locret_3981:                            ; CODE XREF: sub_396E+5␘j
seg001:1C41                 retf
seg001:1C41 sub_396E        endp
seg001:1C41
seg001:1C42
