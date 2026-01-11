seg032:05BC ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:05BC
seg032:05BC
seg032:05BC sub_1B75C       proc near               ; CODE XREF: sub_1BD14+10␙p
seg032:05BC                 push    di
seg032:05BD                 push    word ptr dword_2BE38
seg032:05C1                 push    bx
seg032:05C2                 push    ax
seg032:05C3                 xor     ah, ah
seg032:05C5                 mov     al, byte ptr word_2BE36
seg032:05C8                 mov     di, ax
seg032:05CA                 push    dx
seg032:05CB                 mov     dx, cx
seg032:05CD                 xor     cx, cx
seg032:05CF                 call    off_2B602
seg032:05D3                 mov     cx, word ptr dword_2BE38
seg032:05D7                 add     cx, word_2B5F5
seg032:05DB                 mov     word_2BE48, cx
seg032:05DF                 pop     dx
seg032:05E0                 xor     cx, cx
seg032:05E2                 call    off_2B602
seg032:05E6                 mov     cx, word ptr dword_2BE38
seg032:05EA                 mov     word_2BE4A, cx
seg032:05EE                 pop     ax
seg032:05EF                 mov     cx, ax
seg032:05F1                 xor     dx, dx
seg032:05F3                 call    off_2B602
seg032:05F7                 mov     cx, word ptr dword_2BE38
seg032:05FB                 mov     word_2BE4C, cx
seg032:05FF                 mov     cl, byte ptr word_2BE36
seg032:0603                 mov     byte_2BE50, cl
seg032:0607                 pop     bx
seg032:0608                 mov     cx, bx
seg032:060A                 xor     dx, dx
seg032:060C                 call    off_2B602
seg032:0610                 mov     cx, word ptr dword_2BE38
seg032:0614                 mov     word_2BE4E, cx
seg032:0618                 mov     cl, byte ptr word_2BE36
seg032:061C                 mov     byte_2BE51, cl
seg032:0620                 mov     ax, di
seg032:0622                 mov     byte ptr word_2BE36, al
seg032:0625                 pop     word ptr dword_2BE38
seg032:0629                 pop     di
seg032:062A                 retn
seg032:062A sub_1B75C       endp
seg032:062A
seg032:062B ; ---------------------------------------------------------------------------
seg032:062B                 mov     bx, word_2B5FE
seg032:062F                 mov     dx, word_2B600
seg032:0633                 retn
seg032:0634 ; ---------------------------------------------------------------------------
seg032:0634                 push    ax
seg032:0635                 mov     ax, ds
seg032:0637                 add     ah, 10h
seg032:063A                 mov     ds, ax
seg032:063C                 assume ds:nothing
seg032:063C                 pop     ax
seg032:063D                 retn
seg032:063E ; ---------------------------------------------------------------------------
seg032:063E                 push    ax
seg032:063F                 mov     ax, es
seg032:0641                 add     ah, 10h
seg032:0644                 mov     es, ax
seg032:0646                 assume es:nothing
seg032:0646                 pop     ax
seg032:0647                 retn
seg032:0648 ; ---------------------------------------------------------------------------
seg032:0648                 push    ax
seg032:0649                 mov     ax, ds
seg032:064B                 sub     ah, 10h
seg032:064E                 mov     ds, ax
seg032:0650                 assume ds:dseg
seg032:0650                 pop     ax
seg032:0651                 retn
seg032:0652 ; ---------------------------------------------------------------------------
seg032:0652                 out     dx, al
seg032:0653                 xchg    al, ah
seg032:0655                 inc     dx
seg032:0656                 out     dx, al
seg032:0657                 dec     dx
seg032:0658                 retn
seg032:0659 ; ---------------------------------------------------------------------------
seg032:0659                 push    ax
seg032:065A                 push    dx
seg032:065B                 mov     dx, 3C4h
seg032:065E                 mov     al, 2
seg032:0660                 out     dx, al          ; EGA: sequencer address reg
seg032:0660                                         ; map mask: data bits 0-3 enable writes to bit planes 0-3
seg032:0661                 inc     dx
seg032:0662                 mov     al, 0Fh
seg032:0664                 out     dx, al          ; EGA port: sequencer data register
seg032:0665                 mov     dx, 3CEh
seg032:0668                 mov     al, 1
seg032:066A                 out     dx, al          ; EGA: graph 1 and 2 addr reg:
seg032:066A                                         ; enable set/reset
seg032:066B                 inc     dx
seg032:066C                 xor     al, al
seg032:066E                 out     dx, al          ; EGA port: graphics controller data register
seg032:066F                 dec     dx
seg032:0670                 mov     al, 2
seg032:0672                 out     dx, al          ; EGA: graph 1 and 2 addr reg:
seg032:0672                                         ; color compare.
seg032:0672                                         ; Data bits 0-3 select color for read mode 01
seg032:0673                 inc     dx
seg032:0674                 xor     al, al
seg032:0676                 out     dx, al          ; EGA port: graphics controller data register
seg032:0677                 dec     dx
seg032:0678                 mov     ax, 3
seg032:067B                 out     dx, al          ; EGA: graph 1 and 2 addr reg:
seg032:067B                                         ; data rotate and function select for write mode 00. Bits:
seg032:067B                                         ; 0-2: set rotate count for write mode 00
seg032:067B                                         ; 3-4: fn for write modes 00 and 02
seg032:067B                                         ;      00=no change; 01=AND; 10=OR; 11=XOR
seg032:067C                 inc     dx
seg032:067D                 xor     al, al
seg032:067F                 out     dx, al          ; EGA port: graphics controller data register
seg032:0680                 dec     dx
seg032:0681                 mov     al, 8
seg032:0683                 out     dx, al          ; EGA: graph 1 and 2 addr reg:
seg032:0683                                         ; bit mask
seg032:0683                                         ; Bits 0-7 select bits to be masked in all planes
seg032:0684                 inc     dx
seg032:0685                 mov     al, 0FFh
seg032:0687                 out     dx, al          ; EGA port: graphics controller data register
seg032:0688                 dec     dx
seg032:0689                 mov     al, 7
seg032:068B                 out     dx, al          ; EGA: graph 1 and 2 addr reg:
seg032:068B                                         ; color masking disable
seg032:068B                                         ; bits 0-3 disable planes from compare logic in read mode 01
seg032:068C                 inc     dx
seg032:068D                 mov     al, 0Fh
seg032:068F                 out     dx, al          ; EGA port: graphics controller data register
seg032:0690                 dec     dx
seg032:0691                 mov     al, 5
seg032:0693                 out     dx, al          ; EGA: graph 1 and 2 addr reg:
seg032:0693                                         ; mode register.Data bits:
seg032:0693                                         ; 0-1: Write mode 0-2
seg032:0693                                         ; 2: test condition
seg032:0693                                         ; 3: read mode: 1=color compare, 0=direct
seg032:0693                                         ; 4: 1=use odd/even RAM addressing
seg032:0693                                         ; 5: 1=use CGA mid-res map (2-bits/pixel)
seg032:0694                 inc     dx
seg032:0695                 mov     al, byte_2B5DE
seg032:0698                 and     al, 10h
seg032:069A                 out     dx, al          ; EGA port: graphics controller data register
seg032:069B                 pop     dx
seg032:069C                 pop     ax
seg032:069D                 retn
seg032:069E
