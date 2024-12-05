.MODEL SMALL
.STACK 100H
.DATA


.CODE
MAIN PROC
    
    MOV AX, 10h 
    ADD AX, 5h    

    MOV DI, AX      

    MOV AX, 5Ch    
    SUB AX, 22h   

    MOV BX, AX     

    MOV AX, DI     
    MUL BX         


  
    MOV CX, 22h   
    XOR DX, DX       
    DIV CX         


MAIN ENDP
END MAIN
