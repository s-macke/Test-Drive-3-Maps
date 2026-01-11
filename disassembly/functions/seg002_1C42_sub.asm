seg002:1C42 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:1C42
seg002:1C42 ; Attributes: bp-based frame
seg002:1C42
seg002:1C42 sub_9312        proc far                ; CODE XREF: sub_76D6+166␘p
seg002:1C42                                         ; sub_7FD4+BD␘p
seg002:1C42
seg002:1C42 arg_0           = word ptr  6
seg002:1C42
seg002:1C42                 push    bp
seg002:1C43                 mov     bp, sp
seg002:1C45                 mov     byte_280DC, 80h ; 'Ç'
seg002:1C4A                 mov     ax, 11E9h
seg002:1C4D                 push    ax
seg002:1C4E                 mov     ax, 0AC1h
seg002:1C51                 push    ax
seg002:1C52                 call    sub_195EA
seg002:1C57                 add     sp, 4
seg002:1C5A                 push    word_2BF4E
seg002:1C5E                 push    word_2BF4C
seg002:1C62                 mov     ax, 0ABAh
seg002:1C65                 push    ax
seg002:1C66                 call    sub_E26
seg002:1C6B                 add     sp, 6
seg002:1C6E                 mov     ax, 240Ch
seg002:1C71                 push    ds
seg002:1C72                 push    ax
seg002:1C73                 push    word_2BF4E
seg002:1C77                 push    word_2BF4C
seg002:1C7B                 call    sub_A8EF
seg002:1C80                 add     sp, 8
seg002:1C83                 sub     ax, ax
seg002:1C85                 push    ax
seg002:1C86                 push    [bp+arg_0]
seg002:1C89                 push    ax
seg002:1C8A                 mov     ax, 140h
seg002:1C8D                 push    ax
seg002:1C8E                 push    word_1FC3E
seg002:1C92                 mov     ax, 240Ch
seg002:1C95                 push    ax
seg002:1C96                 call    sub_7696
seg002:1C9B                 add     sp, 0Ch
seg002:1C9E                 mov     ax, 11EFh
seg002:1CA1                 push    ax
seg002:1CA2                 mov     ax, 0AC1h
seg002:1CA5                 push    ax
seg002:1CA6                 call    sub_195EA
seg002:1CAB                 add     sp, 4
seg002:1CAE                 push    word_2BF4E
seg002:1CB2                 push    word_2BF4C
seg002:1CB6                 mov     ax, 0ABAh
seg002:1CB9                 push    ax
seg002:1CBA                 call    sub_E26
seg002:1CBF                 add     sp, 6
seg002:1CC2                 mov     ax, 240Ch
seg002:1CC5                 push    ds
seg002:1CC6                 push    ax
seg002:1CC7                 push    word_2BF4E
seg002:1CCB                 push    word_2BF4C
seg002:1CCF                 call    sub_A8EF
seg002:1CD4                 add     sp, 8
seg002:1CD7                 mov     ax, 1
seg002:1CDA                 push    ax
seg002:1CDB                 mov     ax, [bp+arg_0]
seg002:1CDE                 sub     ax, 2Ch ; ','
seg002:1CE1                 push    ax
seg002:1CE2                 sub     ax, ax
seg002:1CE4                 push    ax
seg002:1CE5                 mov     ax, 140h
seg002:1CE8                 push    ax
seg002:1CE9                 push    word_1FC3C
seg002:1CED                 mov     ax, 240Ch
seg002:1CF0                 push    ax
seg002:1CF1                 call    sub_7696
seg002:1CF6                 add     sp, 0Ch
seg002:1CF9                 cmp     [bp+arg_0], 0C7h ; '¦'
seg002:1CFE                 jnz     short loc_944B
seg002:1D00                 mov     ax, 11F5h
seg002:1D03                 push    ax
seg002:1D04                 mov     ax, 0AC1h
seg002:1D07                 push    ax
seg002:1D08                 call    sub_195EA
seg002:1D0D                 add     sp, 4
seg002:1D10                 push    word_2BF4E
seg002:1D14                 push    word_2BF4C
seg002:1D18                 mov     ax, 0ABAh
seg002:1D1B                 push    ax
seg002:1D1C                 call    sub_E26
seg002:1D21                 add     sp, 6
seg002:1D24                 mov     ax, 240Ch
seg002:1D27                 push    ds
seg002:1D28                 push    ax
seg002:1D29                 push    word_2BF4E
seg002:1D2D                 push    word_2BF4C
seg002:1D31                 call    sub_A8EF
seg002:1D36                 add     sp, 8
seg002:1D39                 sub     ax, ax
seg002:1D3B                 push    ax
seg002:1D3C                 mov     ax, 0Fh
seg002:1D3F                 push    ax
seg002:1D40                 sub     ax, ax
seg002:1D42                 push    ax
seg002:1D43                 mov     ax, 140h
seg002:1D46                 push    ax
seg002:1D47                 push    word_1FC3A
seg002:1D4B                 mov     ax, 240Ch
seg002:1D4E                 push    ax
seg002:1D4F                 call    sub_7696
seg002:1D54                 add     sp, 0Ch
seg002:1D57                 sub     ax, ax
seg002:1D59                 push    ax
seg002:1D5A                 mov     ax, 1
seg002:1D5D                 push    ax
seg002:1D5E                 mov     ax, 0C7h ; '¦'
seg002:1D61                 push    ax
seg002:1D62                 sub     ax, ax
seg002:1D64                 push    ax
seg002:1D65                 mov     ax, 0C7h ; '¦'
seg002:1D68                 push    ax
seg002:1D69                 sub     ax, ax
seg002:1D6B                 push    ax
seg002:1D6C                 mov     ax, 13Fh
seg002:1D6F                 push    ax
seg002:1D70                 sub     ax, ax
seg002:1D72                 push    ax
seg002:1D73                 call    far ptr sub_17BE5
seg002:1D78                 add     sp, 10h
seg002:1D7B
seg002:1D7B loc_944B:                               ; CODE XREF: sub_9312+BC␘j
seg002:1D7B                 mov     ax, 1
seg002:1D7E                 mov     word_1F17A, ax
seg002:1D81                 push    ax
seg002:1D82                 call    far ptr sub_16BB0
seg002:1D87                 add     sp, 2
seg002:1D8A                 mov     ax, 240Ch
seg002:1D8D                 push    ds
seg002:1D8E                 push    ax
seg002:1D8F                 push    word_2D8AE
seg002:1D93                 push    word_2D8AC
seg002:1D97                 call    sub_A8EF
seg002:1D9C                 add     sp, 8
seg002:1D9F                 sub     ax, ax
seg002:1DA1                 push    ax
seg002:1DA2                 mov     ax, 7
seg002:1DA5                 push    ax
seg002:1DA6                 sub     ax, ax
seg002:1DA8                 push    ax
seg002:1DA9                 mov     ax, 98h ; 'ÿ'
seg002:1DAC                 push    ax
seg002:1DAD                 mov     ax, 180h
seg002:1DB0                 push    ax
seg002:1DB1                 mov     ax, 240Ch
seg002:1DB4                 push    ax
seg002:1DB5                 call    sub_7696
seg002:1DBA                 add     sp, 0Ch
seg002:1DBD                 cmp     [bp+arg_0], 0C7h ; '¦'
seg002:1DC2                 jz      short loc_9498
seg002:1DC4                 push    cs
seg002:1DC5                 call    near ptr sub_949A
seg002:1DC8
seg002:1DC8 loc_9498:                               ; CODE XREF: sub_9312+180␘j
seg002:1DC8                 pop     bp
seg002:1DC9                 retf
seg002:1DC9 sub_9312        endp
seg002:1DC9
seg002:1DCA
