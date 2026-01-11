seg002:1DCA ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:1DCA
seg002:1DCA
seg002:1DCA sub_949A        proc far                ; CODE XREF: sub_7B8C+7A␘p
seg002:1DCA                                         ; sub_7CC4+E5␘p ...
seg002:1DCA                 cmp     word_2D628, 13h
seg002:1DCF                 jz      short locret_94F3
seg002:1DD1                 cmp     byte_1F168, 0
seg002:1DD6                 jz      short locret_94F3
seg002:1DD8                 cmp     byte_1FBE9, 0
seg002:1DDD                 jz      short locret_94F3
seg002:1DDF                 cmp     byte_1FAA3, 0
seg002:1DE4                 jnz     short locret_94F3
seg002:1DE6                 mov     al, byte_2C18C
seg002:1DE9                 sub     ah, ah
seg002:1DEB                 mov     cx, ax
seg002:1DED                 shl     ax, 1
seg002:1DEF                 add     ax, cx
seg002:1DF1                 shl     ax, 1
seg002:1DF3                 add     ax, 9E0h
seg002:1DF6                 push    ax
seg002:1DF7                 mov     ax, 0ACCh
seg002:1DFA                 push    ax
seg002:1DFB                 call    sub_195EA
seg002:1E00                 add     sp, 4
seg002:1E03                 mov     ax, 11FAh
seg002:1E06                 push    ax
seg002:1E07                 mov     ax, 0AD1h
seg002:1E0A                 push    ax
seg002:1E0B                 call    sub_195EA
seg002:1E10                 add     sp, 4
seg002:1E13                 mov     ax, 0D0CCh
seg002:1E16                 push    ax
seg002:1E17                 mov     ax, 0ACAh
seg002:1E1A                 push    ax
seg002:1E1B                 call    sub_DBA
seg002:1E20                 add     sp, 4
seg002:1E23
seg002:1E23 locret_94F3:                            ; CODE XREF: sub_949A+5␘j
seg002:1E23                                         ; sub_949A+C␘j ...
seg002:1E23                 retf
seg002:1E23 sub_949A        endp
seg002:1E23
seg002:1E23 seg002          ends
seg002:1E23
seg003:0004 ; ---------------------------------------------------------------------------
seg003:0004
seg003:0004 ; Segment type: Pure code
seg003:0004 seg003          segment byte public 'CODE' use16
seg003:0004                 assume cs:seg003
seg003:0004                 ;org 4
seg003:0004                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg003:0004
