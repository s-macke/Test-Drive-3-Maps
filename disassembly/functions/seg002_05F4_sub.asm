seg002:05F4 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:05F4
seg002:05F4 ; Attributes: bp-based frame
seg002:05F4
seg002:05F4 sub_7CC4        proc far                ; CODE XREF: sub_7C5C+5F␘p
seg002:05F4                                         ; seg004:loc_BB7C␙P ...
seg002:05F4
seg002:05F4 var_2           = word ptr -2
seg002:05F4
seg002:05F4                 push    bp
seg002:05F5                 mov     bp, sp
seg002:05F7                 sub     sp, 2
seg002:05FA                 mov     byte_280CC, 1
seg002:05FF                 sub     ax, ax
seg002:0601                 mov     word_1F17A, ax
seg002:0604                 push    ax
seg002:0605                 call    far ptr sub_16BB0
seg002:060A                 add     sp, 2
seg002:060D                 mov     ax, 240Ch
seg002:0610                 push    ds
seg002:0611                 push    ax
seg002:0612                 push    word_2C18A
seg002:0616                 push    word_2C188
seg002:061A                 call    sub_A8EF
seg002:061F                 add     sp, 8
seg002:0622                 call    sub_393A
seg002:0627                 mov     byte_280DC, 0
seg002:062C                 mov     ax, 8
seg002:062F                 push    ax
seg002:0630                 call    far ptr sub_16A93
seg002:0635                 add     sp, 2
seg002:0638                 mov     ax, 0C7h ; '¦'
seg002:063B                 push    ax
seg002:063C                 mov     ax, 70h ; 'p'
seg002:063F                 push    ax
seg002:0640                 mov     ax, 13Fh
seg002:0643                 push    ax
seg002:0644                 sub     ax, ax
seg002:0646                 push    ax
seg002:0647                 call    far ptr sub_172BD
seg002:064C                 add     sp, 8
seg002:064F                 mov     ax, 0Fh
seg002:0652                 push    ax
seg002:0653                 call    far ptr sub_16A93
seg002:0658                 add     sp, 2
seg002:065B                 mov     ax, 0C7h ; '¦'
seg002:065E                 push    ax
seg002:065F                 mov     ax, 70h ; 'p'
seg002:0662                 push    ax
seg002:0663                 mov     ax, 13Fh
seg002:0666                 push    ax
seg002:0667                 sub     ax, ax
seg002:0669                 push    ax
seg002:066A                 call    sub_359E
seg002:066F                 add     sp, 8
seg002:0672                 mov     ax, 7
seg002:0675                 push    ax
seg002:0676                 call    far ptr sub_16A93
seg002:067B                 add     sp, 2
seg002:067E                 mov     ax, 0C6h ; '¦'
seg002:0681                 push    ax
seg002:0682                 mov     ax, 71h ; 'q'
seg002:0685                 push    ax
seg002:0686                 mov     ax, 13Eh
seg002:0689                 push    ax
seg002:068A                 mov     ax, 1
seg002:068D                 push    ax
seg002:068E                 call    sub_359E
seg002:0693                 add     sp, 8
seg002:0696                 sub     ax, ax
seg002:0698                 push    ax
seg002:0699                 call    far ptr sub_16A93
seg002:069E                 add     sp, 2
seg002:06A1                 mov     ax, 0C5h ; '+'
seg002:06A4                 push    ax
seg002:06A5                 mov     ax, 72h ; 'r'
seg002:06A8                 push    ax
seg002:06A9                 mov     ax, 13Dh
seg002:06AC                 push    ax
seg002:06AD                 mov     ax, 2
seg002:06B0                 push    ax
seg002:06B1                 call    sub_359E
seg002:06B6                 add     sp, 8
seg002:06B9                 sub     ax, ax
seg002:06BB                 push    ax
seg002:06BC                 mov     ax, 0C3h ; '+'
seg002:06BF                 push    ax
seg002:06C0                 mov     ax, 38h ; '8'
seg002:06C3                 push    ax
seg002:06C4                 mov     ax, 0F8h ; '°'
seg002:06C7                 push    ax
seg002:06C8                 mov     ax, 573h
seg002:06CB                 push    ax
seg002:06CC                 mov     ax, 240Ch
seg002:06CF                 push    ax
seg002:06D0                 call    sub_7696
seg002:06D5                 add     sp, 0Ch
seg002:06D8                 push    cs
seg002:06D9                 call    near ptr sub_949A
seg002:06DC                 mov     word_2AD1E, 0FFFFh
seg002:06E2                 sub     ax, ax
seg002:06E4                 push    ax
seg002:06E5                 mov     ax, 0Ch
seg002:06E8                 push    ax
seg002:06E9                 call    sub_C65B
seg002:06EE                 add     sp, 4
seg002:06F1                 cmp     byte_2849E, 0
seg002:06F6                 jnz     short loc_7DCF
seg002:06F8                 cmp     byte_2A777, 0
seg002:06FD                 jz      short loc_7E36
seg002:06FF
seg002:06FF loc_7DCF:                               ; CODE XREF: sub_7CC4+102␘j
seg002:06FF                 sub     ax, ax
seg002:0701                 mov     [bp+var_2], ax
seg002:0704                 push    ax
seg002:0705                 mov     ax, 1E05h
seg002:0708                 push    ax
seg002:0709                 call    sub_37BC
seg002:070E                 add     sp, 4
seg002:0711                 mov     [bp+var_2], ax
seg002:0714                 mov     ax, 7
seg002:0717                 push    ax
seg002:0718                 sub     ax, ax
seg002:071A                 push    ax
seg002:071B                 call    sub_C65B
seg002:0720                 add     sp, 4
seg002:0723                 push    [bp+var_2]
seg002:0726                 mov     ax, 1E05h
seg002:0729                 push    ax
seg002:072A                 call    sub_37BC
seg002:072F                 add     sp, 4
seg002:0732                 mov     [bp+var_2], ax
seg002:0735                 cmp     byte_2A777, 0
seg002:073A                 jz      short loc_7E0F
seg002:073C                 jmp     loc_7E90
seg002:073F ; ---------------------------------------------------------------------------
seg002:073F
seg002:073F loc_7E0F:                               ; CODE XREF: sub_7CC4+146␘j
seg002:073F                 mov     ax, 8
seg002:0742                 push    ax
seg002:0743                 call    far ptr sub_16A93
seg002:0748                 add     sp, 2
seg002:074B                 mov     ax, 0C3h ; '+'
seg002:074E                 push    ax
seg002:074F                 mov     ax, 0B4h ; '¦'
seg002:0752                 push    ax
seg002:0753                 mov     ax, 81h ; 'ü'
seg002:0756                 push    ax
seg002:0757                 mov     ax, 38h ; '8'
seg002:075A                 push    ax
seg002:075B                 call    far ptr sub_172BD
seg002:0760                 add     sp, 8
seg002:0763                 jmp     short loc_7E90
seg002:0763 ; ---------------------------------------------------------------------------
seg002:0765                 align 2
seg002:0766
seg002:0766 loc_7E36:                               ; CODE XREF: sub_7CC4+109␘j
seg002:0766                 mov     ax, 8
seg002:0769                 push    ax
seg002:076A                 call    far ptr sub_16A93
seg002:076F                 add     sp, 2
seg002:0772                 mov     ax, 0C3h ; '+'
seg002:0775                 push    ax
seg002:0776                 mov     ax, 0B4h ; '¦'
seg002:0779                 push    ax
seg002:077A                 mov     ax, 12Bh
seg002:077D                 push    ax
seg002:077E                 mov     ax, 82h ; 'é'
seg002:0781                 push    ax
seg002:0782                 call    far ptr sub_172BD
seg002:0787                 add     sp, 8
seg002:078A                 sub     ax, ax
seg002:078C                 mov     [bp+var_2], ax
seg002:078F                 push    ax
seg002:0790                 mov     ax, 1DEBh
seg002:0793                 push    ax
seg002:0794                 call    sub_37BC
seg002:0799                 add     sp, 4
seg002:079C                 mov     [bp+var_2], ax
seg002:079F                 mov     ax, 7
seg002:07A2                 push    ax
seg002:07A3                 sub     ax, ax
seg002:07A5                 push    ax
seg002:07A6                 call    sub_C65B
seg002:07AB                 add     sp, 4
seg002:07AE                 push    [bp+var_2]
seg002:07B1                 mov     ax, 1DEBh
seg002:07B4                 push    ax
seg002:07B5                 call    sub_37BC
seg002:07BA                 add     sp, 4
seg002:07BD                 mov     [bp+var_2], ax
seg002:07C0
seg002:07C0 loc_7E90:                               ; CODE XREF: sub_7CC4+148␘j
seg002:07C0                                         ; sub_7CC4+16F␘j
seg002:07C0                 mov     ax, 8
seg002:07C3                 push    ax
seg002:07C4                 sub     ax, ax
seg002:07C6                 push    ax
seg002:07C7                 call    sub_C65B
seg002:07CC                 add     sp, 4
seg002:07CF                 sub     ax, ax
seg002:07D1                 mov     [bp+var_2], ax
seg002:07D4                 push    ax
seg002:07D5                 mov     ax, 1E30h
seg002:07D8                 push    ax
seg002:07D9                 call    sub_37BC
seg002:07DE                 add     sp, 4
seg002:07E1                 mov     [bp+var_2], ax
seg002:07E4                 mov     ax, 7
seg002:07E7                 push    ax
seg002:07E8                 sub     ax, ax
seg002:07EA                 push    ax
seg002:07EB                 call    sub_C65B
seg002:07F0                 add     sp, 4
seg002:07F3                 push    [bp+var_2]
seg002:07F6                 mov     ax, 1E30h
seg002:07F9                 push    ax
seg002:07FA                 call    sub_37BC
seg002:07FF                 add     sp, 4
seg002:0802                 mov     [bp+var_2], ax
seg002:0805                 call    sub_396E
seg002:080A                 cmp     byte_2849E, 0
seg002:080F                 jz      short loc_7EF4
seg002:0811                 cmp     byte_2A777, 0
seg002:0816                 jnz     short loc_7EF4
seg002:0818                 mov     ax, 17h
seg002:081B                 push    ax
seg002:081C                 call    sub_1688
seg002:0821                 add     sp, 2
seg002:0824
seg002:0824 loc_7EF4:                               ; CODE XREF: sub_7CC4+21B␘j
seg002:0824                                         ; sub_7CC4+222␘j
seg002:0824                 mov     byte_280CC, 0
seg002:0829                 mov     sp, bp
seg002:082B                 pop     bp
seg002:082C                 retf
seg002:082C sub_7CC4        endp
seg002:082C
seg002:082C ; ---------------------------------------------------------------------------
seg002:082D                 align 2
seg002:082E
