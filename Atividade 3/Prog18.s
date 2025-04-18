.text
.globl _start
_start:
    li s0, 8 # i
    li s1, 1 # x

    li t0, 8
    W1:
        bne s0, t0, WE1

        addi s1, s0, 0

        addi s0, s0, 1

        j W1

    WE1: 

        nop

        