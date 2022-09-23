        .data
arr:    .byte 2, -4, -6
res:    .space 3
        .text
        
        la $s0, arr
        la $s1, res
        
        andi $s2, 0
    
loop:
        lb $t0, arr($s2) 
        sge $t1, $t0, 0 
        sb $t1, res($s2) 
        
        add $s2, $s2, 1 
        
        bne $s2, 3, loop
        nop