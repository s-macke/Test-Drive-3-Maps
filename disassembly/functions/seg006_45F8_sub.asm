seg006:45F8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:45F8
seg006:45F8
seg006:45F8 sub_12448       proc near               ; CODE XREF: sub_123A8+87␘p
seg006:45F8                                         ; sub_123A8+93␘p
seg006:45F8                 mov     cx, si
seg006:45FA                 add     cx, 2
seg006:45FD                 shr     cx, 1
seg006:45FF                 add     cx, 3
seg006:4602                 shl     si, 1
seg006:4604                 shl     si, 1
seg006:4606                 add     si, 2
seg006:4609
seg006:4609 loc_12459:                              ; CODE XREF: sub_12448+2B␙j
seg006:4609                 push    di
seg006:460A                 push    cx
seg006:460B                 add     di, [si-45E2h]
seg006:460F                 and     di, 7FFFh
seg006:4613
seg006:4613 loc_12463:                              ; CODE XREF: sub_12448+24␙j
seg006:4613                 cmp     di, bx
seg006:4615                 jnb     short loc_1246E
seg006:4617                 stosb
seg006:4618                 add     di, 140h
seg006:461C                 loop    loc_12463
seg006:461E
seg006:461E loc_1246E:                              ; CODE XREF: sub_12448+1D␘j
seg006:461E                 pop     cx
seg006:461F                 pop     di
seg006:4620                 sub     si, 2
seg006:4623                 jns     short loc_12459
seg006:4625                 retn
seg006:4625 sub_12448       endp
seg006:4625
seg006:4626
