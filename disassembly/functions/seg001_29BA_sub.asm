seg001:29BA ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:29BA
seg001:29BA ; Attributes: bp-based frame
seg001:29BA
seg001:29BA sub_46FA        proc far                ; CODE XREF: sub_2C88+21A␘p
seg001:29BA                                         ; sub_2C88+305␘p ...
seg001:29BA
seg001:29BA var_2           = word ptr -2
seg001:29BA arg_0           = word ptr  6
seg001:29BA arg_2           = word ptr  8
seg001:29BA arg_4           = word ptr  0Ah
seg001:29BA arg_6           = word ptr  0Ch
seg001:29BA
seg001:29BA                 push    bp
seg001:29BB                 mov     bp, sp
seg001:29BD                 sub     sp, 2
seg001:29C0                 mov     bx, [bp+arg_0]
seg001:29C3                 mov     ax, bx
seg001:29C5                 shl     bx, 1
seg001:29C7                 add     bx, ax
seg001:29C9                 shl     bx, 1
seg001:29CB                 cmp     byte ptr [bx+9E0h], 43h ; 'C'
seg001:29D0                 jz      short loc_471A
seg001:29D2
seg001:29D2 loc_4712:                               ; CODE XREF: sub_46FA+65␙j
seg001:29D2                                         ; sub_46FA+8F␙j
seg001:29D2                 mov     ax, 1
seg001:29D5                 mov     sp, bp
seg001:29D7                 pop     bp
seg001:29D8                 retf
seg001:29D8 ; ---------------------------------------------------------------------------
seg001:29D9                 align 2
seg001:29DA
seg001:29DA loc_471A:                               ; CODE XREF: sub_46FA+16␘j
seg001:29DA                 mov     ax, [bp+arg_0]
seg001:29DD                 mov     cx, ax
seg001:29DF                 shl     ax, 1
seg001:29E1                 add     ax, cx
seg001:29E3                 shl     ax, 1
seg001:29E5                 add     ax, 9E0h
seg001:29E8                 push    ax
seg001:29E9                 mov     ax, [bp+arg_2]
seg001:29EC                 add     ax, 2
seg001:29EF                 push    ax
seg001:29F0                 call    sub_195EA
seg001:29F5                 add     sp, 4
seg001:29F8                 mov     ax, 1038h
seg001:29FB                 push    ax
seg001:29FC                 mov     ax, [bp+arg_2]
seg001:29FF                 add     ax, 7
seg001:2A02                 push    ax
seg001:2A03                 call    sub_195EA
seg001:2A08                 add     sp, 4
seg001:2A0B                 mov     ax, 103Dh
seg001:2A0E                 push    ax
seg001:2A0F                 push    [bp+arg_2]
seg001:2A12                 call    sub_1916A
seg001:2A17                 add     sp, 4
seg001:2A1A                 mov     word_2D896, ax
seg001:2A1D                 or      ax, ax
seg001:2A1F                 jz      short loc_4712
seg001:2A21                 push    ax
seg001:2A22                 mov     ax, 13h
seg001:2A25                 push    ax
seg001:2A26                 mov     ax, 1
seg001:2A29                 push    ax
seg001:2A2A                 push    [bp+arg_4]
seg001:2A2D                 call    sub_19196
seg001:2A32                 add     sp, 8
seg001:2A35                 mov     [bp+var_2], ax
seg001:2A38                 cmp     ax, 13h
seg001:2A3B                 jz      short loc_478C
seg001:2A3D
seg001:2A3D loc_477D:                               ; CODE XREF: sub_46FA+AF␙j
seg001:2A3D                                         ; sub_46FA+CF␙j ...
seg001:2A3D                 push    word_2D896
seg001:2A41                 call    sub_190A2
seg001:2A46                 add     sp, 2
seg001:2A49                 jmp     short loc_4712
seg001:2A49 ; ---------------------------------------------------------------------------
seg001:2A4B                 align 2
seg001:2A4C
seg001:2A4C loc_478C:                               ; CODE XREF: sub_46FA+81␘j
seg001:2A4C                 push    word_2D896
seg001:2A50                 mov     ax, 0Dh
seg001:2A53                 push    ax
seg001:2A54                 mov     ax, 2
seg001:2A57                 push    ax
seg001:2A58                 push    [bp+arg_6]
seg001:2A5B                 call    sub_19196
seg001:2A60                 add     sp, 8
seg001:2A63                 mov     [bp+var_2], ax
seg001:2A66                 cmp     ax, 0Dh
seg001:2A69                 jnz     short loc_477D
seg001:2A6B                 push    word_2D896
seg001:2A6F                 mov     ax, 42h ; 'B'
seg001:2A72                 push    ax
seg001:2A73                 mov     ax, 1
seg001:2A76                 push    ax
seg001:2A77                 mov     ax, 0E774h
seg001:2A7A                 push    ax
seg001:2A7B                 call    sub_19196
seg001:2A80                 add     sp, 8
seg001:2A83                 mov     [bp+var_2], ax
seg001:2A86                 cmp     ax, 42h ; 'B'
seg001:2A89                 jnz     short loc_477D
seg001:2A8B                 push    word_2D896
seg001:2A8F                 mov     ax, 7
seg001:2A92                 push    ax
seg001:2A93                 mov     ax, 1
seg001:2A96                 push    ax
seg001:2A97                 mov     ax, 0E751h
seg001:2A9A                 push    ax
seg001:2A9B                 call    sub_19196
seg001:2AA0                 add     sp, 8
seg001:2AA3                 mov     [bp+var_2], ax
seg001:2AA6                 cmp     ax, 7
seg001:2AA9                 jnz     short loc_477D
seg001:2AAB                 push    word_2D896
seg001:2AAF                 mov     ax, 5
seg001:2AB2                 push    ax
seg001:2AB3                 mov     ax, 2
seg001:2AB6                 push    ax
seg001:2AB7                 mov     ax, 0E98Eh
seg001:2ABA                 push    ax
seg001:2ABB                 call    sub_19196
seg001:2AC0                 add     sp, 8
seg001:2AC3                 mov     [bp+var_2], ax
seg001:2AC6                 cmp     ax, 5
seg001:2AC9                 jz      short loc_480E
seg001:2ACB                 jmp     loc_477D
seg001:2ACE ; ---------------------------------------------------------------------------
seg001:2ACE
seg001:2ACE loc_480E:                               ; CODE XREF: sub_46FA+10F␘j
seg001:2ACE                 push    word_2D896
seg001:2AD2                 mov     ax, 0Ah
seg001:2AD5                 push    ax
seg001:2AD6                 mov     ax, 1
seg001:2AD9                 push    ax
seg001:2ADA                 mov     ax, 0D0BEh
seg001:2ADD                 push    ax
seg001:2ADE                 call    sub_19196
seg001:2AE3                 add     sp, 8
seg001:2AE6                 mov     [bp+var_2], ax
seg001:2AE9                 cmp     ax, 0Ah
seg001:2AEC                 jz      short loc_4831
seg001:2AEE                 jmp     loc_477D
seg001:2AF1 ; ---------------------------------------------------------------------------
seg001:2AF1
seg001:2AF1 loc_4831:                               ; CODE XREF: sub_46FA+132␘j
seg001:2AF1                 push    word_2D896
seg001:2AF5                 mov     ax, 14h
seg001:2AF8                 push    ax
seg001:2AF9                 mov     ax, 2
seg001:2AFC                 push    ax
seg001:2AFD                 mov     ax, 0CE74h
seg001:2B00                 push    ax
seg001:2B01                 call    sub_19196
seg001:2B06                 add     sp, 8
seg001:2B09                 mov     [bp+var_2], ax
seg001:2B0C                 cmp     ax, 14h
seg001:2B0F                 jz      short loc_4854
seg001:2B11                 jmp     loc_477D
seg001:2B14 ; ---------------------------------------------------------------------------
seg001:2B14
seg001:2B14 loc_4854:                               ; CODE XREF: sub_46FA+155␘j
seg001:2B14                 push    word_2D896
seg001:2B18                 mov     ax, 0D9h ; '+'
seg001:2B1B                 push    ax
seg001:2B1C                 mov     ax, 1
seg001:2B1F                 push    ax
seg001:2B20                 mov     ax, 93C4h
seg001:2B23                 push    ax
seg001:2B24                 call    sub_19196
seg001:2B29                 add     sp, 8
seg001:2B2C                 mov     [bp+var_2], ax
seg001:2B2F                 cmp     ax, 0D9h ; '+'
seg001:2B32                 jz      short loc_4877
seg001:2B34                 jmp     loc_477D
seg001:2B37 ; ---------------------------------------------------------------------------
seg001:2B37
seg001:2B37 loc_4877:                               ; CODE XREF: sub_46FA+178␘j
seg001:2B37                 push    word_2D896
seg001:2B3B                 mov     ax, 23h ; '#'
seg001:2B3E                 push    ax
seg001:2B3F                 mov     ax, 2
seg001:2B42                 push    ax
seg001:2B43                 mov     ax, 1200h
seg001:2B46                 push    ax
seg001:2B47                 call    sub_19196
seg001:2B4C                 add     sp, 8
seg001:2B4F                 mov     [bp+var_2], ax
seg001:2B52                 cmp     ax, 23h ; '#'
seg001:2B55                 jz      short loc_489A
seg001:2B57                 jmp     loc_477D
seg001:2B5A ; ---------------------------------------------------------------------------
seg001:2B5A
seg001:2B5A loc_489A:                               ; CODE XREF: sub_46FA+19B␘j
seg001:2B5A                 push    word_2D896
seg001:2B5E                 mov     ax, 0D2h ; '-'
seg001:2B61                 push    ax
seg001:2B62                 mov     ax, 1
seg001:2B65                 push    ax
seg001:2B66                 mov     ax, 74Ch
seg001:2B69                 push    ax
seg001:2B6A                 call    sub_19196
seg001:2B6F                 add     sp, 8
seg001:2B72                 mov     [bp+var_2], ax
seg001:2B75                 cmp     ax, 0D2h ; '-'
seg001:2B78                 jz      short loc_48BD
seg001:2B7A                 jmp     loc_477D
seg001:2B7D ; ---------------------------------------------------------------------------
seg001:2B7D
seg001:2B7D loc_48BD:                               ; CODE XREF: sub_46FA+1BE␘j
seg001:2B7D                 push    word_2D896
seg001:2B81                 call    sub_190A2
seg001:2B86                 add     sp, 2
seg001:2B89                 sub     ax, ax
seg001:2B8B                 mov     sp, bp
seg001:2B8D                 pop     bp
seg001:2B8E                 retf
seg001:2B8E sub_46FA        endp
seg001:2B8E
seg001:2B8E ; ---------------------------------------------------------------------------
seg001:2B8F                 align 2
seg001:2B90
