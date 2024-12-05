.MODEL SMALL
.STACK 100H
.DATA 

n db "First value: $"  
j db "Second value: $"
a db "Sum of $"  
b db " and $"  
c db " is $"  

.CODE
MAIN PROC

mov ax, @data
mov ds, ax
        
; 1st number input from user
lea dx, n
mov ah, 9
int 21h       ; Display "First value: "
mov ah, 1
int 21h       ; Read first digit
sub al, 30h   ; Convert ASCII to numeric
mov bh, al    ; Store first number in BH

 ;newline
   mov ah, 2
   mov dl, 10
   int 21h
   mov dl, 13
   int 21h

; 2nd number input from user
lea dx, j
mov ah, 9
int 21h       ; Display "Second value: "
mov ah, 1
int 21h       ; Read second digit
sub al, 30h   ; Convert ASCII to numeric
mov bl, al    ; Store second number in BL

 ;newline
   mov ah, 2
   mov dl, 10
   int 21h
   mov dl, 13
   int 21h

; Display "Sum of"
lea dx, a
mov ah, 9
int 21h

; Display first number
mov al, bh    ; Move first number to AL
add al, 30h   ; Convert numeric to ASCII
mov dl, al
mov ah, 2
int 21h

; Display " and "
lea dx, b
mov ah, 9
int 21h

; Display second number
mov al, bl    ; Move second number to AL
add al, 30h   ; Convert numeric to ASCII
mov dl, al
mov ah, 2
int 21h

; Display " is "
lea dx, c
mov ah, 9
int 21h

; Compute and display the sum
mov al, bh    ; Load first number
add al, bl    ; Add second number
add al, 30h   ; Convert sum to ASCII
mov dl, al    ; Move sum to DL
mov ah, 2
int 21h

 ;newline
   mov ah, 2
   mov dl, 10
   int 21h
   mov dl, 13
   int 21h

MAIN ENDP
END MAIN
