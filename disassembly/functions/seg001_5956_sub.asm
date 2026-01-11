seg001:5956 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:5956
seg001:5956 ; Attributes: bp-based frame
seg001:5956
seg001:5956 sub_7696        proc far                ; CODE XREF: sub_1DAA+A7␘p
seg001:5956                                         ; sub_1DAA+2F1␘p ...
seg001:5956
seg001:5956 arg_0           = word ptr  6
seg001:5956 arg_2           = word ptr  8
seg001:5956 arg_4           = word ptr  0Ah
seg001:5956 arg_6           = word ptr  0Ch
seg001:5956 arg_8           = word ptr  0Eh
seg001:5956 arg_A           = word ptr  10h
seg001:5956
seg001:5956                 push    bp
seg001:5957                 mov     bp, sp
seg001:5959                 cmp     word_2D628, 13h
seg001:595E                 jnz     short loc_76BA
seg001:5960                 push    [bp+arg_8]
seg001:5963                 push    [bp+arg_6]
seg001:5966                 push    [bp+arg_4]
seg001:5969                 push    [bp+arg_2]
seg001:596C                 push    [bp+arg_0]
seg001:596F                 call    sub_CB6D
seg001:5974                 add     sp, 0Ah
seg001:5977                 pop     bp
seg001:5978                 retf
seg001:5978 ; ---------------------------------------------------------------------------
seg001:5979                 align 2
seg001:597A
seg001:597A loc_76BA:                               ; CODE XREF: sub_7696+8␘j
seg001:597A                 push    [bp+arg_A]
seg001:597D                 push    [bp+arg_8]
seg001:5980                 push    [bp+arg_6]
seg001:5983                 push    [bp+arg_4]
seg001:5986                 push    [bp+arg_2]
seg001:5989                 push    [bp+arg_0]
seg001:598C                 call    sub_DAB2
seg001:5991                 add     sp, 0Ch
seg001:5994                 pop     bp
seg001:5995                 retf
seg001:5995 sub_7696        endp
seg001:5995
seg001:5995 seg001          ends
seg001:5995
seg002:0006 ; ---------------------------------------------------------------------------
seg002:0006
seg002:0006 ; Segment type: Pure code
seg002:0006 seg002          segment byte public 'CODE' use16
seg002:0006                 assume cs:seg002
seg002:0006                 ;org 6
seg002:0006                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg002:0006
