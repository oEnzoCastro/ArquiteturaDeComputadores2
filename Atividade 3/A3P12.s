.text
.globl _start
_start:
    
    # y = 127x - 65z + 1

    la t0, x # Endereço de X
    la t1, z # Endereço de Z

    lw s0, 0(t0) # Valor de X
    lw s1, 0(t1) # Valor de Z

    li t0, 127
    mul t0, t0, s0

    li t1, 65
    mul t1, t1, s1

    sub t0, t0, t1

    addi t0, t0, 1

    la t1, y

    sw t0, 0(t1)

.data
    x: .word 5
    z: .word 7
    y: .word 0  # esse valor deverá ser sobrescrito após a execução do programa

    