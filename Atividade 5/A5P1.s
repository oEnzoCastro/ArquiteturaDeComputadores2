.text
.globl _start
_start:
    
    jal LeNumero
    
    jal ConverteNumero

    li    a0, 1
    ecall

    call END

LeNumero:
    addi  sp, sp, -8
    sw    s0, 4(sp)
    sw    ra, 0(sp)

    mv    s0, a0
    li    a0, 0x130
    ecall           
l4: li    a0, 0x131 
    ecall

    beq   a0, zero, fiml4
    li    t0, 1
    beq   a0, t0, l4
    sb    a1, 0(s0)
    addi  s0, s0, 1
    j     l4

fiml4: 
    sb    zero, 0(s0)
    lw    ra, 0(sp)
    lw    s0, 4(sp)
    addi  sp, sp, 8
    ret


ConverteNumero:
    li    t0, 0
l5: lbu   t1, 0(a0)
    beq   t1, zero, fiml5
    addi  a0, a0, 1
    addi  t1, t1, -48
    li    t2, 10
    mul   t0, t0, t2
    add   t0, t0, t1
    j     l5

fiml5:
    mv    a1, t0
    ret


END:
    nop