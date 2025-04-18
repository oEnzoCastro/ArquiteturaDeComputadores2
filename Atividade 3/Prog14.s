.text
.globl _start
_start:
    li s0, 5 # x
    li s1, 3 # y

    bgt s0, s1, if # if(s1 > s1)
    
    # else
    add s2, s2, s1
    
    j end # pula if

    if:
        add s2, s2, s0

end:
    nop

    