seg012:000D ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg012:000D
seg012:000D ; Attributes: bp-based frame
seg012:000D
seg012:000D sub_16A5D       proc far                ; CODE XREF: sub_1688+152␘P
seg012:000D                                         ; sub_1688+190␘P ...
seg012:000D
seg012:000D arg_0           = word ptr  6
seg012:000D
seg012:000D                 push    bp
seg012:000E                 mov     bp, sp
seg012:0010                 push    si
seg012:0011                 push    di
seg012:0012                 xor     ah, ah
seg012:0014                 int     1Ah             ; CLOCK - GET TIME OF DAY
seg012:0014                                         ; Return: CX:DX = clock count
seg012:0014                                         ; AL = 00h if clock was read or written (via AH=0,1) since the previous
seg012:0014                                         ; midnight
seg012:0014                                         ; Otherwise, AL > 0
seg012:0016                 mov     bx, dx
seg012:0018                 mov     cx, [bp+arg_0]
seg012:001B                 or      cx, cx
seg012:001D                 jle     short loc_16A8D
seg012:001F
seg012:001F loc_16A6F:                              ; CODE XREF: sub_16A5D+2E␙j
seg012:001F                 push    cx
seg012:0020                 push    bx
seg012:0021                 xor     ah, ah
seg012:0023                 int     1Ah             ; CLOCK - GET TIME OF DAY
seg012:0023                                         ; Return: CX:DX = clock count
seg012:0023                                         ; AL = 00h if clock was read or written (via AH=0,1) since the previous
seg012:0023                                         ; midnight
seg012:0023                                         ; Otherwise, AL > 0
seg012:0025                 pop     bx
seg012:0026                 cmp     bx, dx
seg012:0028                 jg      short loc_16A7E
seg012:002A                 sub     dx, bx
seg012:002C                 jmp     short loc_16A88
seg012:002E ; ---------------------------------------------------------------------------
seg012:002E
seg012:002E loc_16A7E:                              ; CODE XREF: sub_16A5D+1B␘j
seg012:002E                 mov     ax, 0FFFFh
seg012:0031                 sub     ax, bx
seg012:0033                 add     ax, dx
seg012:0035                 inc     ax
seg012:0036                 mov     dx, ax
seg012:0038
seg012:0038 loc_16A88:                              ; CODE XREF: sub_16A5D+1F␘j
seg012:0038                 pop     cx
seg012:0039                 cmp     dx, cx
seg012:003B                 jl      short loc_16A6F
seg012:003D
seg012:003D loc_16A8D:                              ; CODE XREF: sub_16A5D+10␘j
seg012:003D                 xor     ax, ax
seg012:003F                 pop     di
seg012:0040                 pop     si
seg012:0041                 pop     bp
seg012:0042                 retf
seg012:0042 sub_16A5D       endp
seg012:0042
seg012:0042 seg012          ends
seg012:0042
seg013:0003 ; ---------------------------------------------------------------------------
seg013:0003
seg013:0003 ; Segment type: Pure code
seg013:0003 seg013          segment byte public 'CODE' use16
seg013:0003                 assume cs:seg013
seg013:0003                 ;org 3
seg013:0003                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg013:0003
