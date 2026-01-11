seg006:47D8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:47D8
seg006:47D8
seg006:47D8 sub_12628       proc near               ; CODE XREF: sub_1254A+6B␘p
seg006:47D8                 mov     dx, 7FFFh
seg006:47DB                 cmp     al, 6
seg006:47DD                 jnb     short loc_12699
seg006:47DF                 sub     di, 77Fh
seg006:47E3                 and     di, dx
seg006:47E5                 cmp     di, bx
seg006:47E7                 ja      short loc_1263C
seg006:47E9                 mov     es:[di], al
seg006:47EC
seg006:47EC loc_1263C:                              ; CODE XREF: sub_12628+F␘j
seg006:47EC                 add     di, 27Eh
seg006:47F0                 and     di, dx
seg006:47F2                 cmp     di, bx
seg006:47F4                 ja      short loc_12649
seg006:47F6                 mov     es:[di], al
seg006:47F9
seg006:47F9 loc_12649:                              ; CODE XREF: sub_12628+1C␘j
seg006:47F9                 add     di, 281h
seg006:47FD                 and     di, dx
seg006:47FF                 cmp     di, bx
seg006:4801                 ja      short loc_1265A
seg006:4803                 mov     es:[di], al
seg006:4806                 mov     es:[di+3], al
seg006:480A
seg006:480A loc_1265A:                              ; CODE XREF: sub_12628+29␘j
seg006:480A                 add     di, 13Dh
seg006:480E                 and     di, dx
seg006:4810                 cmp     di, bx
seg006:4812                 ja      short loc_1266B
seg006:4814                 mov     es:[di], al
seg006:4817                 mov     es:[di+3], al
seg006:481B
seg006:481B loc_1266B:                              ; CODE XREF: sub_12628+3A␘j
seg006:481B                 add     di, 144h
seg006:481F                 and     di, dx
seg006:4821                 cmp     di, bx
seg006:4823                 ja      short loc_12678
seg006:4825                 mov     es:[di], al
seg006:4828
seg006:4828 loc_12678:                              ; CODE XREF: sub_12628+4B␘j
seg006:4828                 add     di, 13Eh
seg006:482C                 and     di, dx
seg006:482E                 cmp     di, bx
seg006:4830                 ja      short loc_12689
seg006:4832                 mov     es:[di], al
seg006:4835                 mov     es:[di+1], ax
seg006:4839
seg006:4839 loc_12689:                              ; CODE XREF: sub_12628+58␘j
seg006:4839                 add     di, 141h
seg006:483D                 and     di, dx
seg006:483F                 cmp     di, bx
seg006:4841                 ja      short loc_12696
seg006:4843                 mov     es:[di], al
seg006:4846
seg006:4846 loc_12696:                              ; CODE XREF: sub_12628+69␘j
seg006:4846                 shr     si, 1
seg006:4848                 retn
seg006:4849 ; ---------------------------------------------------------------------------
seg006:4849
seg006:4849 loc_12699:                              ; CODE XREF: sub_12628+5␘j
seg006:4849                 sub     di, 501h
seg006:484D                 and     di, dx
seg006:484F                 cmp     di, bx
seg006:4851                 ja      short loc_126A6
seg006:4853                 mov     es:[di], al
seg006:4856
seg006:4856 loc_126A6:                              ; CODE XREF: sub_12628+79␘j
seg006:4856                 add     di, 13Dh
seg006:485A                 and     di, dx
seg006:485C                 cmp     di, bx
seg006:485E                 ja      short loc_126BB
seg006:4860                 mov     es:[di], al
seg006:4863                 mov     es:[di+3], ax
seg006:4867                 mov     es:[di+7], al
seg006:486B
seg006:486B loc_126BB:                              ; CODE XREF: sub_12628+86␘j
seg006:486B                 add     di, 13Fh
seg006:486F                 and     di, dx
seg006:4871                 cmp     di, bx
seg006:4873                 ja      short loc_126C8
seg006:4875                 mov     es:[di], al
seg006:4878
seg006:4878 loc_126C8:                              ; CODE XREF: sub_12628+9B␘j
seg006:4878                 add     di, 143h
seg006:487C                 and     di, dx
seg006:487E                 cmp     di, bx
seg006:4880                 ja      short loc_126DD
seg006:4882                 mov     es:[di], ax
seg006:4885                 mov     es:[di+2], al
seg006:4889                 mov     es:[di+6], al
seg006:488D
seg006:488D loc_126DD:                              ; CODE XREF: sub_12628+A8␘j
seg006:488D                 add     di, 13Eh
seg006:4891                 and     di, dx
seg006:4893                 cmp     di, bx
seg006:4895                 ja      short loc_126F6
seg006:4897                 mov     es:[di], al
seg006:489A                 mov     es:[di+3], ax
seg006:489E                 mov     es:[di+5], al
seg006:48A2                 mov     es:[di+7], ax
seg006:48A6
seg006:48A6 loc_126F6:                              ; CODE XREF: sub_12628+BD␘j
seg006:48A6                 add     di, 140h
seg006:48AA                 and     di, dx
seg006:48AC                 cmp     di, bx
seg006:48AE                 ja      short loc_12703
seg006:48B0                 mov     es:[di], ax
seg006:48B3
seg006:48B3 loc_12703:                              ; CODE XREF: sub_12628+D6␘j
seg006:48B3                 add     di, 144h
seg006:48B7                 and     di, dx
seg006:48B9                 cmp     di, bx
seg006:48BB                 ja      short loc_12714
seg006:48BD                 mov     es:[di], al
seg006:48C0                 mov     es:[di+4], al
seg006:48C4
seg006:48C4 loc_12714:                              ; CODE XREF: sub_12628+E3␘j
seg006:48C4                 add     di, 13Dh
seg006:48C8                 and     di, dx
seg006:48CA                 cmp     di, bx
seg006:48CC                 ja      short loc_12725
seg006:48CE                 mov     es:[di], al
seg006:48D1                 mov     es:[di+3], ax
seg006:48D5
seg006:48D5 loc_12725:                              ; CODE XREF: sub_12628+F4␘j
seg006:48D5                 shr     si, 1
seg006:48D7                 retn
seg006:48D7 sub_12628       endp
seg006:48D7
seg006:48D8
