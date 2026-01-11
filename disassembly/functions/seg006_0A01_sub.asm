seg006:0A01 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:0A01
seg006:0A01
seg006:0A01 sub_E851        proc near               ; CODE XREF: sub_E7E9:loc_E841␘p
seg006:0A01                 mov     al, byte_2A6F5
seg006:0A04                 cmp     al, byte_2A6F3
seg006:0A08                 jnz     short loc_E85B
seg006:0A0A                 retn
seg006:0A0B ; ---------------------------------------------------------------------------
seg006:0A0B
seg006:0A0B loc_E85B:                               ; CODE XREF: sub_E851+7␘j
seg006:0A0B                 mov     byte_2A6F3, al
seg006:0A0E                 mov     bh, 0Ah
seg006:0A10                 sub     ah, ah
seg006:0A12                 div     bh
seg006:0A14                 mov     byte_28456, al
seg006:0A17                 mov     byte_28457, ah
seg006:0A1B                 sub     ax, ax
seg006:0A1D                 push    ax
seg006:0A1E                 call    far ptr sub_16A93
seg006:0A23                 add     sp, 2
seg006:0A26                 mov     ax, 0Dh
seg006:0A29                 push    ax
seg006:0A2A                 mov     al, 8
seg006:0A2C                 push    ax
seg006:0A2D                 mov     ax, 3Eh ; '>'
seg006:0A30                 push    ax
seg006:0A31                 mov     ax, 35h ; '5'
seg006:0A34                 push    ax
seg006:0A35                 call    far ptr sub_172BD
seg006:0A3A                 add     sp, 4
seg006:0A3D                 mov     ax, 32h ; '2'
seg006:0A40                 push    ax
seg006:0A41                 mov     ax, 29h ; ')'
seg006:0A44                 push    ax
seg006:0A45                 call    far ptr sub_172BD
seg006:0A4A                 add     sp, 8
seg006:0A4D                 mov     al, byte_2C1A7
seg006:0A50                 sub     ah, ah
seg006:0A52                 push    ax
seg006:0A53                 call    far ptr sub_16A93
seg006:0A58                 add     sp, 2
seg006:0A5B                 mov     ax, 0Dh
seg006:0A5E                 push    ax
seg006:0A5F                 mov     ax, 35h ; '5'
seg006:0A62                 push    ax
seg006:0A63                 call    sub_16A1A
seg006:0A68                 add     sp, 4
seg006:0A6B                 mov     ax, 5
seg006:0A6E                 push    ax
seg006:0A6F                 mov     al, 1
seg006:0A71                 push    ax
seg006:0A72                 mov     bl, byte_28456
seg006:0A76                 mov     bh, bl
seg006:0A78                 shl     bl, 1
seg006:0A7A                 shl     bl, 1
seg006:0A7C                 add     bl, bh
seg006:0A7E                 sub     bh, bh
seg006:0A80                 add     bx, 0B665h
seg006:0A84                 push    bx
seg006:0A85                 call    far ptr sub_1805D
seg006:0A8A                 add     sp, 6
seg006:0A8D                 mov     ax, 0Dh
seg006:0A90                 push    ax
seg006:0A91                 mov     ax, 3Ah ; ':'
seg006:0A94                 push    ax
seg006:0A95                 call    sub_16A1A
seg006:0A9A                 add     sp, 4
seg006:0A9D                 mov     ax, 5
seg006:0AA0                 push    ax
seg006:0AA1                 mov     al, 1
seg006:0AA3                 push    ax
seg006:0AA4                 mov     bl, byte_28457
seg006:0AA8                 mov     bh, bl
seg006:0AAA                 shl     bl, 1
seg006:0AAC                 shl     bl, 1
seg006:0AAE                 add     bl, bh
seg006:0AB0                 sub     bh, bh
seg006:0AB2                 add     bx, 0B665h
seg006:0AB6                 push    bx
seg006:0AB7                 call    far ptr sub_1805D
seg006:0ABC                 add     sp, 6
seg006:0ABF                 mov     al, byte_2A6F6
seg006:0AC2                 or      al, al
seg006:0AC4                 jz      short locret_E989
seg006:0AC6                 mov     bh, 0Ah
seg006:0AC8                 sub     ah, ah
seg006:0ACA                 div     bh
seg006:0ACC                 mov     byte_28456, al
seg006:0ACF                 mov     byte_28457, ah
seg006:0AD3                 mov     ax, 0Dh
seg006:0AD6                 push    ax
seg006:0AD7                 mov     ax, 29h ; ')'
seg006:0ADA                 push    ax
seg006:0ADB                 call    sub_16A1A
seg006:0AE0                 add     sp, 4
seg006:0AE3                 mov     bl, byte_28456
seg006:0AE7                 mov     bh, bl
seg006:0AE9                 shl     bl, 1
seg006:0AEB                 jz      short loc_E957
seg006:0AED                 mov     ax, 5
seg006:0AF0                 push    ax
seg006:0AF1                 mov     al, 1
seg006:0AF3                 push    ax
seg006:0AF4                 shl     bl, 1
seg006:0AF6                 add     bl, bh
seg006:0AF8                 sub     bh, bh
seg006:0AFA                 add     bx, 0B665h
seg006:0AFE                 push    bx
seg006:0AFF                 call    far ptr sub_1805D
seg006:0B04                 add     sp, 6
seg006:0B07
seg006:0B07 loc_E957:                               ; CODE XREF: sub_E851+EA␘j
seg006:0B07                 mov     ax, 0Dh
seg006:0B0A                 push    ax
seg006:0B0B                 mov     ax, 2Eh ; '.'
seg006:0B0E                 push    ax
seg006:0B0F                 call    sub_16A1A
seg006:0B14                 add     sp, 4
seg006:0B17                 mov     ax, 5
seg006:0B1A                 push    ax
seg006:0B1B                 mov     al, 1
seg006:0B1D                 push    ax
seg006:0B1E                 mov     bl, byte_28457
seg006:0B22                 mov     bh, bl
seg006:0B24                 shl     bl, 1
seg006:0B26                 shl     bl, 1
seg006:0B28                 add     bl, bh
seg006:0B2A                 sub     bh, bh
seg006:0B2C                 add     bx, 0B665h
seg006:0B30                 push    bx
seg006:0B31                 call    far ptr sub_1805D
seg006:0B36                 add     sp, 6
seg006:0B39
seg006:0B39 locret_E989:                            ; CODE XREF: sub_E851+C3␘j
seg006:0B39                 retn
seg006:0B39 sub_E851        endp
seg006:0B39
seg006:0B3A
