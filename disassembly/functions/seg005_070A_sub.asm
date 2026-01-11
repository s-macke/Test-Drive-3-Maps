seg005:070A ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:070A
seg005:070A ; Attributes: bp-based frame
seg005:070A
seg005:070A sub_C62A        proc far                ; CODE XREF: sub_3BFC+32D␘P
seg005:070A
seg005:070A arg_0           = word ptr  6
seg005:070A
seg005:070A                 push    bp
seg005:070B                 mov     bp, sp
seg005:070D                 mov     bx, [bp+arg_0]
seg005:0710                 cli
seg005:0711                 in      al, 40h         ; Timer 8253-5 (AT: 8254.2).
seg005:0713                 mov     ah, al
seg005:0715                 in      al, 40h         ; Timer 8253-5 (AT: 8254.2).
seg005:0717                 add     ah, al
seg005:0719                 in      al, 42h         ; Timer 8253-5 (AT: 8254.2).
seg005:071B                 add     ah, al
seg005:071D                 in      al, 42h         ; Timer 8253-5 (AT: 8254.2).
seg005:071F                 sti
seg005:0720                 add     ax, bx
seg005:0722                 pop     bp
seg005:0723                 retf
seg005:0723 sub_C62A        endp
seg005:0723
seg005:0724 ; ---------------------------------------------------------------------------
seg005:0724                 push    bp
seg005:0725                 mov     bp, sp
seg005:0727                 mov     ax, [bp+6]
seg005:072A                 shr     ax, 1
seg005:072C                 shr     ax, 1
seg005:072E                 shr     ax, 1
seg005:0730                 shr     ax, 1
seg005:0732                 mov     dx, [bp+8]
seg005:0735                 add     dx, ax
seg005:0737                 sub     ax, ax
seg005:0739                 pop     bp
seg005:073A                 retf
seg005:073B
