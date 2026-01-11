seg006:66AA ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:66AA
seg006:66AA
seg006:66AA sub_144FA       proc near               ; CODE XREF: sub_1176A:loc_119ED␘p
seg006:66AA
seg006:66AA ; FUNCTION CHUNK AT seg006:6726 SIZE 00000006 BYTES
seg006:66AA ; FUNCTION CHUNK AT seg006:677B SIZE 0000000A BYTES
seg006:66AA ; FUNCTION CHUNK AT seg006:67D2 SIZE 00000084 BYTES
seg006:66AA
seg006:66AA                 mov     ax, [bx+560Eh]
seg006:66AE                 cmp     ax, [si+560Eh]
seg006:66B2                 jl      short loc_14506
seg006:66B4                 xchg    bx, si
seg006:66B6
seg006:66B6 loc_14506:                              ; CODE XREF: sub_144FA+8␘j
seg006:66B6                 mov     ax, [si+560Eh]
seg006:66BA                 cmp     ax, [di+560Eh]
seg006:66BE                 jl      short loc_14512
seg006:66C0                 xchg    si, di
seg006:66C2
seg006:66C2 loc_14512:                              ; CODE XREF: sub_144FA+14␘j
seg006:66C2                 mov     ax, [bx+560Eh]
seg006:66C6                 cmp     ax, [si+560Eh]
seg006:66CA                 jl      short loc_1451E
seg006:66CC                 xchg    bx, si
seg006:66CE
seg006:66CE loc_1451E:                              ; CODE XREF: sub_144FA+20␘j
seg006:66CE                 mov     ax, [di+560Eh]
seg006:66D2                 cmp     ax, [bx+560Eh]
seg006:66D6                 jnz     short loc_14576
seg006:66D6 sub_144FA       endp
seg006:66D6
seg006:66D8
