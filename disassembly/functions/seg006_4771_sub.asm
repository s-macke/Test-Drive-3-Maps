seg006:4771 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:4771
seg006:4771
seg006:4771 sub_125C1       proc near               ; CODE XREF: sub_1254A:loc_125BA␘p
seg006:4771                 mov     dx, 7FFFh
seg006:4774                 sub     di, 3C1h
seg006:4778                 and     di, dx
seg006:477A                 cmp     di, bx
seg006:477C                 ja      short loc_125D1
seg006:477E                 mov     es:[di], ax
seg006:4781
seg006:4781 loc_125D1:                              ; CODE XREF: sub_125C1+B␘j
seg006:4781                 add     di, 13Fh
seg006:4785                 and     di, dx
seg006:4787                 cmp     di, bx
seg006:4789                 ja      short loc_125E6
seg006:478B                 mov     es:[di], ax
seg006:478E                 mov     es:[di+2], ax
seg006:4792                 mov     es:[di+4], al
seg006:4796
seg006:4796 loc_125E6:                              ; CODE XREF: sub_125C1+18␘j
seg006:4796                 add     di, 13Fh
seg006:479A                 and     di, dx
seg006:479C                 cmp     di, bx
seg006:479E                 ja      short loc_125FF
seg006:47A0                 mov     es:[di], ax
seg006:47A3                 mov     es:[di+2], ax
seg006:47A7                 mov     es:[di+4], ax
seg006:47AB                 mov     es:[di+6], al
seg006:47AF
seg006:47AF loc_125FF:                              ; CODE XREF: sub_125C1+2D␘j
seg006:47AF                 add     di, 141h
seg006:47B3                 and     di, dx
seg006:47B5                 cmp     di, bx
seg006:47B7                 ja      short loc_12614
seg006:47B9                 mov     es:[di], ax
seg006:47BC                 mov     es:[di+2], ax
seg006:47C0                 mov     es:[di+5], al
seg006:47C4
seg006:47C4 loc_12614:                              ; CODE XREF: sub_125C1+46␘j
seg006:47C4                 add     di, 141h
seg006:47C8                 and     di, dx
seg006:47CA                 cmp     di, bx
seg006:47CC                 ja      short loc_12625
seg006:47CE                 mov     es:[di], ax
seg006:47D1                 mov     es:[di+3], al
seg006:47D5
seg006:47D5 loc_12625:                              ; CODE XREF: sub_125C1+5B␘j
seg006:47D5                 shr     si, 1
seg006:47D7                 retn
seg006:47D7 sub_125C1       endp
seg006:47D7
seg006:47D8
