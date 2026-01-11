seg001:1AD0 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:1AD0
seg001:1AD0 ; Attributes: bp-based frame
seg001:1AD0
seg001:1AD0 sub_3810        proc far                ; CODE XREF: sub_27D0+23C␘p
seg001:1AD0                                         ; sub_27D0+268␘p ...
seg001:1AD0
seg001:1AD0 var_2           = word ptr -2
seg001:1AD0 arg_0           = word ptr  6
seg001:1AD0 arg_2           = word ptr  8
seg001:1AD0
seg001:1AD0                 push    bp
seg001:1AD1                 mov     bp, sp
seg001:1AD3                 sub     sp, 2
seg001:1AD6                 push    si
seg001:1AD7                 jmp     short loc_3829
seg001:1AD7 ; ---------------------------------------------------------------------------
seg001:1AD9                 align 2
seg001:1ADA
seg001:1ADA loc_381A:                               ; CODE XREF: sub_3810+26␙j
seg001:1ADA                 lea     ax, [bp+var_2]
seg001:1ADD                 push    ax
seg001:1ADE                 call    sub_C6AC
seg001:1AE3                 add     sp, 2
seg001:1AE6                 inc     [bp+arg_2]
seg001:1AE9
seg001:1AE9 loc_3829:                               ; CODE XREF: sub_3810+7␘j
seg001:1AE9                 mov     bx, [bp+arg_2]
seg001:1AEC                 mov     si, [bp+arg_0]
seg001:1AEF                 mov     al, [bx+si]
seg001:1AF1                 mov     byte ptr [bp+var_2], al
seg001:1AF4                 cmp     al, 80h ; 'Ç'
seg001:1AF6                 jb      short loc_381A
seg001:1AF8                 inc     [bp+arg_2]
seg001:1AFB                 mov     ax, [bp+arg_2]
seg001:1AFE                 pop     si
seg001:1AFF                 mov     sp, bp
seg001:1B01                 pop     bp
seg001:1B02                 retf
seg001:1B02 sub_3810        endp
seg001:1B02
seg001:1B02 ; ---------------------------------------------------------------------------
seg001:1B03                 align 2
seg001:1B04                 push    bp
seg001:1B05                 mov     bp, sp
seg001:1B07                 sub     sp, 2
seg001:1B0A                 push    si
seg001:1B0B                 mov     si, [bp+8]
seg001:1B0E                 add     si, [bp+6]
seg001:1B11                 mov     al, [si]
seg001:1B13                 sub     ah, ah
seg001:1B15                 push    ax
seg001:1B16                 mov     al, [si+1]
seg001:1B19                 push    ax
seg001:1B1A                 call    sub_C674
seg001:1B1F                 add     sp, 4
seg001:1B22                 add     word ptr [bp+8], 2
seg001:1B26                 jmp     short loc_3877
seg001:1B28 ; ---------------------------------------------------------------------------
seg001:1B28
seg001:1B28 loc_3868:                               ; CODE XREF: seg001:1B44␙j
seg001:1B28                 lea     ax, [bp-2]
seg001:1B2B                 push    ax
seg001:1B2C                 call    sub_C6AC
seg001:1B31                 add     sp, 2
seg001:1B34                 inc     word ptr [bp+8]
seg001:1B37
seg001:1B37 loc_3877:                               ; CODE XREF: seg001:1B26␘j
seg001:1B37                 mov     bx, [bp+8]
seg001:1B3A                 mov     si, [bp+6]
seg001:1B3D                 mov     al, [bx+si]
seg001:1B3F                 mov     [bp-2], al
seg001:1B42                 cmp     al, 80h ; 'Ç'
seg001:1B44                 jb      short loc_3868
seg001:1B46                 inc     word ptr [bp+8]
seg001:1B49                 mov     ax, [bp+8]
seg001:1B4C                 pop     si
seg001:1B4D                 mov     sp, bp
seg001:1B4F                 pop     bp
seg001:1B50                 retf
seg001:1B50 ; ---------------------------------------------------------------------------
seg001:1B51                 align 2
seg001:1B52                 push    bp
seg001:1B53                 mov     bp, sp
seg001:1B55                 sub     sp, 4
seg001:1B58                 push    si
seg001:1B59                 mov     word ptr [bp-2], 0
seg001:1B5E                 jmp     short loc_38BA
seg001:1B60 ; ---------------------------------------------------------------------------
seg001:1B60
seg001:1B60 loc_38A0:                               ; CODE XREF: seg001:1B80␙j
seg001:1B60                 mov     bx, [bp-2]
seg001:1B63                 mov     si, [bp+6]
seg001:1B66                 mov     al, [bx+si]
seg001:1B68                 mov     [bp-4], al
seg001:1B6B                 lea     ax, [bp-4]
seg001:1B6E                 push    ax
seg001:1B6F                 call    sub_C6AC
seg001:1B74                 add     sp, 2
seg001:1B77                 inc     word ptr [bp-2]
seg001:1B7A
seg001:1B7A loc_38BA:                               ; CODE XREF: seg001:1B5E␘j
seg001:1B7A                 mov     ax, [bp+8]
seg001:1B7D                 cmp     [bp-2], ax
seg001:1B80                 jl      short loc_38A0
seg001:1B82                 pop     si
seg001:1B83                 mov     sp, bp
seg001:1B85                 pop     bp
seg001:1B86                 retf
seg001:1B86 ; ---------------------------------------------------------------------------
seg001:1B87                 align 2
seg001:1B88
