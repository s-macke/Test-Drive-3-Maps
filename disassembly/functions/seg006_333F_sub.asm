seg006:333F ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:333F
seg006:333F
seg006:333F sub_1118F       proc near               ; CODE XREF: sub_153B8+E1␙p
seg006:333F                 push    si
seg006:3340                 push    di
seg006:3341                 push    es
seg006:3342                 push    bp
seg006:3343                 mov     word_2AABE, 60h ; '`'
seg006:3349                 call    sub_12A2C
seg006:334C                 call    sub_13B3C
seg006:334F                 call    sub_11618
seg006:3352                 call    sub_112E8
seg006:3355                 cmp     byte_28477, 0
seg006:335A                 jnz     short loc_111AF
seg006:335C                 call    sub_111BD
seg006:335F
seg006:335F loc_111AF:                              ; CODE XREF: sub_1118F+1B␘j
seg006:335F                 call    sub_11408
seg006:3362                 call    sub_12A39
seg006:3365                 call    sub_13CCA
seg006:3368                 pop     bp
seg006:3369                 pop     es
seg006:336A                 pop     di
seg006:336B                 pop     si
seg006:336C                 retn
seg006:336C sub_1118F       endp
seg006:336C
seg006:336D
