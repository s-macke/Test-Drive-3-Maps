seg001:46B8 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg001:46B8
seg001:46B8 ; Attributes: bp-based frame
seg001:46B8
seg001:46B8 sub_63F8        proc far                ; CODE XREF: sub_5DB8+14␘p
seg001:46B8                                         ; sub_663E+26␙p
seg001:46B8
seg001:46B8 arg_0           = word ptr  6
seg001:46B8
seg001:46B8                 push    bp
seg001:46B9                 mov     bp, sp
seg001:46BB                 sub     sp, 2
seg001:46BE                 mov     ax, 1
seg001:46C1                 mov     word_1F17A, ax
seg001:46C4                 push    ax
seg001:46C5                 call    far ptr sub_16BB0
seg001:46CA                 add     sp, 2
seg001:46CD                 sub     ax, ax
seg001:46CF                 push    ax
seg001:46D0                 call    far ptr sub_16A93
seg001:46D5                 add     sp, 2
seg001:46D8                 mov     ax, 0C7h ; '¦'
seg001:46DB                 push    ax
seg001:46DC                 mov     ax, 0BEh ; '+'
seg001:46DF                 push    ax
seg001:46E0                 mov     ax, 13Fh
seg001:46E3                 push    ax
seg001:46E4                 sub     ax, ax
seg001:46E6                 push    ax
seg001:46E7                 call    far ptr sub_172BD
seg001:46EC                 add     sp, 8
seg001:46EF                 mov     ax, 7
seg001:46F2                 push    ax
seg001:46F3                 call    far ptr sub_16A93
seg001:46F8                 add     sp, 2
seg001:46FB                 mov     ax, 0BDh ; '+'
seg001:46FE                 push    ax
seg001:46FF                 mov     ax, 4Bh ; 'K'
seg001:4702                 push    ax
seg001:4703                 mov     ax, 13Fh
seg001:4706                 push    ax
seg001:4707                 sub     ax, ax
seg001:4709                 push    ax
seg001:470A                 call    far ptr sub_172BD
seg001:470F                 add     sp, 8
seg001:4712                 mov     ax, 0Fh
seg001:4715                 push    ax
seg001:4716                 call    far ptr sub_16A93
seg001:471B                 add     sp, 2
seg001:471E                 mov     ax, 0BCh ; '+'
seg001:4721                 push    ax
seg001:4722                 sub     ax, ax
seg001:4724                 push    ax
seg001:4725                 call    sub_16A1A
seg001:472A                 add     sp, 4
seg001:472D                 mov     ax, 4Bh ; 'K'
seg001:4730                 push    ax
seg001:4731                 sub     ax, ax
seg001:4733                 push    ax
seg001:4734                 call    sub_1693E
seg001:4739                 add     sp, 4
seg001:473C                 mov     ax, 4Bh ; 'K'
seg001:473F                 push    ax
seg001:4740                 mov     ax, 13Eh
seg001:4743                 push    ax
seg001:4744                 call    sub_1693E
seg001:4749                 add     sp, 4
seg001:474C                 mov     ax, 4Bh ; 'K'
seg001:474F                 push    ax
seg001:4750                 mov     ax, 13Eh
seg001:4753                 push    ax
seg001:4754                 call    sub_16A1A
seg001:4759                 add     sp, 4
seg001:475C                 mov     ax, 0BCh ; '+'
seg001:475F                 push    ax
seg001:4760                 mov     ax, 13Eh
seg001:4763                 push    ax
seg001:4764                 call    sub_1693E
seg001:4769                 add     sp, 4
seg001:476C                 mov     ax, 0BCh ; '+'
seg001:476F                 push    ax
seg001:4770                 sub     ax, ax
seg001:4772                 push    ax
seg001:4773                 call    sub_1693E
seg001:4778                 add     sp, 4
seg001:477B                 mov     ax, 8
seg001:477E                 push    ax
seg001:477F                 call    far ptr sub_16A93
seg001:4784                 add     sp, 2
seg001:4787                 mov     ax, 0BBh ; '+'
seg001:478A                 push    ax
seg001:478B                 mov     ax, 4Dh ; 'M'
seg001:478E                 push    ax
seg001:478F                 mov     ax, 13Dh
seg001:4792                 push    ax
seg001:4793                 mov     ax, 2
seg001:4796                 push    ax
seg001:4797                 push    cs
seg001:4798                 call    near ptr sub_359E
seg001:479B                 add     sp, 8
seg001:479E                 cmp     byte_284A4, 0
seg001:47A3                 jz      short loc_64EA
seg001:47A5                 mov     ax, 10FCh
seg001:47A8                 jmp     short loc_64ED
seg001:47AA ; ---------------------------------------------------------------------------
seg001:47AA
seg001:47AA loc_64EA:                               ; CODE XREF: sub_63F8+EB␘j
seg001:47AA                 mov     ax, 1107h
seg001:47AD
seg001:47AD loc_64ED:                               ; CODE XREF: sub_63F8+F0␘j
seg001:47AD                 push    ax
seg001:47AE                 mov     ax, 0A8Ch
seg001:47B1                 push    ax
seg001:47B2                 call    sub_195EA
seg001:47B7                 add     sp, 4
seg001:47BA                 push    word_2BF4E
seg001:47BE                 push    word_2BF4C
seg001:47C2                 mov     ax, 0A8Ah
seg001:47C5                 push    ax
seg001:47C6                 call    sub_E26
seg001:47CB                 add     sp, 6
seg001:47CE                 mov     ax, 240Ch
seg001:47D1                 push    ds
seg001:47D2                 push    ax
seg001:47D3                 push    word_2BF4E
seg001:47D7                 push    word_2BF4C
seg001:47DB                 call    sub_A8EF
seg001:47E0                 add     sp, 8
seg001:47E3                 cmp     byte_284A4, 0
seg001:47E8                 jz      short loc_653E
seg001:47EA                 sub     ax, ax
seg001:47EC                 push    ax
seg001:47ED                 mov     ax, 65h ; 'e'
seg001:47F0                 push    ax
seg001:47F1                 mov     ax, 72h ; 'r'
seg001:47F4                 push    ax
seg001:47F5                 mov     ax, 0B8h ; '+'
seg001:47F8                 push    ax
seg001:47F9                 mov     ax, 161h
seg001:47FC                 jmp     short loc_6550
seg001:47FE ; ---------------------------------------------------------------------------
seg001:47FE
seg001:47FE loc_653E:                               ; CODE XREF: sub_63F8+130␘j
seg001:47FE                 sub     ax, ax
seg001:4800                 push    ax
seg001:4801                 mov     ax, 65h ; 'e'
seg001:4804                 push    ax
seg001:4805                 mov     ax, 72h ; 'r'
seg001:4808                 push    ax
seg001:4809                 mov     ax, 0B8h ; '+'
seg001:480C                 push    ax
seg001:480D                 mov     ax, 15Dh
seg001:4810
seg001:4810 loc_6550:                               ; CODE XREF: sub_63F8+144␘j
seg001:4810                 push    ax
seg001:4811                 mov     ax, 240Ch
seg001:4814                 push    ax
seg001:4815                 push    cs
seg001:4816                 call    near ptr sub_7696
seg001:4819                 add     sp, 0Ch
seg001:481C                 mov     ax, 4
seg001:481F                 push    ax
seg001:4820                 call    far ptr sub_16A93
seg001:4825                 add     sp, 2
seg001:4828                 mov     ax, 5Ah ; 'Z'
seg001:482B                 push    ax
seg001:482C                 mov     ax, 13Ch
seg001:482F                 push    ax
seg001:4830                 call    sub_16A1A
seg001:4835                 add     sp, 4
seg001:4838                 mov     ax, 5Ah ; 'Z'
seg001:483B                 push    ax
seg001:483C                 mov     ax, 3
seg001:483F                 push    ax
seg001:4840                 call    sub_1693E
seg001:4845                 add     sp, 4
seg001:4848                 mov     ax, 0BAh ; '¦'
seg001:484B                 push    ax
seg001:484C                 mov     ax, 4Eh ; 'N'
seg001:484F                 push    ax
seg001:4850                 mov     ax, 13Ch
seg001:4853                 push    ax
seg001:4854                 mov     ax, 3
seg001:4857                 push    ax
seg001:4858                 push    cs
seg001:4859                 call    near ptr sub_359E
seg001:485C                 add     sp, 8
seg001:485F                 mov     ax, 4Eh ; 'N'
seg001:4862                 push    ax
seg001:4863                 mov     ax, 0D0h ; '-'
seg001:4866                 push    ax
seg001:4867                 call    sub_16A1A
seg001:486C                 add     sp, 4
seg001:486F                 cmp     [bp+arg_0], 1
seg001:4873                 jnz     short loc_65BE
seg001:4875                 mov     ax, 0BAh ; '¦'
seg001:4878                 push    ax
seg001:4879                 mov     ax, 0D0h ; '-'
seg001:487C                 jmp     short loc_6625
seg001:487E ; ---------------------------------------------------------------------------
seg001:487E
seg001:487E loc_65BE:                               ; CODE XREF: sub_63F8+1BB␘j
seg001:487E                 mov     ax, 0ACh ; '¼'
seg001:4881                 push    ax
seg001:4882                 mov     ax, 0D0h ; '-'
seg001:4885                 push    ax
seg001:4886                 call    sub_1693E
seg001:488B                 add     sp, 4
seg001:488E                 mov     ax, 0ACh ; '¼'
seg001:4891                 push    ax
seg001:4892                 mov     ax, 3
seg001:4895                 push    ax
seg001:4896                 call    sub_16A1A
seg001:489B                 add     sp, 4
seg001:489E                 mov     ax, 0ACh ; '¼'
seg001:48A1                 push    ax
seg001:48A2                 mov     ax, 13Ch
seg001:48A5                 push    ax
seg001:48A6                 call    sub_1693E
seg001:48AB                 add     sp, 4
seg001:48AE                 mov     ax, 5Ah ; 'Z'
seg001:48B1                 push    ax
seg001:48B2                 mov     ax, 0FAh ; '·'
seg001:48B5                 push    ax
seg001:48B6                 call    sub_16A1A
seg001:48BB                 add     sp, 4
seg001:48BE                 mov     ax, 0ACh ; '¼'
seg001:48C1                 push    ax
seg001:48C2                 mov     ax, 0FAh ; '·'
seg001:48C5                 push    ax
seg001:48C6                 call    sub_1693E
seg001:48CB                 add     sp, 4
seg001:48CE                 mov     ax, 5Ah ; 'Z'
seg001:48D1                 push    ax
seg001:48D2                 mov     ax, 10Dh
seg001:48D5                 push    ax
seg001:48D6                 call    sub_16A1A
seg001:48DB                 add     sp, 4
seg001:48DE                 mov     ax, 0ACh ; '¼'
seg001:48E1                 push    ax
seg001:48E2                 mov     ax, 10Dh
seg001:48E5
seg001:48E5 loc_6625:                               ; CODE XREF: sub_63F8+1C4␘j
seg001:48E5                 push    ax
seg001:48E6                 call    sub_1693E
seg001:48EB                 add     sp, 4
seg001:48EE                 sub     ax, ax
seg001:48F0                 push    ax
seg001:48F1                 mov     ax, 0Fh
seg001:48F4                 push    ax
seg001:48F5                 call    sub_C65B
seg001:48FA                 mov     sp, bp
seg001:48FC                 pop     bp
seg001:48FD                 retf
seg001:48FD sub_63F8        endp
seg001:48FD
seg001:48FE
