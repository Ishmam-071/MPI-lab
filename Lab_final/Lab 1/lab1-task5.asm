.Model small
.Stack 100H
.Data

;Autor : Sahil Uddin Ishmam
;Id : 222-115-071

.code
Main Proc
    mov ax, 10BH
    mov bx, 20BH
    mov cx, ax  
    add cx, bx   
    mov dx,cx
    
    sub dx,ax
    mov ax,dx 
    
    sub cx,bx
    mov bx, cx 
    
    ; explanation 
    ; ax = 20
    ; bx = 30 
    ; cx = ax + bx  
    ; dx = cx 
    ; dx = dx - ax ; dx has bx's value  
    ; ax = dx  ; then move dx to ax
    ; cx = cx - bx  ; cx has bx's value
    ; bx = cx ; now bx has ax's value
    
    