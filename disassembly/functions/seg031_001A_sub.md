; Entry point summary:
; - Checks DOS version (int 21h AH=30h) and exits via int 20h if too old.
; - Initializes stack/memory, shrinks the DOS block (int 21h AH=4Ah), and clears BSS.
; - Saves/restores INT 00h vector (int 21h AH=35h/25h) and probes handles via int 21h AH=44h.
; - Runs init/interrupt setup, then calls main (sub_0); fatal init exits via int 21h AH=4Ch.
