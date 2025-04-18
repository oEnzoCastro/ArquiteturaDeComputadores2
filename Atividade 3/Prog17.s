.text
.globl _start
_start:
    li s0, 25 # temp
    li s1, 0 # x

    li t0, 10
    beq s0, t0, L1
    li t0, 25
    beq s0, t0, L2
    
    j Default
    
    L1:
        li s1, 10
        j end
    L2:
        li s1, 25
        j end

    Default:
        li s1, 0

    end:

    