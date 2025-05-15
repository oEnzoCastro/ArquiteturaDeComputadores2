.text
.globl _start
_start:
    li s0, 2 # opcao

    li t0, 1
    beq s0, t0, L1
    li t0, 2
    beq s0, t0, L2
    
    j Default
    
    L1:
        addi s0, s0, 1
        j end
    L2:
        addi s0, s0, 2
        j end

    Default:
        li s0, 0

    end:

    //

    #include <stdio.h>

int main() {
    int opcao = 2;

    switch (opcao) {
        case 1:
            opcao = opcao + 1;
            break;
        case 2:
            opcao = opcao + 1;
            break;
        default:
            opcao = 0;
            break;
    }

    return 0;
}

