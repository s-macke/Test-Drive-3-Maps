seg031:18F0 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:18F0
seg031:18F0 ; Attributes: bp-based frame
seg031:18F0
seg031:18F0 sub_1A750       proc far                ; CODE XREF: sub_19F08+BB␘p
seg031:18F0                                         ; sub_19F08+E6␘p
seg031:18F0
seg031:18F0 var_2           = word ptr -2
seg031:18F0 arg_0           = word ptr  6
seg031:18F0 arg_2           = word ptr  8
seg031:18F0
seg031:18F0                 push    bp
seg031:18F1                 mov     bp, sp
seg031:18F3                 sub     sp, 4
seg031:18F6                 push    di
seg031:18F7                 push    si
seg031:18F8                 mov     si, [bp+arg_2]
seg031:18FB                 mov     [bp+var_2], 1
seg031:1900                 cmp     byte ptr [si], 2Ah ; '*'
seg031:1903                 jnz     short loc_1A774
seg031:1905                 mov     bx, word_2BD46
seg031:1909                 mov     di, [bx]
seg031:190B                 add     word_2BD46, 2
seg031:1910                 inc     si
seg031:1911                 jmp     short loc_1A7BB
seg031:1911 ; ---------------------------------------------------------------------------
seg031:1913                 align 2
seg031:1914
seg031:1914 loc_1A774:                              ; CODE XREF: sub_1A750+13␘j
seg031:1914                 cmp     byte ptr [si], 2Dh ; '-'
seg031:1917                 jnz     short loc_1A77F
seg031:1919                 mov     [bp+var_2], 0FFFFh
seg031:191E                 inc     si
seg031:191F
seg031:191F loc_1A77F:                              ; CODE XREF: sub_1A750+27␘j
seg031:191F                 sub     di, di
seg031:1921                 cmp     byte ptr [si], 30h ; '0'
seg031:1924                 jl      short loc_1A7BB
seg031:1926                 cmp     byte ptr [si], 39h ; '9'
seg031:1929                 jg      short loc_1A7BB
seg031:192B                 cmp     word_2BD4A, di
seg031:192F                 jnz     short loc_1A79C
seg031:1931                 cmp     byte ptr [si], 30h ; '0'
seg031:1934                 jnz     short loc_1A79C
seg031:1936                 mov     word_2BD5C, 30h ; '0'
seg031:193C
seg031:193C loc_1A79C:                              ; CODE XREF: sub_1A750+3F␘j
seg031:193C                                         ; sub_1A750+44␘j ...
seg031:193C                 mov     al, [si]
seg031:193E                 cbw
seg031:193F                 mov     cx, di
seg031:1941                 shl     cx, 1
seg031:1943                 shl     cx, 1
seg031:1945                 add     cx, di
seg031:1947                 shl     cx, 1
seg031:1949                 add     cx, ax
seg031:194B                 sub     cx, 30h ; '0'
seg031:194E                 mov     di, cx
seg031:1950                 inc     si
seg031:1951                 cmp     byte ptr [si], 30h ; '0'
seg031:1954                 jl      short loc_1A7BB
seg031:1956                 cmp     byte ptr [si], 39h ; '9'
seg031:1959                 jle     short loc_1A79C
seg031:195B
seg031:195B loc_1A7BB:                              ; CODE XREF: sub_1A750+21␘j
seg031:195B                                         ; sub_1A750+34␘j ...
seg031:195B                 mov     ax, [bp+var_2]
seg031:195E                 imul    di
seg031:1960                 mov     di, ax
seg031:1962                 mov     bx, [bp+arg_0]
seg031:1965                 mov     [bx], di
seg031:1967                 mov     ax, si
seg031:1969                 pop     si
seg031:196A                 pop     di
seg031:196B                 mov     sp, bp
seg031:196D                 pop     bp
seg031:196E                 retf
seg031:196E sub_1A750       endp
seg031:196E
seg031:196E ; ---------------------------------------------------------------------------
seg031:196F                 align 2
seg031:1970
