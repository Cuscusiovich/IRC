        .data
arr:    .byte 15, 23, 5, 17, 11, 41
arrLen: .byte 6
rango1: .byte 10
rango2: .byte 20
total:  .space 1
        .text

        lb $s0, arrLen($0)
        lb $s1, rango1($0)
        lb $s2, rango2($0)

        andi $s3, 0
        andi $s4, 0

loop:
        lb $t0, arr($s3)
        
        blt $t0, $s1, endif
        nop
        bgt $t0, $s2, endif
        nop
        
        add $s4, $s4, 1
endif:
        add $s3, $s3, 1
        
        bne $s3, $s0, loop
        nop
        
        sb $s4, total($0)