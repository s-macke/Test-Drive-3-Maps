seg006:77F7 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:77F7
seg006:77F7 ; Attributes: bp-based frame
seg006:77F7
seg006:77F7 sub_15647       proc near               ; CODE XREF: sub_10E13+1E␘p
seg006:77F7                                         ; sub_15598:loc_155CB␘p ...
seg006:77F7
seg006:77F7 arg_0           = word ptr  4
seg006:77F7 arg_2           = word ptr  6
seg006:77F7
seg006:77F7                 push    bp
seg006:77F8                 mov     bp, sp
seg006:77FA                 mov     cx, [bp+arg_0]
seg006:77FD                 mov     si, [bp+arg_2]
seg006:7800                 mov     bx, 2
seg006:7803
seg006:7803 loc_15653:                              ; CODE XREF: sub_15647+68␙j
seg006:7803                 push    bp
seg006:7804                 mov     bp, cx
seg006:7806                 sub     bp, bx
seg006:7808                 sub     bp, bx
seg006:780A                 mov     dx, [si]
seg006:780C                 add     si, bx
seg006:780E                 jmp     short loc_15672
seg006:7810 ; ---------------------------------------------------------------------------
seg006:7810
seg006:7810 loc_15660:                              ; CODE XREF: sub_15647+2D␙j
seg006:7810                 lodsw
seg006:7811                 xchg    ax, dx
seg006:7812                 cmp     ax, dx
seg006:7814                 jb      short loc_156B3
seg006:7816                 lodsw
seg006:7817                 xchg    ax, dx
seg006:7818                 cmp     ax, dx
seg006:781A                 jb      short loc_156B3
seg006:781C                 lodsw
seg006:781D                 xchg    ax, dx
seg006:781E                 cmp     ax, dx
seg006:7820                 jb      short loc_156B3
seg006:7822
seg006:7822 loc_15672:                              ; CODE XREF: sub_15647+17␘j
seg006:7822                 cmp     si, bp
seg006:7824                 jbe     short loc_15660
seg006:7826                 jmp     short loc_1567E
seg006:7828 ; ---------------------------------------------------------------------------
seg006:7828
seg006:7828 loc_15678:                              ; CODE XREF: sub_15647+39␙j
seg006:7828                 lodsw
seg006:7829                 xchg    ax, dx
seg006:782A                 cmp     ax, dx
seg006:782C                 jb      short loc_156B3
seg006:782E
seg006:782E loc_1567E:                              ; CODE XREF: sub_15647+2F␘j
seg006:782E                 cmp     si, cx
seg006:7830                 jbe     short loc_15678
seg006:7832                 pop     bp
seg006:7833                 pop     bp
seg006:7834                 retn
seg006:7835 ; ---------------------------------------------------------------------------
seg006:7835
seg006:7835 loc_15685:                              ; CODE XREF: sub_15647+52␙j
seg006:7835                 lodsw
seg006:7836                 xchg    ax, dx
seg006:7837                 cmp     ax, dx
seg006:7839                 jb      short loc_156B3
seg006:783B                 lodsw
seg006:783C                 xchg    ax, dx
seg006:783D                 cmp     ax, dx
seg006:783F                 jb      short loc_156B3
seg006:7841                 lodsw
seg006:7842                 xchg    ax, dx
seg006:7843                 cmp     ax, dx
seg006:7845                 jb      short loc_156B3
seg006:7847
seg006:7847 loc_15697:                              ; CODE XREF: sub_15647+9B␙j
seg006:7847                 cmp     si, bp
seg006:7849                 jbe     short loc_15685
seg006:784B                 jmp     short loc_156A3
seg006:784D ; ---------------------------------------------------------------------------
seg006:784D
seg006:784D loc_1569D:                              ; CODE XREF: sub_15647+5E␙j
seg006:784D                 lodsw
seg006:784E                 xchg    ax, dx
seg006:784F                 cmp     ax, dx
seg006:7851                 jb      short loc_156B3
seg006:7853
seg006:7853 loc_156A3:                              ; CODE XREF: sub_15647+54␘j
seg006:7853                 cmp     si, cx
seg006:7855                 jbe     short loc_1569D
seg006:7857                 mov     cx, di
seg006:7859                 pop     bp
seg006:785A                 mov     si, [bp+arg_2]
seg006:785D                 cmp     cx, si
seg006:785F                 ja      short loc_15653
seg006:7861                 pop     bp
seg006:7862                 retn
seg006:7863 ; ---------------------------------------------------------------------------
seg006:7863
seg006:7863 loc_156B3:                              ; CODE XREF: sub_15647+1D␘j
seg006:7863                                         ; sub_15647+23␘j ...
seg006:7863                 sub     si, bx
seg006:7865                 mov     [si], ax
seg006:7867                 sub     si, bx
seg006:7869                 mov     [si], dx
seg006:786B                 mov     di, si
seg006:786D                 xchg    ax, dx
seg006:786E                 add     si, 130h
seg006:7872                 mov     ax, [si]
seg006:7874                 xchg    ax, [bx+si]
seg006:7876                 mov     [si], ax
seg006:7878                 add     si, 130h
seg006:787C                 mov     ax, [si]
seg006:787E                 xchg    ax, [bx+si]
seg006:7880                 mov     [si], ax
seg006:7882                 add     si, 130h
seg006:7886                 mov     ax, [si]
seg006:7888                 xchg    ax, [bx+si]
seg006:788A                 mov     [si], ax
seg006:788C                 mov     si, di
seg006:788E                 add     si, bx
seg006:7890                 add     si, bx
seg006:7892                 jmp     short loc_15697
seg006:7892 sub_15647       endp
seg006:7892
seg006:7894
