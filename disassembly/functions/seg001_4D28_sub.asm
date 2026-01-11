seg001:4D28 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:4D28
seg001:4D28 ; Attributes: bp-based frame
seg001:4D28
seg001:4D28 sub_6A68        proc far                ; CODE XREF: sub_5DB8+16D␘p
seg001:4D28                                         ; sub_5DB8+19C␘p ...
seg001:4D28
seg001:4D28 var_C           = word ptr -0Ch
seg001:4D28 var_A           = word ptr -0Ah
seg001:4D28 var_8           = word ptr -8
seg001:4D28 var_6           = word ptr -6
seg001:4D28 var_4           = word ptr -4
seg001:4D28 var_2           = word ptr -2
seg001:4D28 arg_0           = word ptr  6
seg001:4D28 arg_2           = word ptr  8
seg001:4D28 arg_4           = word ptr  0Ah
seg001:4D28 arg_6           = byte ptr  0Ch
seg001:4D28
seg001:4D28                 push    bp
seg001:4D29                 mov     bp, sp
seg001:4D2B                 sub     sp, 0Ch
seg001:4D2E                 test    [bp+arg_6], 1
seg001:4D32                 jz      short loc_6A80
seg001:4D34                 mov     ax, 4
seg001:4D37                 push    ax
seg001:4D38                 call    far ptr sub_16A93
seg001:4D3D                 add     sp, 2
seg001:4D40
seg001:4D40 loc_6A80:                               ; CODE XREF: sub_6A68+A␘j
seg001:4D40                 mov     bx, [bp+arg_4]
seg001:4D43                 mov     al, [bx]
seg001:4D45                 sub     ah, ah
seg001:4D47                 sub     dx, dx
seg001:4D49                 mov     cx, 3E8h
seg001:4D4C                 div     cx
seg001:4D4E                 mov     ax, dx
seg001:4D50                 sub     dx, dx
seg001:4D52                 mov     cx, 64h ; 'd'
seg001:4D55                 div     cx
seg001:4D57                 mov     [bp+var_2], ax
seg001:4D5A                 or      ax, ax
seg001:4D5C                 jz      short loc_6AF8
seg001:4D5E                 push    [bp+arg_2]
seg001:4D61                 mov     ax, [bp+arg_0]
seg001:4D64                 sub     ax, 5
seg001:4D67                 push    ax
seg001:4D68                 call    sub_16A1A
seg001:4D6D                 add     sp, 4
seg001:4D70                 mov     ax, 5
seg001:4D73                 push    ax
seg001:4D74                 mov     ax, 1
seg001:4D77                 push    ax
seg001:4D78                 mov     ax, [bp+var_2]
seg001:4D7B                 mov     cx, ax
seg001:4D7D                 shl     ax, 1
seg001:4D7F                 shl     ax, 1
seg001:4D81                 add     ax, cx
seg001:4D83                 add     ax, 0B665h
seg001:4D86                 push    ax
seg001:4D87                 call    far ptr sub_1805D
seg001:4D8C                 add     sp, 6
seg001:4D8F                 push    [bp+arg_2]
seg001:4D92                 push    [bp+arg_0]
seg001:4D95                 call    sub_16A1A
seg001:4D9A                 add     sp, 4
seg001:4D9D                 mov     bx, [bp+arg_4]
seg001:4DA0                 mov     al, [bx]
seg001:4DA2                 sub     ah, ah
seg001:4DA4                 mov     cl, 64h ; 'd'
seg001:4DA6                 div     cl
seg001:4DA8                 mov     al, ah
seg001:4DAA                 sub     ah, ah
seg001:4DAC                 mov     cl, 0Ah
seg001:4DAE                 div     cl
seg001:4DB0                 sub     ah, ah
seg001:4DB2                 mov     [bp+var_2], ax
seg001:4DB5                 jmp     short loc_6B22
seg001:4DB5 ; ---------------------------------------------------------------------------
seg001:4DB7                 align 2
seg001:4DB8
seg001:4DB8 loc_6AF8:                               ; CODE XREF: sub_6A68+34␘j
seg001:4DB8                 push    [bp+arg_2]
seg001:4DBB                 push    [bp+arg_0]
seg001:4DBE                 call    sub_16A1A
seg001:4DC3                 add     sp, 4
seg001:4DC6                 mov     bx, [bp+arg_4]
seg001:4DC9                 mov     al, [bx]
seg001:4DCB                 sub     ah, ah
seg001:4DCD                 mov     cl, 64h ; 'd'
seg001:4DCF                 div     cl
seg001:4DD1                 mov     al, ah
seg001:4DD3                 sub     ah, ah
seg001:4DD5                 mov     cl, 0Ah
seg001:4DD7                 div     cl
seg001:4DD9                 sub     ah, ah
seg001:4DDB                 mov     [bp+var_2], ax
seg001:4DDE                 or      ax, ax
seg001:4DE0                 jz      short loc_6B41
seg001:4DE2
seg001:4DE2 loc_6B22:                               ; CODE XREF: sub_6A68+8D␘j
seg001:4DE2                 mov     ax, 5
seg001:4DE5                 push    ax
seg001:4DE6                 mov     ax, 1
seg001:4DE9                 push    ax
seg001:4DEA                 mov     ax, [bp+var_2]
seg001:4DED                 mov     cx, ax
seg001:4DEF                 shl     ax, 1
seg001:4DF1                 shl     ax, 1
seg001:4DF3                 add     ax, cx
seg001:4DF5                 add     ax, 0B665h
seg001:4DF8                 push    ax
seg001:4DF9                 call    far ptr sub_1805D
seg001:4DFE                 add     sp, 6
seg001:4E01
seg001:4E01 loc_6B41:                               ; CODE XREF: sub_6A68+B8␘j
seg001:4E01                 push    [bp+arg_2]
seg001:4E04                 mov     ax, [bp+arg_0]
seg001:4E07                 add     ax, 5
seg001:4E0A                 push    ax
seg001:4E0B                 call    sub_16A1A
seg001:4E10                 add     sp, 4
seg001:4E13                 mov     bx, [bp+arg_4]
seg001:4E16                 mov     al, [bx]
seg001:4E18                 sub     ah, ah
seg001:4E1A                 mov     cl, 0Ah
seg001:4E1C                 div     cl
seg001:4E1E                 mov     al, ah
seg001:4E20                 sub     ah, ah
seg001:4E22                 mov     [bp+var_2], ax
seg001:4E25                 mov     ax, 5
seg001:4E28                 push    ax
seg001:4E29                 mov     ax, 1
seg001:4E2C                 push    ax
seg001:4E2D                 mov     ax, [bp+var_2]
seg001:4E30                 mov     cx, ax
seg001:4E32                 shl     ax, 1
seg001:4E34                 shl     ax, 1
seg001:4E36                 add     ax, cx
seg001:4E38                 add     ax, 0B665h
seg001:4E3B                 push    ax
seg001:4E3C                 call    far ptr sub_1805D
seg001:4E41                 add     sp, 6
seg001:4E44                 mov     ax, [bp+arg_2]
seg001:4E47                 dec     ax
seg001:4E48                 push    ax
seg001:4E49                 mov     ax, [bp+arg_0]
seg001:4E4C                 add     ax, 0Bh
seg001:4E4F                 push    ax
seg001:4E50                 call    sub_16E27
seg001:4E55                 add     sp, 4
seg001:4E58                 mov     ax, [bp+arg_2]
seg001:4E5B                 sub     ax, 3
seg001:4E5E                 push    ax
seg001:4E5F                 mov     ax, [bp+arg_0]
seg001:4E62                 add     ax, 0Bh
seg001:4E65                 push    ax
seg001:4E66                 call    sub_16E27
seg001:4E6B                 add     sp, 4
seg001:4E6E                 push    [bp+arg_2]
seg001:4E71                 mov     ax, [bp+arg_0]
seg001:4E74                 add     ax, 0Eh
seg001:4E77                 push    ax
seg001:4E78                 call    sub_16A1A
seg001:4E7D                 add     sp, 4
seg001:4E80                 mov     bx, [bp+arg_4]
seg001:4E83                 mov     al, [bx+1]
seg001:4E86                 sub     ah, ah
seg001:4E88                 mov     cl, 64h ; 'd'
seg001:4E8A                 div     cl
seg001:4E8C                 mov     al, ah
seg001:4E8E                 sub     ah, ah
seg001:4E90                 mov     cl, 0Ah
seg001:4E92                 div     cl
seg001:4E94                 sub     ah, ah
seg001:4E96                 mov     [bp+var_2], ax
seg001:4E99                 mov     ax, 5
seg001:4E9C                 push    ax
seg001:4E9D                 mov     ax, 1
seg001:4EA0                 push    ax
seg001:4EA1                 mov     ax, [bp+var_2]
seg001:4EA4                 mov     cx, ax
seg001:4EA6                 shl     ax, 1
seg001:4EA8                 shl     ax, 1
seg001:4EAA                 add     ax, cx
seg001:4EAC                 add     ax, 0B665h
seg001:4EAF                 push    ax
seg001:4EB0                 call    far ptr sub_1805D
seg001:4EB5                 add     sp, 6
seg001:4EB8                 push    [bp+arg_2]
seg001:4EBB                 mov     ax, [bp+arg_0]
seg001:4EBE                 add     ax, 13h
seg001:4EC1                 push    ax
seg001:4EC2                 call    sub_16A1A
seg001:4EC7                 add     sp, 4
seg001:4ECA                 mov     bx, [bp+arg_4]
seg001:4ECD                 mov     al, [bx+1]
seg001:4ED0                 sub     ah, ah
seg001:4ED2                 mov     cl, 0Ah
seg001:4ED4                 div     cl
seg001:4ED6                 mov     al, ah
seg001:4ED8                 sub     ah, ah
seg001:4EDA                 mov     [bp+var_2], ax
seg001:4EDD                 mov     ax, 5
seg001:4EE0                 push    ax
seg001:4EE1                 mov     ax, 1
seg001:4EE4                 push    ax
seg001:4EE5                 mov     ax, [bp+var_2]
seg001:4EE8                 mov     cx, ax
seg001:4EEA                 shl     ax, 1
seg001:4EEC                 shl     ax, 1
seg001:4EEE                 add     ax, cx
seg001:4EF0                 add     ax, 0B665h
seg001:4EF3                 push    ax
seg001:4EF4                 call    far ptr sub_1805D
seg001:4EF9                 add     sp, 6
seg001:4EFC                 push    [bp+arg_2]
seg001:4EFF                 mov     ax, [bp+arg_0]
seg001:4F02                 add     ax, 19h
seg001:4F05                 push    ax
seg001:4F06                 call    sub_16E27
seg001:4F0B                 add     sp, 4
seg001:4F0E                 push    [bp+arg_2]
seg001:4F11                 mov     ax, [bp+arg_0]
seg001:4F14                 add     ax, 1Ch
seg001:4F17                 push    ax
seg001:4F18                 call    sub_16A1A
seg001:4F1D                 add     sp, 4
seg001:4F20                 mov     bx, [bp+arg_4]
seg001:4F23                 mov     al, [bx+2]
seg001:4F26                 sub     ah, ah
seg001:4F28                 mov     cl, 64h ; 'd'
seg001:4F2A                 div     cl
seg001:4F2C                 mov     al, ah
seg001:4F2E                 sub     ah, ah
seg001:4F30                 mov     cl, 0Ah
seg001:4F32                 div     cl
seg001:4F34                 sub     ah, ah
seg001:4F36                 mov     [bp+var_2], ax
seg001:4F39                 mov     ax, 5
seg001:4F3C                 push    ax
seg001:4F3D                 mov     ax, 1
seg001:4F40                 push    ax
seg001:4F41                 mov     ax, [bp+var_2]
seg001:4F44                 mov     cx, ax
seg001:4F46                 shl     ax, 1
seg001:4F48                 shl     ax, 1
seg001:4F4A                 add     ax, cx
seg001:4F4C                 add     ax, 0B665h
seg001:4F4F                 push    ax
seg001:4F50                 call    far ptr sub_1805D
seg001:4F55                 add     sp, 6
seg001:4F58                 test    [bp+arg_6], 1
seg001:4F5C                 jz      short loc_6CA9
seg001:4F5E                 sub     ax, ax
seg001:4F60                 push    ax
seg001:4F61                 call    far ptr sub_16A93
seg001:4F66                 add     sp, 2
seg001:4F69
seg001:4F69 loc_6CA9:                               ; CODE XREF: sub_6A68+234␘j
seg001:4F69                 test    [bp+arg_6], 2
seg001:4F6D                 jz      short loc_6CBB
seg001:4F6F                 mov     ax, 4
seg001:4F72                 push    ax
seg001:4F73                 call    far ptr sub_16A93
seg001:4F78                 add     sp, 2
seg001:4F7B
seg001:4F7B loc_6CBB:                               ; CODE XREF: sub_6A68+245␘j
seg001:4F7B                 push    [bp+arg_2]
seg001:4F7E                 mov     ax, [bp+arg_0]
seg001:4F81                 add     ax, 26h ; '&'
seg001:4F84                 push    ax
seg001:4F85                 call    sub_16A1A
seg001:4F8A                 add     sp, 4
seg001:4F8D                 mov     bx, [bp+arg_4]
seg001:4F90                 mov     al, [bx+3]
seg001:4F93                 sub     ah, ah
seg001:4F95                 mov     [bp+var_C], ax
seg001:4F98                 cmp     byte_284A4, ah
seg001:4F9C                 jnz     short loc_6CEB
seg001:4F9E                 mov     cl, 3
seg001:4FA0                 shl     ax, cl
seg001:4FA2                 cwd
seg001:4FA3                 mov     cx, 5
seg001:4FA6                 idiv    cx
seg001:4FA8                 mov     [bp+var_C], ax
seg001:4FAB
seg001:4FAB loc_6CEB:                               ; CODE XREF: sub_6A68+274␘j
seg001:4FAB                 mov     ax, [bp+var_C]
seg001:4FAE                 cwd
seg001:4FAF                 mov     cx, 3E8h
seg001:4FB2                 idiv    cx
seg001:4FB4                 mov     ax, dx
seg001:4FB6                 cwd
seg001:4FB7                 mov     cx, 64h ; 'd'
seg001:4FBA                 idiv    cx
seg001:4FBC                 mov     [bp+var_2], ax
seg001:4FBF                 or      ax, ax
seg001:4FC1                 jz      short loc_6D22
seg001:4FC3                 mov     ax, 5
seg001:4FC6                 push    ax
seg001:4FC7                 mov     ax, 1
seg001:4FCA                 push    ax
seg001:4FCB                 mov     ax, [bp+var_2]
seg001:4FCE                 mov     cx, ax
seg001:4FD0                 shl     ax, 1
seg001:4FD2                 shl     ax, 1
seg001:4FD4                 add     ax, cx
seg001:4FD6                 add     ax, 0B665h
seg001:4FD9                 push    ax
seg001:4FDA                 call    far ptr sub_1805D
seg001:4FDF                 add     sp, 6
seg001:4FE2
seg001:4FE2 loc_6D22:                               ; CODE XREF: sub_6A68+299␘j
seg001:4FE2                 push    [bp+arg_2]
seg001:4FE5                 mov     ax, [bp+arg_0]
seg001:4FE8                 add     ax, 2Bh ; '+'
seg001:4FEB                 push    ax
seg001:4FEC                 call    sub_16A1A
seg001:4FF1                 add     sp, 4
seg001:4FF4                 mov     ax, [bp+var_C]
seg001:4FF7                 cwd
seg001:4FF8                 mov     cx, 64h ; 'd'
seg001:4FFB                 idiv    cx
seg001:4FFD                 mov     ax, dx
seg001:4FFF                 cwd
seg001:5000                 mov     cx, 0Ah
seg001:5003                 idiv    cx
seg001:5005                 mov     [bp+var_2], ax
seg001:5008                 mov     ax, 5
seg001:500B                 push    ax
seg001:500C                 mov     ax, 1
seg001:500F                 push    ax
seg001:5010                 mov     ax, [bp+var_2]
seg001:5013                 mov     cx, ax
seg001:5015                 shl     ax, 1
seg001:5017                 shl     ax, 1
seg001:5019                 add     ax, cx
seg001:501B                 add     ax, 0B665h
seg001:501E                 push    ax
seg001:501F                 call    far ptr sub_1805D
seg001:5024                 add     sp, 6
seg001:5027                 push    [bp+arg_2]
seg001:502A                 mov     ax, [bp+arg_0]
seg001:502D                 add     ax, 30h ; '0'
seg001:5030                 push    ax
seg001:5031                 call    sub_16A1A
seg001:5036                 add     sp, 4
seg001:5039                 mov     ax, [bp+var_C]
seg001:503C                 cwd
seg001:503D                 mov     cx, 0Ah
seg001:5040                 idiv    cx
seg001:5042                 mov     [bp+var_2], dx
seg001:5045                 mov     ax, 5
seg001:5048                 push    ax
seg001:5049                 mov     ax, 1
seg001:504C                 push    ax
seg001:504D                 mov     ax, dx
seg001:504F                 mov     cx, ax
seg001:5051                 shl     ax, 1
seg001:5053                 shl     ax, 1
seg001:5055                 add     ax, cx
seg001:5057                 add     ax, 0B665h
seg001:505A                 push    ax
seg001:505B                 call    far ptr sub_1805D
seg001:5060                 add     sp, 6
seg001:5063                 test    [bp+arg_6], 2
seg001:5067                 jz      short loc_6DB4
seg001:5069                 sub     ax, ax
seg001:506B                 push    ax
seg001:506C                 call    far ptr sub_16A93
seg001:5071                 add     sp, 2
seg001:5074
seg001:5074 loc_6DB4:                               ; CODE XREF: sub_6A68+33F␘j
seg001:5074                 test    [bp+arg_6], 4
seg001:5078                 jz      short loc_6DC6
seg001:507A                 mov     ax, 4
seg001:507D                 push    ax
seg001:507E                 call    far ptr sub_16A93
seg001:5083                 add     sp, 2
seg001:5086
seg001:5086 loc_6DC6:                               ; CODE XREF: sub_6A68+350␘j
seg001:5086                 mov     bx, [bp+arg_4]
seg001:5089                 mov     ah, [bx+5]
seg001:508C                 sub     al, al
seg001:508E                 mov     cl, [bx+4]
seg001:5091                 sub     ch, ch
seg001:5093                 add     ax, cx
seg001:5095                 mov     [bp+var_6], ax
seg001:5098                 mov     [bp+var_4], 0
seg001:509D                 mov     ah, [bx+7]
seg001:50A0                 sub     al, al
seg001:50A2                 mov     cl, [bx+6]
seg001:50A5                 add     ax, cx
seg001:50A7                 mov     [bp+var_A], ax
seg001:50AA                 mov     [bp+var_8], 0
seg001:50AF                 mov     dx, ax
seg001:50B1                 sub     ax, ax
seg001:50B3                 add     [bp+var_6], ax
seg001:50B6                 adc     [bp+var_4], dx
seg001:50B9                 mov     ax, [bp+arg_0]
seg001:50BC                 add     ax, 3Ah ; ':'
seg001:50BF                 mov     [bp+var_C], ax
seg001:50C2                 mov     [bp+var_A], 0E100h
seg001:50C7                 mov     [bp+var_8], 5F5h
seg001:50CC
seg001:50CC loc_6E0C:                               ; CODE XREF: sub_6A68+44A␙j
seg001:50CC                 cmp     [bp+var_8], 0
seg001:50D0                 jnz     short loc_6E1B
seg001:50D2                 cmp     [bp+var_A], 0Ah
seg001:50D6                 jnb     short loc_6E1B
seg001:50D8                 jmp     loc_6EB6
seg001:50DB ; ---------------------------------------------------------------------------
seg001:50DB
seg001:50DB loc_6E1B:                               ; CODE XREF: sub_6A68+3A8␘j
seg001:50DB                                         ; sub_6A68+3AE␘j
seg001:50DB                 mov     ax, 0Ah
seg001:50DE                 cwd
seg001:50DF                 push    dx
seg001:50E0                 push    ax
seg001:50E1                 push    [bp+var_8]
seg001:50E4                 push    [bp+var_A]
seg001:50E7                 call    sub_198B8
seg001:50EC                 cmp     dx, [bp+var_4]
seg001:50EF                 jb      short loc_6E44
seg001:50F1                 ja      short loc_6E38
seg001:50F3                 cmp     ax, [bp+var_6]
seg001:50F6                 jb      short loc_6E44
seg001:50F8
seg001:50F8 loc_6E38:                               ; CODE XREF: sub_6A68+3C9␘j
seg001:50F8                 cmp     [bp+var_A], 0Ah
seg001:50FC                 jnz     short loc_6EA3
seg001:50FE                 cmp     [bp+var_8], 0
seg001:5102                 jnz     short loc_6EA3
seg001:5104
seg001:5104 loc_6E44:                               ; CODE XREF: sub_6A68+3C7␘j
seg001:5104                                         ; sub_6A68+3CE␘j
seg001:5104                 push    [bp+arg_2]
seg001:5107                 push    [bp+var_C]
seg001:510A                 call    sub_16A1A
seg001:510F                 add     sp, 4
seg001:5112                 mov     ax, 0Ah
seg001:5115                 cwd
seg001:5116                 push    dx
seg001:5117                 push    ax
seg001:5118                 push    [bp+var_8]
seg001:511B                 push    [bp+var_A]
seg001:511E                 call    sub_198B8
seg001:5123                 push    dx
seg001:5124                 push    ax
seg001:5125                 push    [bp+var_8]
seg001:5128                 push    [bp+var_A]
seg001:512B                 push    [bp+var_4]
seg001:512E                 push    [bp+var_6]
seg001:5131                 call    sub_1991A
seg001:5136                 push    dx
seg001:5137                 push    ax
seg001:5138                 call    sub_198B8
seg001:513D                 mov     [bp+var_2], ax
seg001:5140                 mov     ax, 5
seg001:5143                 push    ax
seg001:5144                 mov     ax, 1
seg001:5147                 push    ax
seg001:5148                 mov     ax, [bp+var_2]
seg001:514B                 mov     cx, ax
seg001:514D                 shl     ax, 1
seg001:514F                 shl     ax, 1
seg001:5151                 add     ax, cx
seg001:5153                 add     ax, 0B665h
seg001:5156                 push    ax
seg001:5157                 call    far ptr sub_1805D
seg001:515C                 add     sp, 6
seg001:515F                 add     [bp+var_C], 5
seg001:5163
seg001:5163 loc_6EA3:                               ; CODE XREF: sub_6A68+3D4␘j
seg001:5163                                         ; sub_6A68+3DA␘j
seg001:5163                 mov     ax, 0Ah
seg001:5166                 cwd
seg001:5167                 push    dx
seg001:5168                 push    ax
seg001:5169                 lea     ax, [bp+var_A]
seg001:516C                 push    ax
seg001:516D                 call    sub_19894
seg001:5172                 jmp     loc_6E0C
seg001:5172 ; ---------------------------------------------------------------------------
seg001:5175                 align 2
seg001:5176
seg001:5176 loc_6EB6:                               ; CODE XREF: sub_6A68+3B0␘j
seg001:5176                 test    [bp+arg_6], 4
seg001:517A                 jz      short loc_6EC7
seg001:517C                 sub     ax, ax
seg001:517E                 push    ax
seg001:517F                 call    far ptr sub_16A93
seg001:5184                 add     sp, 2
seg001:5187
seg001:5187 loc_6EC7:                               ; CODE XREF: sub_6A68+452␘j
seg001:5187                 mov     sp, bp
seg001:5189                 pop     bp
seg001:518A                 retf
seg001:518A sub_6A68        endp
seg001:518A
seg001:518A ; ---------------------------------------------------------------------------
seg001:518B                 align 2
seg001:518C
