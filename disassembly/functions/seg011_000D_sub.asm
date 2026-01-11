seg011:000D ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg011:000D
seg011:000D
seg011:000D sub_16A2D       proc far                ; CODE XREF: sub_7BC+21␘P
seg011:000D                                         ; sub_84C+30␘P
seg011:000D                 push    si
seg011:000E                 push    di
seg011:000F                 cmp     word_2B1C2, 0
seg011:0014                 jnz     short loc_16A53
seg011:0016                 push    ds
seg011:0017                 mov     ah, 9
seg011:0019                 push    cs
seg011:001A                 pop     ds
seg011:001B                 assume ds:seg011
seg011:001B                 lea     dx, ds:38h
seg011:001F                 int     21h             ; DOS - PRINT STRING
seg011:001F                                         ; DS:DX -> string terminated by "$"
seg011:0021                 pop     ds
seg011:0022                 assume ds:dseg
seg011:0022                 mov     ah, 3
seg011:0024                 mov     bh, byte_2AD34
seg011:0028                 int     10h             ; - VIDEO - READ CURSOR POSITION
seg011:0028                                         ; BH = page number
seg011:0028                                         ; Return: DH,DL = row,column, CH = cursor start line, CL = cursor end line
seg011:002A                 or      dx, dx
seg011:002C                 jz      short loc_16A53
seg011:002E                 call    far ptr sub_18DD5
seg011:0033
seg011:0033 loc_16A53:                              ; CODE XREF: sub_16A2D+7␘j
seg011:0033                                         ; sub_16A2D+1F␘j
seg011:0033                 xor     ax, ax
seg011:0035                 pop     di
seg011:0036                 pop     si
seg011:0037                 retf
seg011:0037 sub_16A2D       endp
seg011:0037
seg011:0037 seg011          ends
seg011:0037
seg012:0008 ; ---------------------------------------------------------------------------
seg012:0008
seg012:0008 ; Segment type: Pure code
seg012:0008 seg012          segment byte public 'CODE' use16
seg012:0008                 assume cs:seg012
seg012:0008                 ;org 8
seg012:0008                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg012:0008 byte_16A58      db 1Bh, 5Bh, 32h, 4Ah, 24h ; DATA XREF: sub_16A2D+E␘o
seg012:000D
