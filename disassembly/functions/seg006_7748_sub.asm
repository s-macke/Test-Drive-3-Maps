seg006:7748 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:7748
seg006:7748 ; Attributes: bp-based frame
seg006:7748
seg006:7748 sub_15598       proc near               ; CODE XREF: sub_15573+1E␘p
seg006:7748                                         ; sub_15598+2E␙p ...
seg006:7748
seg006:7748 arg_0           = word ptr  4
seg006:7748 arg_2           = word ptr  6
seg006:7748
seg006:7748                 push    bp
seg006:7749                 mov     bp, sp
seg006:774B                 mov     si, [bp+arg_2]
seg006:774E                 mov     dx, [si]
seg006:7750                 add     si, bx
seg006:7752                 mov     di, [bp+arg_0]
seg006:7755
seg006:7755 loc_155A5:                              ; CODE XREF: sub_15598+15␙j
seg006:7755                                         ; sub_15598+7D␙j
seg006:7755                 cmp     dx, [si]
seg006:7757                 ja      short loc_155F0
seg006:7759                 add     si, bx
seg006:775B                 cmp     si, di
seg006:775D                 jbe     short loc_155A5
seg006:775F                 mov     si, [bp+arg_2]
seg006:7762                 cmp     si, di
seg006:7764                 jz      short loc_155B9
seg006:7766                 call    sub_15617
seg006:7769
seg006:7769 loc_155B9:                              ; CODE XREF: sub_15598+1C␘j
seg006:7769                                         ; sub_15598+70␙j
seg006:7769                 sub     di, bx
seg006:776B                 push    si
seg006:776C                 push    di
seg006:776D                 sub     di, si
seg006:776F                 jle     short loc_155CE
seg006:7771                 cmp     di, 28h ; '('
seg006:7774                 jbe     short loc_155CB
seg006:7776                 call    sub_15598
seg006:7779                 jmp     short loc_155CE
seg006:777B ; ---------------------------------------------------------------------------
seg006:777B
seg006:777B loc_155CB:                              ; CODE XREF: sub_15598+2C␘j
seg006:777B                 call    sub_15647
seg006:777E
seg006:777E loc_155CE:                              ; CODE XREF: sub_15598+27␘j
seg006:777E                                         ; sub_15598+31␘j
seg006:777E                 pop     si
seg006:777F                 add     sp, bx
seg006:7781                 add     si, bx
seg006:7783
seg006:7783 loc_155D3:                              ; CODE XREF: sub_15598+6B␙j
seg006:7783                 add     si, bx
seg006:7785                 push    si
seg006:7786                 mov     di, [bp+arg_0]
seg006:7789                 push    di
seg006:778A                 sub     di, si
seg006:778C                 jle     short loc_155EB
seg006:778E                 cmp     di, 28h ; '('
seg006:7791                 jbe     short loc_155E8
seg006:7793                 call    sub_15598
seg006:7796                 jmp     short loc_155EB
seg006:7798 ; ---------------------------------------------------------------------------
seg006:7798
seg006:7798 loc_155E8:                              ; CODE XREF: sub_15598+49␘j
seg006:7798                 call    sub_15647
seg006:779B
seg006:779B loc_155EB:                              ; CODE XREF: sub_15598+44␘j
seg006:779B                                         ; sub_15598+4E␘j
seg006:779B                 add     sp, 4
seg006:779E                 pop     bp
seg006:779F                 retn
seg006:77A0 ; ---------------------------------------------------------------------------
seg006:77A0
seg006:77A0 loc_155F0:                              ; CODE XREF: sub_15598+F␘j
seg006:77A0                                         ; sub_15598+60␙j
seg006:77A0                 cmp     dx, [di]
seg006:77A2                 jb      short loc_1560A
seg006:77A4                 sub     di, bx
seg006:77A6                 cmp     di, si
seg006:77A8                 jnb     short loc_155F0
seg006:77AA
seg006:77AA loc_155FA:                              ; CODE XREF: sub_15598+79␙j
seg006:77AA                 mov     di, si
seg006:77AC                 sub     di, bx
seg006:77AE                 mov     si, [bp+arg_2]
seg006:77B1                 cmp     si, di
seg006:77B3                 jz      short loc_155D3
seg006:77B5                 call    sub_15617
seg006:77B8                 jmp     short loc_155B9
seg006:77BA ; ---------------------------------------------------------------------------
seg006:77BA
seg006:77BA loc_1560A:                              ; CODE XREF: sub_15598+5A␘j
seg006:77BA                 call    sub_15617
seg006:77BD                 add     si, bx
seg006:77BF                 cmp     di, si
seg006:77C1                 jbe     short loc_155FA
seg006:77C3                 sub     di, bx
seg006:77C5                 jmp     short loc_155A5
seg006:77C5 sub_15598       endp
seg006:77C5
seg006:77C7
