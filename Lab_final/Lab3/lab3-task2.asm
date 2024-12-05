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

    add al,20h
    
    mov dl, al   ; Move the character to DL
    mov ah, 2
    int 21h
   
    
MAIN ENDP
END MAIN
