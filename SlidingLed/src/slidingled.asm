            ORG 0000H
            SJMP ANA
            ORG 0030H
ANA:        MOV P0, #01H
            ACALL gecikme
            MOV P0, #02H
            ACALL gecikme
            ...
            MOV P0, #80H
            ACALL gecikme
            SJMP ANA
gecikme:    MOV R6, #00H
tekrar:     MOV R7, #00H
            DJNZ R7, $
            MOV R7, #00H
            DJNZ R7, $
            DJNZ R6, tekrar
            RET
            END