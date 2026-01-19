; Entry point summary:
; - Checks DOS version (requires >= 2) and exits early if too old.
; - Initializes stack/memory, shrinks the DOS block, and clears BSS.
; - Runs init/interrupt setup, then calls main (sub_0) and exit handlers.
