ADR_SAUT2:
mov R0, #0
mov R1, #1
mov R2, #2
B ADR_SAUT1

.org 0x40
ADR_SAUT1:
mov R4, #0
mov R5, #1
mov R6, #2
B ADR_SAUT2
