seg031:066E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg031:066E
seg031:066E ; Attributes: bp-based frame
seg031:066E
seg031:066E sub_194CE       proc far                ; CODE XREF: sub_84C+5A␘P
seg031:066E                                         ; sub_84C+66␘P ...
seg031:066E
seg031:066E var_8           = word ptr -8
seg031:066E var_4           = word ptr -4
seg031:066E arg_0           = word ptr  6
seg031:066E arg_2           = word ptr  8
seg031:066E
seg031:066E                 push    bp
seg031:066F                 mov     bp, sp
seg031:0671                 sub     sp, 8
seg031:0674                 push    di
seg031:0675                 push    si
seg031:0676                 mov     si, 0C3A2h
seg031:0679                 lea     ax, [bp+arg_2]
seg031:067C                 mov     [bp+var_4], ax
seg031:067F                 push    si
seg031:0680                 call    sub_19D76
seg031:0685                 add     sp, 2
seg031:0688                 mov     di, ax
seg031:068A                 lea     ax, [bp+arg_2]
seg031:068D                 push    ax
seg031:068E                 push    [bp+arg_0]
seg031:0691                 push    si
seg031:0692                 call    sub_19F08
seg031:0697                 add     sp, 6
seg031:069A                 mov     [bp+var_8], ax
seg031:069D                 push    si
seg031:069E                 push    di
seg031:069F                 call    sub_19DFA
seg031:06A4                 add     sp, 4
seg031:06A7                 mov     ax, [bp+var_8]
seg031:06AA                 pop     si
seg031:06AB                 pop     di
seg031:06AC                 mov     sp, bp
seg031:06AE                 pop     bp
seg031:06AF                 retf
seg031:06AF sub_194CE       endp
seg031:06AF
seg031:06B0
