                                  .MODEL SMALL
.STACK 100H
.DATA
    MSG1 DB 'Enter First Number: $'
    MSG2 DB 10,13,'Enter Second Number: $'
    MSG3 DB 10,13,'Result is: $'

.CODE
MAIN PROC

    MOV AX, @DATA
    MOV DS, AX

    ; Display First Message
    MOV AH, 9
    LEA DX, MSG1
    INT 21H

    ; Take First Input
    MOV AH, 1
    INT 21H
    SUB AL, 30H
    MOV BL, AL

    ; Display Second Message
    MOV AH, 9
    LEA DX, MSG2
    INT 21H

    ; Take Second Input
    MOV AH, 1
    INT 21H
    SUB AL, 30H
    MOV CL, AL

    ; Process (Addition)
    ADD BL, CL

    ; Display Result Message
    MOV AH, 9
    LEA DX, MSG3
    INT 21H

    ; Convert to ASCII
    ADD BL, 30H
    MOV DL, BL
    MOV AH, 2
    INT 21H

    ; Exit Program
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN