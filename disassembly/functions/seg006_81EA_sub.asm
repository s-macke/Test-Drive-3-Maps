seg006:81EA ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:81EA
seg006:81EA
seg006:81EA sub_1603A       proc near               ; CODE XREF: sub_1176A:loc_11997␘p
seg006:81EA
seg006:81EA ; FUNCTION CHUNK AT seg006:8289 SIZE 00000006 BYTES
seg006:81EA ; FUNCTION CHUNK AT seg006:8302 SIZE 0000000A BYTES
seg006:81EA ; FUNCTION CHUNK AT seg006:837D SIZE 000000A8 BYTES
seg006:81EA
seg006:81EA                 mov     ax, [bx+7B8Eh]
seg006:81EE                 cmp     ax, [si+7B8Eh]
seg006:81F2                 jl      short loc_16046
seg006:81F4                 xchg    bx, si
seg006:81F6
seg006:81F6 loc_16046:                              ; CODE XREF: sub_1603A+8␘j
seg006:81F6                 mov     ax, [si+7B8Eh]
seg006:81FA                 cmp     ax, [di+7B8Eh]
seg006:81FE                 jl      short loc_16052
seg006:8200                 xchg    si, di
seg006:8202
seg006:8202 loc_16052:                              ; CODE XREF: sub_1603A+14␘j
seg006:8202                 mov     ax, [bx+7B8Eh]
seg006:8206                 cmp     ax, [si+7B8Eh]
seg006:820A                 jl      short loc_1605E
seg006:820C                 xchg    bx, si
seg006:820E
seg006:820E loc_1605E:                              ; CODE XREF: sub_1603A+20␘j
seg006:820E                 mov     ax, [di+7B8Eh]
seg006:8212                 cmp     ax, [bx+7B8Eh]
seg006:8216                 jnz     short loc_160D9
seg006:8216 sub_1603A       endp
seg006:8216
seg006:8218
