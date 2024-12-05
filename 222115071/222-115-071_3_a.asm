

.MODEL SMALL
.STACK 100H

.DATA
prompt db "Enter character: $"

.CODE
MAIN PROC

    mov ax, @data
    mov ds, ax

    lea dx, prompt
    mov ah, 3
    int 21h

    mov ah, 1
    int 21h

    mov dl, al
    mov ah, 1
    int 21h

MAIN ENDP
END MAIN
