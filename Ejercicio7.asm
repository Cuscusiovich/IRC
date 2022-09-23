        .data
texto:  .asciiz "Hice esto muy tarde"
char:   .byte 97
total:  .space 1
        .text

        lb $s0, char($0)

        andi $s1, 0
        andi $s2, 0

loop:
        lb $t0, txt($s1)
        
        seq $t1, $t0, $s0
        add $s2, $s2, $t1       

        add $s1, $s1, 1
        
        bne $t0, 0, loop
        
        sb $s2, repeticiones($0)