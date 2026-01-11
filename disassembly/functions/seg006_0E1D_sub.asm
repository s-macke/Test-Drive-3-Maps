seg006:0E1D ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:0E1D
seg006:0E1D
seg006:0E1D sub_EC6D        proc far                ; CODE XREF: sub_76D6:loc_77F6␘P
seg006:0E1D                                         ; sub_76D6+3C3␘P ...
seg006:0E1D                 mov     bl, byte_28468
seg006:0E21                 or      bl, bl
seg006:0E23                 jz      short locret_ECA1
seg006:0E25                 dec     bl
seg006:0E27                 mov     byte_28468, bl
seg006:0E2B                 cmp     byte ptr word_2DA66, 13h
seg006:0E30                 jz      short locret_ECA1
seg006:0E32                 sub     bh, bh
seg006:0E34                 shl     bx, 1
seg006:0E36                 add     bx, 0DFDh
seg006:0E3A                 mov     al, cs:[bx]
seg006:0E3D                 inc     bx
seg006:0E3E                 sub     ah, ah
seg006:0E40                 push    ax
seg006:0E41                 mov     al, cs:[bx]
seg006:0E44                 push    ax
seg006:0E45                 mov     ax, ds
seg006:0E47                 mov     es, ax
seg006:0E49                 assume es:dseg
seg006:0E49                 call    far ptr sub_171CA
seg006:0E4E                 add     sp, 4
seg006:0E51
seg006:0E51 locret_ECA1:                            ; CODE XREF: sub_EC6D+6␘j
seg006:0E51                                         ; sub_EC6D+13␘j
seg006:0E51                 retf
seg006:0E51 sub_EC6D        endp
seg006:0E51
seg006:0E52
