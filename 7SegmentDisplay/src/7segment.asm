            ORG 0000H
            SJMP ANA
            ORG 0030H
ANA:        MOV P2, #0F6H            /*9 karakteri*/
            MOV P3, #080H            /*Soldan 1. Display*/
            ACALL gecikme
            MOV P2, #0FEH            /*8 karakteri*/
            MOV P3, #020H            /*Soldan 3. Display, soldan 2. bozuk*/
            ACALL gecikme
            MOV P2, #0E0H            /*7 karakteri*/
            MOV P3, #010H            /*Soldan 4. Display */
            ACALL gecikme
            MOV P2, #0BEH            /*6 karakteri*/
            MOV P3, #080H            /*Soldan 1. Display */
            ACALL gecikme
            MOV P2, #0B6H            /*5 karakteri*/
            MOV P3, #020H            /*Soldan 3. Display, soldan 2. bozuk */
            ACALL gecikme
            MOV P2, #066H            /*4 karakteri*/
            MOV P3, #010H            /*Soldan 4. Display */
            ACALL gecikme
            MOV P2, #0F2H            /*3 karakteri*/
            MOV P3, #080H            /*Soldan 1. Display */
            ACALL gecikme
            MOV P2, #0DAH            /*2 karakteri*/
            MOV P3, #020H            /*Soldan 3. Display, soldan 2. bozuk */
            ACALL gecikme
            MOV P2, #060H            /*1 karakteri*/
            MOV P3, #010H            /*Soldan 4. Display */
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