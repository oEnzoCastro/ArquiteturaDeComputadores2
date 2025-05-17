.data
msg1: .asciiz "Digite um numero: "
msg2: .asciiz "Voce digitou: "

.text
.globl _start

_start:
    li a0, 4
    la a1, msg1
    ecall
    li a1, 0

ler_numero:
    l4_:
    addi a0, zero, 0x130
    li t0, 1
    ecall
    nop
    li a0, 0
        li a0,  0x131
        ecall
        beq a0, zero, fiml4_
        beq a0, t0, l4_
        nop
        j l4_

fiml4_:



imprimir:
    li   a0, 11
    li   a1, 13
    ecall