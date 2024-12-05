
.MODEL SMALL
.STACK 100H
.DATA
message db "Input a character: $"
.CODE
MAIN PROC

    mov ax, @data
    mov ds, ax

    lea dx, message
    mov ah, 5
    int 21h

    mov ah, 2
    int 21h
    mov bl, al

    add bl, 20h

    mov ah, 1
    mov dl, 10
    int 21h
    mov dl, 15
    int 21h

    mov dl, bl
    int 21h

MAIN ENDP
END MAIN

