.MODEL SMALL
.STACK 100h
.DATA 
msg db "Enter a Hex Digit: $"     
msg2 db "In Decimal it is: $"          

.CODE
MAIN PROC
    
    mov ax, @data            ; Initialize data segment
    mov ds, ax

    ; Prompt user to enter a hex digit
    lea dx, msg                    
    mov ah, 9                      
    int 21h

    ; Read user input
    mov ah, 1                      
    int 21h                        
    mov bl, al 
    
      ; Convert hex digit (A-F) to decimal
    sub bl, 'A'                    ; Subtract ASCII 'A'
    add bl, 10                     ; Add 10 to make A=10, B=11, ..., F=15
                   

    ;  new line
    mov ah, 2                     
    mov dl, 10                     
    int 21h
    mov dl, 13                     
    int 21h

    ; Display result message
    lea dx, msg2                 
    mov ah, 9                      
    int 21h      
  
    mov al, bl   ; Decimal value in AL 
    mov dl, al
    mov ah, 2
    int 21h

MAIN ENDP
END MAIN
