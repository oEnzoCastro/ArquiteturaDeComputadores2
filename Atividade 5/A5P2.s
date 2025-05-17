.data
N:          .word 5                 # Número de elementos do vetor
vetor:      .space 20              # Espaço para 5 inteiros (5 * 4 bytes)
texto_saida: .asciiz "Valores lidos:\n"

.text
.globl main

main:
    la a0, vetor                   # Endereço do vetor
    lw a1, N                       # Número de elementos
    jal ra, LeVetor                # Chamada de função LeVetor(v, N)

    # Impressão dos números lidos
    li a7, 4
    la a0, texto_saida
    ecall

    la t0, vetor                   # Endereço do vetor
    lw t1, N                       # Número de elementos
    li t2, 0                       # Índice

imprime_loop:
    beq t2, t1, fim                # Se índice == N, fim
    lw a0, 0(t0)                   # Carrega valor do vetor
    li a7, 1
    ecall                          # Imprime inteiro

    li a0, 10                      # Imprime quebra de linha (newline = 10)
    li a7, 11
    ecall

    addi t0, t0, 4                 # Próxima posição do vetor
    addi t2, t2, 1                 # Incrementa índice
    j imprime_loop

fim:
    li a7, 10                      # Finaliza o programa
    ecall

# -------------------------------------------------
# void LeVetor(int *v, int N)
# a0 = endereço do vetor
# a1 = N
LeVetor:
    mv t0, a0                      # t0 = v
    mv t1, a1                      # t1 = N
    li t2, 0                       # i = 0

loop_LeVetor:
    beq t2, t1, fim_LeVetor        # Se i == N, sai do loop

    jal ra, LeNumero               # Chama LeNumero
    sw a0, 0(t0)                   # Armazena valor no vetor

    addi t0, t0, 4                 # Avança para próxima posição no vetor
    addi t2, t2, 1                 # i++
    j loop_LeVetor

fim_LeVetor:
    ret

# -------------------------------------------------
# int LeNumero()
# Retorna valor lido em a0
LeNumero:
    li a7, 5                       # syscall read_int
    ecall
    ret
