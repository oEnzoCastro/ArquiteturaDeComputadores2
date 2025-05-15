.text
.globl _start
_start:

    la s0, A
    la s1, B

    li t0, 5 # Tamanho dos arrays
    li t1, 1 # i

    fori:
    bgt t1, t0, endfor # if( i >= 5)


        lw t2, 0(s0) # A
        lw t3, 0(s1) # B

        add s2, t2, t1 # i + A[i-1]
        mul s2, s2, t3
        sw s2, 0(s0)


        addi s0, s0, 4
        addi s1, s1, 4
        addi t1, t1, 1

    j fori
    endfor:

.data   
    A: .word (1, 3, 5, 7, 9)
    B: .word (2, 4, 6, 8, 10)

    