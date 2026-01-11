seg002:1A4E ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg002:1A4E
seg002:1A4E
seg002:1A4E sub_911E        proc far                ; CODE XREF: sub_76D6+13E␘p
seg002:1A4E                                         ; sub_9076+92␘p
seg002:1A4E                 cmp     byte_2A6C6, 0
seg002:1A53                 jz      short loc_9128
seg002:1A55                 jmp     loc_91E0
seg002:1A58 ; ---------------------------------------------------------------------------
seg002:1A58
seg002:1A58 loc_9128:                               ; CODE XREF: sub_911E+5␘j
seg002:1A58                 sub     ax, ax
seg002:1A5A                 push    ax
seg002:1A5B                 mov     ax, 1
seg002:1A5E                 push    ax
seg002:1A5F                 mov     ax, 1Fh
seg002:1A62                 push    ax
seg002:1A63                 sub     ax, ax
seg002:1A65                 push    ax
seg002:1A66                 mov     ax, 0Fh
seg002:1A69                 push    ax
seg002:1A6A                 sub     ax, ax
seg002:1A6C                 push    ax
seg002:1A6D                 mov     ax, 0A7h ; 'º'
seg002:1A70                 push    ax
seg002:1A71                 sub     ax, ax
seg002:1A73                 push    ax
seg002:1A74                 call    far ptr sub_17BE5
seg002:1A79                 add     sp, 10h
seg002:1A7C                 sub     ax, ax
seg002:1A7E                 push    ax
seg002:1A7F                 mov     ax, 1
seg002:1A82                 push    ax
seg002:1A83                 mov     ax, 1Fh
seg002:1A86                 push    ax
seg002:1A87                 mov     ax, 100h
seg002:1A8A                 push    ax
seg002:1A8B                 mov     ax, 0Fh
seg002:1A8E                 push    ax
seg002:1A8F                 sub     ax, ax
seg002:1A91                 push    ax
seg002:1A92                 mov     ax, 13Fh
seg002:1A95                 push    ax
seg002:1A96                 mov     ax, 100h
seg002:1A99                 push    ax
seg002:1A9A                 call    far ptr sub_17BE5
seg002:1A9F                 add     sp, 10h
seg002:1AA2                 sub     ax, ax
seg002:1AA4                 push    ax
seg002:1AA5                 mov     ax, 1
seg002:1AA8                 push    ax
seg002:1AA9                 mov     ax, 6Fh ; 'o'
seg002:1AAC                 push    ax
seg002:1AAD                 sub     ax, ax
seg002:1AAF                 push    ax
seg002:1AB0                 mov     ax, 5Fh ; '_'
seg002:1AB3                 push    ax
seg002:1AB4                 mov     ax, 10h
seg002:1AB7                 push    ax
seg002:1AB8                 mov     ax, 13Fh
seg002:1ABB                 push    ax
seg002:1ABC                 sub     ax, ax
seg002:1ABE                 push    ax
seg002:1ABF                 call    far ptr sub_17BE5
seg002:1AC4                 add     sp, 10h
seg002:1AC7                 mov     ax, 1
seg002:1ACA                 push    ax
seg002:1ACB                 push    ax
seg002:1ACC                 mov     ax, 5Fh ; '_'
seg002:1ACF                 push    ax
seg002:1AD0                 sub     ax, ax
seg002:1AD2                 push    ax
seg002:1AD3                 mov     ax, 5Dh ; ']'
seg002:1AD6                 push    ax
seg002:1AD7                 sub     ax, ax
seg002:1AD9                 push    ax
seg002:1ADA                 mov     ax, 13Fh
seg002:1ADD                 push    ax
seg002:1ADE                 sub     ax, ax
seg002:1AE0                 push    ax
seg002:1AE1                 call    far ptr sub_17BE5
seg002:1AE6                 add     sp, 10h
seg002:1AE9                 mov     ax, 1
seg002:1AEC                 push    ax
seg002:1AED                 sub     ax, ax
seg002:1AEF                 push    ax
seg002:1AF0                 mov     ax, 1
seg002:1AF3                 push    ax
seg002:1AF4                 sub     ax, ax
seg002:1AF6                 push    ax
seg002:1AF7                 mov     ax, 6Fh ; 'o'
seg002:1AFA                 push    ax
seg002:1AFB                 mov     ax, 6Eh ; 'n'
seg002:1AFE                 push    ax
seg002:1AFF                 mov     ax, 13Fh
seg002:1B02                 push    ax
seg002:1B03                 sub     ax, ax
seg002:1B05                 push    ax
seg002:1B06                 call    far ptr sub_17BE5
seg002:1B0B                 add     sp, 10h
seg002:1B0E                 retf
seg002:1B0E ; ---------------------------------------------------------------------------
seg002:1B0F                 align 2
seg002:1B10
seg002:1B10 loc_91E0:                               ; CODE XREF: sub_911E+7␘j
seg002:1B10                 sub     ax, ax
seg002:1B12                 push    ax
seg002:1B13                 mov     ax, 1
seg002:1B16                 push    ax
seg002:1B17                 mov     ax, 1Fh
seg002:1B1A                 push    ax
seg002:1B1B                 mov     ax, 28h ; '('
seg002:1B1E                 push    ax
seg002:1B1F                 mov     ax, 0Fh
seg002:1B22                 push    ax
seg002:1B23                 sub     ax, ax
seg002:1B25                 push    ax
seg002:1B26                 mov     ax, 0A8h ; '¿'
seg002:1B29                 push    ax
seg002:1B2A                 mov     ax, 28h ; '('
seg002:1B2D                 push    ax
seg002:1B2E                 call    far ptr sub_17BE5
seg002:1B33                 add     sp, 10h
seg002:1B36                 sub     ax, ax
seg002:1B38                 push    ax
seg002:1B39                 mov     ax, 1
seg002:1B3C                 push    ax
seg002:1B3D                 mov     ax, 1Fh
seg002:1B40                 push    ax
seg002:1B41                 mov     ax, 100h
seg002:1B44                 push    ax
seg002:1B45                 mov     ax, 0Fh
seg002:1B48                 push    ax
seg002:1B49                 sub     ax, ax
seg002:1B4B                 push    ax
seg002:1B4C                 mov     ax, 117h
seg002:1B4F                 push    ax
seg002:1B50                 mov     ax, 100h
seg002:1B53                 push    ax
seg002:1B54                 call    far ptr sub_17BE5
seg002:1B59                 add     sp, 10h
seg002:1B5C                 sub     ax, ax
seg002:1B5E                 push    ax
seg002:1B5F                 mov     ax, 1
seg002:1B62                 push    ax
seg002:1B63                 mov     ax, 4Fh ; 'O'
seg002:1B66                 push    ax
seg002:1B67                 mov     ax, 28h ; '('
seg002:1B6A                 push    ax
seg002:1B6B                 mov     ax, 3Fh ; '?'
seg002:1B6E                 push    ax
seg002:1B6F                 mov     ax, 10h
seg002:1B72                 push    ax
seg002:1B73                 mov     ax, 117h
seg002:1B76                 push    ax
seg002:1B77                 mov     ax, 28h ; '('
seg002:1B7A                 push    ax
seg002:1B7B                 call    far ptr sub_17BE5
seg002:1B80                 add     sp, 10h
seg002:1B83                 mov     ax, 1
seg002:1B86                 push    ax
seg002:1B87                 push    ax
seg002:1B88                 mov     ax, 3Fh ; '?'
seg002:1B8B                 push    ax
seg002:1B8C                 mov     ax, 28h ; '('
seg002:1B8F                 push    ax
seg002:1B90                 mov     ax, 3Dh ; '='
seg002:1B93                 push    ax
seg002:1B94                 sub     ax, ax
seg002:1B96                 push    ax
seg002:1B97                 mov     ax, 117h
seg002:1B9A                 push    ax
seg002:1B9B                 mov     ax, 28h ; '('
seg002:1B9E                 push    ax
seg002:1B9F                 call    far ptr sub_17BE5
seg002:1BA4                 add     sp, 10h
seg002:1BA7                 mov     ax, 1
seg002:1BAA                 push    ax
seg002:1BAB                 sub     ax, ax
seg002:1BAD                 push    ax
seg002:1BAE                 mov     ax, 1
seg002:1BB1                 push    ax
seg002:1BB2                 mov     ax, 28h ; '('
seg002:1BB5                 push    ax
seg002:1BB6                 mov     ax, 4Fh ; 'O'
seg002:1BB9                 push    ax
seg002:1BBA                 mov     ax, 4Eh ; 'N'
seg002:1BBD                 push    ax
seg002:1BBE                 mov     ax, 117h
seg002:1BC1                 push    ax
seg002:1BC2                 mov     ax, 28h ; '('
seg002:1BC5                 push    ax
seg002:1BC6                 call    far ptr sub_17BE5
seg002:1BCB                 add     sp, 10h
seg002:1BCE                 mov     ax, 1
seg002:1BD1                 push    ax
seg002:1BD2                 call    sub_16A5D
seg002:1BD7                 add     sp, 2
seg002:1BDA                 retf
seg002:1BDA sub_911E        endp
seg002:1BDA
seg002:1BDA ; ---------------------------------------------------------------------------
seg002:1BDB                 align 2
seg002:1BDC
