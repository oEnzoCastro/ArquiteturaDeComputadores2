.text
.globl _start
_start:
    li s0, 0 # i
    la s1, A

    li t0, 10
    FOR1:
        bge s0, t0, ENDFOR1

        lw t1, 0(s1)

        addi t1, t1, 1

        sw t1, 0(s1)

        addi s0, s0, 1
        addi s1, s1, 4

        j FOR1

    ENDFOR1:

.data
    A: .word (1, 2, 3, 4, 5, 6, 7, 8, 9, 10)


