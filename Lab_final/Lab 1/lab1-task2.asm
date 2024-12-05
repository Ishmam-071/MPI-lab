.Model small
.Stack 100H
.Data

;Autor : Sahil Uddin Ishmam
;Id : 222-115-071

; task 2 
; Swap two numbers, using a maximum of 3 registers.

.code
Main Proc
    mov ax, 10BH
    mov bx, 20BH
    mov cx,ax
    mov ax,bx
    mov bx,cx