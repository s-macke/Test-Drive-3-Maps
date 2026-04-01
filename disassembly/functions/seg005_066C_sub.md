; sub_C58C polls the gameport at 0x201 to measure joystick axis timing.
; Uses tight loops to count down CX/SI until input bits clear, then divides by 8.
; Stores axis counts into word_1F1A2 (CX) and word_1F1AC (SI) when word_1F180 is unchanged.
; Returns button bits in AX (inverted port value masked with 0x30).
