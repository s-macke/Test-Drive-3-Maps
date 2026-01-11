seg006:77C7 ; ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦ S U B R O U T I N E ¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦¦
seg006:77C7
seg006:77C7
seg006:77C7 sub_15617       proc near               ; CODE XREF: sub_15598+1E␘p
seg006:77C7                                         ; sub_15598+6D␘p ...
seg006:77C7                 mov     cx, [si]
seg006:77C9                 xchg    cx, [di]
seg006:77CB                 mov     [si], cx
seg006:77CD                 mov     ax, 130h
seg006:77D0                 add     si, ax
seg006:77D2                 add     di, ax
seg006:77D4                 mov     cx, [si]
seg006:77D6                 xchg    cx, [di]
seg006:77D8                 mov     [si], cx
seg006:77DA                 add     si, ax
seg006:77DC                 add     di, ax
seg006:77DE                 mov     cx, [si]
seg006:77E0                 xchg    cx, [di]
seg006:77E2                 mov     [si], cx
seg006:77E4                 add     si, ax
seg006:77E6                 add     di, ax
seg006:77E8                 mov     cx, [si]
seg006:77EA                 xchg    cx, [di]
seg006:77EC                 mov     [si], cx
seg006:77EE                 sub     si, 390h
seg006:77F2                 sub     di, 390h
seg006:77F6                 retn
seg006:77F6 sub_15617       endp
seg006:77F6
seg006:77F7
