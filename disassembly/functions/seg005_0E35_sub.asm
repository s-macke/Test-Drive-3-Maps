seg005:0E35 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:0E35
seg005:0E35
seg005:0E35 sub_CD55        proc far                ; CODE XREF: sub_0+5E␘P
seg005:0E35                 push    es
seg005:0E36                 push    ds
seg005:0E37                 push    si
seg005:0E38                 xor     ax, ax
seg005:0E3A                 mov     es, ax
seg005:0E3C                 assume es:seg000
seg005:0E3C                 mov     bl, byte ptr es:loc_417
seg005:0E41                 and     bl, 0F3h
seg005:0E44                 mov     byte ptr es:loc_417, bl
seg005:0E49                 mov     byte_28144, al
seg005:0E4C                 mov     byte_28145, al
seg005:0E4F                 mov     byte_28146, al
seg005:0E52                 mov     byte_28147, al
seg005:0E55                 mov     byte_28148, al
seg005:0E58                 mov     ax, 3509h
seg005:0E5B                 int     21h             ; DOS - 2+ - GET INTERRUPT VECTOR
seg005:0E5B                                         ; AL = interrupt number
seg005:0E5B                                         ; Return: ES:BX = value of interrupt vector
seg005:0E5D                 mov     word ptr dword_28140, bx
seg005:0E61                 mov     word ptr dword_28140+2, es
seg005:0E65                 cli
seg005:0E66                 push    ds
seg005:0E67                 mov     ax, cs
seg005:0E69                 mov     ds, ax
seg005:0E6B                 assume ds:seg005
seg005:0E6B                 in      al, 61h         ; PC/XT PPI port B bits:
seg005:0E6B                                         ; 0: Tmr 2 gate ---␐ OR 03H=spkr ON
seg005:0E6B                                         ; 1: Tmr 2 data -+  AND 0fcH=spkr OFF
seg005:0E6B                                         ; 3: 1=read high switches
seg005:0E6B                                         ; 4: 0=enable RAM parity checking
seg005:0E6B                                         ; 5: 0=enable I/O channel check
seg005:0E6B                                         ; 6: 0=hold keyboard clock low
seg005:0E6B                                         ; 7: 0=enable kbrd
seg005:0E6D                 and     al, 7Fh
seg005:0E6F                 out     61h, al         ; PC/XT PPI port B bits:
seg005:0E6F                                         ; 0: Tmr 2 gate ---␐ OR 03H=spkr ON
seg005:0E6F                                         ; 1: Tmr 2 data -+  AND 0fcH=spkr OFF
seg005:0E6F                                         ; 3: 1=read high switches
seg005:0E6F                                         ; 4: 0=enable RAM parity checking
seg005:0E6F                                         ; 5: 0=enable I/O channel check
seg005:0E6F                                         ; 6: 0=hold keyboard clock low
seg005:0E6F                                         ; 7: 0=enable kbrd
seg005:0E71                 mov     dx, 0EA0h
seg005:0E74                 mov     ax, 2509h
seg005:0E77                 int     21h             ; DOS - SET INTERRUPT VECTOR
seg005:0E77                                         ; AL = interrupt number
seg005:0E77                                         ; DS:DX = new vector to be used for specified interrupt
seg005:0E79                 pop     ds
seg005:0E7A                 assume ds:dseg
seg005:0E7A                 sti
seg005:0E7B                 mov     word ptr unk_1F17D, 1
seg005:0E81                 pop     si
seg005:0E82                 pop     ds
seg005:0E83                 pop     es
seg005:0E84                 assume es:nothing
seg005:0E84                 retf
seg005:0E84 sub_CD55        endp
seg005:0E84
seg005:0E85
