         .data
dato1:  .byte 2
dato2:  .byte 10
dato3:  .byte 50
dato4:  .byte 70
dato5:  .byte 34
res:    .space 1
        .text
    
        lb $t0, dato1($0)
        lb $t1, dato2($0)
        lb $t2, dato3($0)
        lb $t3, dato4($0)
        lb $t4, dato5($0)

        andi $s0, 0
        
        blt $t4, $t0, endif1
        nop
        bgt $t4, $t1, endif1
        nop
        
        slti $s0, $0, 1
endif1:

        blt $t4, $t2, endif2
        nop
        bgt $t4, $t3, endif2
        nop
        
        slti $s0, $0, 1
endif2:

        sb $s0, res($0)