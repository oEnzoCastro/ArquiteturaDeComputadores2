.text
.globl _start
_start:
    
    jal LeNumero
    

    call END

LeNumero:

    li    a0, 0x130
    ecall

    li a0, 0x131
    ecall

    ret

END:
    nop