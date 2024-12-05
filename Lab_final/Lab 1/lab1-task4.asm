.Model small
.Stack 100H
.Data

;Autor : Sahil Uddin Ishmam
;Id : 222-115-071

;lab 1 task 4 
; Subtract two numbers using two registers.
.code
Main Proc
    mov ax, 10BH
    mov bx, 20BH
    sub ax,bx
    
    ; when i try to subtract large number to smaller number 
    ; it can able to calculate this. 
    ; but when i try to subtract smaller number by large number 
    ; it cannot able to subtract this properly , it is because 
    ; we are using 16-bit register
    
    