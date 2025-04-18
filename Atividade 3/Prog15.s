.text
.globl _start
_start:
    li s0, 5 # a
    li s1, 3 # b

    li s2, 0 # x

    li t0, 0
    li t1, 50

    # Se if(a >= 0) == false, pular
    blt s0, t0, L1

        # Se if(b >= 50) == false, pular
        bgt s1, t1, L1

        li s2, 1

    L1: 

    nop

