seg010:000A ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg010:000A
seg010:000A ; Attributes: bp-based frame
seg010:000A
seg010:000A sub_16A1A       proc far                ; CODE XREF: sub_1DAA+102␘P
seg010:000A                                         ; sub_1DAA+1A1␘P ...
seg010:000A
seg010:000A arg_0           = word ptr  6
seg010:000A arg_2           = word ptr  8
seg010:000A
seg010:000A                 push    bp
seg010:000B                 mov     bp, sp
seg010:000D                 mov     ax, [bp+arg_0]
seg010:0010                 mov     word_2AD35, ax
seg010:0013                 mov     ax, [bp+arg_2]
seg010:0016                 mov     word_2AD37, ax
seg010:0019                 xor     ax, ax
seg010:001B                 pop     bp
seg010:001C                 retf
seg010:001C sub_16A1A       endp
seg010:001C
seg010:001C seg010          ends
seg010:001C
seg011:000D ; ---------------------------------------------------------------------------
seg011:000D
seg011:000D ; Segment type: Pure code
seg011:000D seg011          segment byte public 'CODE' use16
seg011:000D                 assume cs:seg011
seg011:000D                 ;org 0Dh
seg011:000D                 assume es:nothing, ss:nothing, ds:dseg, fs:nothing, gs:nothing
seg011:000D
