seg031:0DEC ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:0DEC
seg031:0DEC ; Attributes: bp-based frame
seg031:0DEC
seg031:0DEC sub_19C4C       proc far                ; CODE XREF: sub_190A2+45␘P
seg031:0DEC
seg031:0DEC arg_0           = word ptr  6
seg031:0DEC
seg031:0DEC                 push    bp
seg031:0DED                 mov     bp, sp
seg031:0DEF                 push    si
seg031:0DF0                 mov     si, [bp+arg_0]
seg031:0DF3                 test    byte ptr [si+6], 83h
seg031:0DF7                 jz      short loc_19C78
seg031:0DF9                 test    byte ptr [si+6], 8
seg031:0DFD                 jz      short loc_19C78
seg031:0DFF                 push    word ptr [si+4]
seg031:0E02                 call    sub_1AA5A
seg031:0E07                 add     sp, 2
seg031:0E0A                 and     byte ptr [si+6], 0F7h
seg031:0E0E                 sub     ax, ax
seg031:0E10                 mov     [si], ax
seg031:0E12                 mov     [si+4], ax
seg031:0E15                 mov     [si+2], ax
seg031:0E18
seg031:0E18 loc_19C78:                              ; CODE XREF: sub_19C4C+B␘j
seg031:0E18                                         ; sub_19C4C+11␘j
seg031:0E18                 pop     si
seg031:0E19                 pop     bp
seg031:0E1A                 retf
seg031:0E1A sub_19C4C       endp
seg031:0E1A
seg031:0E1A ; ---------------------------------------------------------------------------
seg031:0E1B                 align 2
seg031:0E1C
