.Model small
.Stack 100H
.Data

;Autor : Sahil Uddin Ishmam
;Id : 222-115-071
; task 1 
; Take input in the register AX, and then move it to BX using the MOV
;instruction.

.code
Main Proc
    mov ax, 10BH
    mov bx, ax
    