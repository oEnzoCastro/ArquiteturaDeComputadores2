.text
.globl _start
_start:
    addi s1, zero, 1  # x = 1

    lw a0, x1
    lw a1, x2
    lw a2, x3
    lw a3, x4

.data
    x1: .word 15
    x2: .word 25
    x3: .word 13
    x4: .word 17

    