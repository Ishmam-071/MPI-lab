.MODEL SMALL
.STACK 100H
.DATA
msg db "Enter a character: $"
.CODE
MAIN PROC
    
    mov ax, @data
    mov ds, ax

    
    lea dx,msg
    mov ah, 9
    int 21h

    
    mov ah, 1
    int 21h
    mov bl,al

    add bl,20h   ;lower to upper case
   
    
   ;newline
   mov ah, 2
   mov dl, 10
   int 21h
   mov dl, 13
   int 21h 
   
   mov dl,bl
   int 21h
   
    
MAIN ENDP
END MAIN
