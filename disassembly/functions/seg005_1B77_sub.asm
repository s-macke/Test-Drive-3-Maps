seg005:1B77 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg005:1B77
seg005:1B77
seg005:1B77 sub_DA97        proc near               ; CODE XREF: sub_D858+2C␘p
seg005:1B77                                         ; sub_DAB2+D␙p
seg005:1B77                 mov     ax, 0F02h
seg005:1B7A                 mov     dx, 3C4h
seg005:1B7D                 out     dx, ax          ; EGA: sequencer address reg
seg005:1B7D                                         ; unknown register
seg005:1B7E                 mov     ax, 5
seg005:1B81                 mov     dx, 3CEh
seg005:1B84                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1B84                                         ; mode register.Data bits:
seg005:1B84                                         ; 0-1: Write mode 0-2
seg005:1B84                                         ; 2: test condition
seg005:1B84                                         ; 3: read mode: 1=color compare, 0=direct
seg005:1B84                                         ; 4: 1=use odd/even RAM addressing
seg005:1B84                                         ; 5: 1=use CGA mid-res map (2-bits/pixel)
seg005:1B85                 nop
seg005:1B86                 nop
seg005:1B87                 mov     ax, 8
seg005:1B8A                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1B8A                                         ; bit mask
seg005:1B8A                                         ; Bits 0-7 select bits to be masked in all planes
seg005:1B8B                 nop
seg005:1B8C                 nop
seg005:1B8D                 mov     ax, 3
seg005:1B90                 out     dx, ax          ; EGA: graph 1 and 2 addr reg:
seg005:1B90                                         ; data rotate and function select for write mode 00. Bits:
seg005:1B90                                         ; 0-2: set rotate count for write mode 00
seg005:1B90                                         ; 3-4: fn for write modes 00 and 02
seg005:1B90                                         ;      00=no change; 01=AND; 10=OR; 11=XOR
seg005:1B91                 retn
seg005:1B91 sub_DA97        endp
seg005:1B91
seg005:1B92
