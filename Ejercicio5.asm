        .data
arr:    .byte 23, 12, 0, 5, 0, 7, 9
arrLen: .byte 7
total:  .space 1
        .text

        lb $s0, arrLen($0)

        andi $s1, 0
        andi $s2, 0

loop:
        lb $t0, arr($s1) 
        seq $t1, $t0, 0 
        add $s2, $s2, $t1 
        
        add $s1, $s1, 1 
        
        bne $s1, $s0, loop
        nop
        
        sb $s2, total($0) 