.text
.globl _start
_start:
    li s0, 0 # i
    la s1, A

    li t0, 10
    li t1, 2
    FOR1:
        bge s0, t0, ENDFOR1

        lw s2, 0(s1)

        rem t2, s2, t1


        beqz t2, IF1

            mul s2, s2, t1
        j ENDIF1

        IF1:
            add s2, s2, s2
            addi s2, s2, 1
        ENDIF1:

        sw s2, 0(s1)

        addi s0, s0, 1
        addi s1, s1, 4

        j FOR1

    ENDFOR1:

.data
    A: .word (1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

