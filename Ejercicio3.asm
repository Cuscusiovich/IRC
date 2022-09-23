        .data
arr:    .byte 1, -4, -5, 2
res:    .space 1
        .text
        
        la $s0, arr
        la $s1, res
        
        andi $s2, 0
        andi $s3, 0
    
loop:
        lb $t0, arr($s2)
        slti $t1, $t0, 0  
        add $s3, $s3, $t1
        add $s2, $s2, 1
        bne $s2, 4, loop
        nop

        andi $s7, 0
             
        bne $s3, 4, notEqual
        nop
        add $s7, $s7, 1
        
notEqual: