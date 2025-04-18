.text
.globl _start
_start:
    li s2, 10
    li t0, 0
    la s1, num

FOR1:
    bge t0, s2, END
    mv t2, t0
    addi t3, t0, 1

FOR2:
    bge t3, s2, SORT_I

    la s3, num
    slli t4, t2, 2
    add s3, s3, t4
    lw t4, 0(s3)

    la s3, num
    slli t5, t3, 2
    add s3, s3, t5
    lw t5, 0(s3)

    bge t4, t5, UPDATE_MIN
    j CONTINUE

UPDATE_MIN:
    mv t2, t3

CONTINUE:
    addi t3, t3, 1
    j FOR2

SORT_I:
    la s3, num
    slli t4, t2, 2
    add s3, s3, t4
    lw s4, 0(s3)

    la s3, num
    slli t5, t0, 2
    add s3, s3, t5
    lw s5, 0(s3)

    beq t2, t0, SKIP_SWAP

    la s3, num
    slli t6, t2, 2
    add s3, s3, t6
    sw s5, 0(s3)

    la s3, num
    slli t6, t0, 2
    add s3, s3, t6
    sw s4, 0(s3)

SKIP_SWAP:
    addi t0, t0, 1
    j FOR1

END:
    nop

.data
num: .word 5, 1, 7, 9, 6, 3, 2, 8, 10, 4

