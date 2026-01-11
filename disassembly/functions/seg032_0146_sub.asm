seg032:0146 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg032:0146
seg032:0146
seg032:0146 sub_1B2E6       proc near               ; CODE XREF: seg032:004B␘p
seg032:0146                 mov     bh, byte ptr word_2B633
seg032:014A                 mov     bl, byte_2BD69
seg032:014E                 mov     cx, 1
seg032:0151                 push    bp
seg032:0152                 push    si
seg032:0153                 push    di
seg032:0154                 mov     ah, 9
seg032:0156                 int     10h             ; - VIDEO - WRITE ATTRIBUTES/CHARACTERS AT CURSOR POSITION
seg032:0156                                         ; AL = character, BH = display page
seg032:0156                                         ; BL = attributes of character (alpha modes) or color (graphics modes)
seg032:0156                                         ; CX = number of times to write character
seg032:0158                 pop     di
seg032:0159                 pop     si
seg032:015A                 pop     bp
seg032:015B                 retn
seg032:015B sub_1B2E6       endp
seg032:015B
seg032:015C
