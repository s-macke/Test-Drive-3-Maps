seg006:23DA ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:23DA
seg006:23DA
seg006:23DA sub_1022A       proc far                ; CODE XREF: sub_83E0:loc_866A␘P
seg006:23DA                 push    si
seg006:23DB                 push    di
seg006:23DC                 push    es
seg006:23DD
seg006:23DD loc_1022D:                              ; CODE XREF: sub_1022A+17␙j
seg006:23DD                                         ; sub_1022A+1C␙j
seg006:23DD                 call    sub_E9E
seg006:23E2                 mov     bx, ax
seg006:23E4                 sub     cl, cl
seg006:23E6
seg006:23E6 loc_10236:                              ; CODE XREF: sub_1022A:loc_1023C␙j
seg006:23E6                 shl     bx, 1
seg006:23E8                 jnb     short loc_1023C
seg006:23EA                 inc     cl
seg006:23EC
seg006:23EC loc_1023C:                              ; CODE XREF: sub_1022A+E␘j
seg006:23EC                 jnz     short loc_10236
seg006:23EE                 cmp     cl, 0Ah
seg006:23F1                 jb      short loc_1022D
seg006:23F3                 cmp     cl, 0Ch
seg006:23F6                 ja      short loc_1022D
seg006:23F8                 mov     word_2AA40, ax
seg006:23FB                 mov     word_2A6D7, ax
seg006:23FE                 call    sub_102C0
seg006:2401                 call    sub_10131
seg006:2406                 sub     ax, ax
seg006:2408                 mov     bx, 0FFFFh
seg006:240B                 mov     byte_1FB54, al
seg006:240E                 mov     byte_2AC90, al
seg006:2411                 mov     byte_2AC91, al
seg006:2414                 mov     byte_2AC92, al
seg006:2417                 mov     byte_2AC93, al
seg006:241A                 mov     byte_2AC94, al
seg006:241D                 mov     byte ptr word_2AC95, al
seg006:2420                 mov     byte ptr word_2AC95+1, al
seg006:2423                 mov     byte ptr word_2AC97, al
seg006:2426                 mov     byte ptr word_2AC97+1, al
seg006:2429                 mov     byte_2AC99, al
seg006:242C                 mov     byte_2A6F6, al
seg006:242F                 mov     byte_2A6F5, al
seg006:2432                 mov     byte_2A6C2, al
seg006:2435                 mov     byte_2AC65, al
seg006:2438                 mov     byte_2AB1E, al
seg006:243B                 mov     byte_2AC9F, al
seg006:243E                 mov     word_2AC9B, ax
seg006:2441                 mov     byte_2ACA3, al
seg006:2444                 mov     byte_2ACA4, al
seg006:2447                 mov     word_2ACA5, ax
seg006:244A                 mov     byte_2ACA7, al
seg006:244D                 mov     word_2ACA8, ax
seg006:2450                 mov     byte_2ACAA, al
seg006:2453                 mov     word_2AC5F, ax
seg006:2456                 mov     word_2AC61, ax
seg006:2459                 mov     word_2AC63, ax
seg006:245C                 mov     dx, word_28CDF
seg006:2460                 mov     word_28486, dx
seg006:2464                 mov     dx, word_28F5F
seg006:2468                 mov     word_28488, dx
seg006:246C                 pop     es
seg006:246D                 pop     di
seg006:246E                 pop     si
seg006:246F                 retf
seg006:246F sub_1022A       endp
seg006:246F
seg006:2470
