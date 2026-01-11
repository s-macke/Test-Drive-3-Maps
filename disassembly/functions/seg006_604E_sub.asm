seg006:604E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:604E
seg006:604E
seg006:604E sub_13E9E       proc near               ; CODE XREF: sub_10131+CB␘p
seg006:604E                                         ; sub_13CCA+1A7␘p ...
seg006:604E                 mov     byte_2ACA0, 0
seg006:6053                 mov     bx, word_29461
seg006:6057                 shl     bx, 1
seg006:6059                 jmp     short loc_13EC3
seg006:605B ; ---------------------------------------------------------------------------
seg006:605B
seg006:605B loc_13EAB:                              ; CODE XREF: sub_13E9E+28␙j
seg006:605B                 mov     ax, [bx-5C7Bh]
seg006:605F                 mov     dx, ax
seg006:6061                 and     al, 3Fh
seg006:6063                 cmp     al, 11h
seg006:6065                 jz      short loc_13EBB
seg006:6067                 cmp     al, 30h ; '0'
seg006:6069                 jnz     short loc_13EC3
seg006:606B
seg006:606B loc_13EBB:                              ; CODE XREF: sub_13E9E+17␘j
seg006:606B                 and     dx, 0BFBFh
seg006:606F                 mov     [bx-5C7Bh], dx
seg006:6073
seg006:6073 loc_13EC3:                              ; CODE XREF: sub_13E9E+B␘j
seg006:6073                                         ; sub_13E9E+1B␘j
seg006:6073                 sub     bx, 2
seg006:6076                 jnz     short loc_13EAB
seg006:6078                 retn
seg006:6078 sub_13E9E       endp
seg006:6078
seg006:6079
