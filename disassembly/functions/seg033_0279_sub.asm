seg033:0279 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg033:0279
seg033:0279
seg033:0279 sub_1E209       proc near               ; CODE XREF: sub_1E158+1B␘p
seg033:0279                                         ; sub_1EF8A+3␙p
seg033:0279                 push    cx
seg033:027A                 push    es
seg033:027B                 push    ds
seg033:027C                 push    di
seg033:027D                 push    si
seg033:027E                 cld
seg033:027F                 mov     ax, seg dseg
seg033:0282                 mov     ds, ax
seg033:0284                 mov     es, ax
seg033:0286                 assume es:dseg
seg033:0286                 sub     ax, ax
seg033:0288                 mov     cx, 162h
seg033:028B                 mov     di, 0C63Eh
seg033:028E                 rep stosb
seg033:0290                 mov     cx, 0A0h ; 'á'
seg033:0293                 mov     si, 0C7A0h
seg033:0296                 mov     di, 0C6BEh
seg033:0299                 rep movsb
seg033:029B                 pop     si
seg033:029C                 pop     di
seg033:029D                 pop     ds
seg033:029E                 pop     es
seg033:029F                 assume es:nothing
seg033:029F                 pop     cx
seg033:02A0                 retn
seg033:02A0 sub_1E209       endp
seg033:02A0
seg033:02A1
