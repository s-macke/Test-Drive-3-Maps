seg006:5920 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:5920
seg006:5920
seg006:5920 sub_13770       proc near               ; CODE XREF: sub_13132+181␘p
seg006:5920                                         ; sub_13132+208␘p
seg006:5920                 shl     si, 1
seg006:5922                 mov     ax, [si-6A83h]
seg006:5926                 mov     byte_28456, ah
seg006:592A                 and     ax, 0FFh
seg006:592D                 mov     si, ax
seg006:592F                 shl     si, 1
seg006:5931                 mov     es, word_2C190
seg006:5935                 add     si, word_2C18E
seg006:5939                 mov     si, es:[si]
seg006:593C                 add     si, word_2C18E
seg006:5940                 mov     ch, es:[si]
seg006:5943                 mov     byte_2ACA2, ch
seg006:5947                 and     ch, 7Fh
seg006:594A                 mov     byte_28459, ch
seg006:594E                 inc     si
seg006:594F                 retn
seg006:594F sub_13770       endp
seg006:594F
seg006:5950
