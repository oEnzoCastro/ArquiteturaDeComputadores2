.text
.globl _start
_start:
    
    # Armazena todos dados em temporarios
    lw t0, x1
    lw t1, x2
    lw t2, x3
    lw t3, x4

    # Soma dados e guarda em s0

    add t0, t0, t1 # t0 = x1 + x2
    add t1, t2, t3 # t1 = x3 + x4

    add s0, t0, t1 # s0 = (x1 + x2) + (x3 + x4)

    # Carrega o endereço se soma
    
    la t0, soma

    # Salva o valor de t0 no endereço de memoria guardado em t0

    sw s0, 0(t0)

.data
    x1: .word 15
    x2: .word 25
    x3: .word 13
    x4: .word 17
    soma: .word -1

    