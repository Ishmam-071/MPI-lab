.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
    
    MOV AX, 1
    ADD AX, 2


    MOV BX, AX 

    MOV AX, 3  
    SUB AX, 2  

    MUL BX 

    MOV CX, 1          
    XOR DX, DX 
    DIV CX     


    ADD AX, 2  
    ADD AX, 3      

    MOV BX, 4 
    MOV CX, 5       
    MUL CX           

    SUB AX, 5


MAIN ENDP
END MAIN
