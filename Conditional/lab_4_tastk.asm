.model  small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax
    
    ; printing a
    lea dx, a
    mov ah, 9 
    int 21h
    
    
    
    ; taking input  
                
              
    mov ah, 1
    int 21h 
    
    ; move input to b1
    mov bl, al
    
    ;printing b 
    
    lea dx,b 
    mov ah,9
    int 21h 
    
    ; taking input
    mov ah, 1
    int 21h
    ;move input to bh
    mov bh, al
    
    ;compare two inputs
    cmp bl, bh
    
    JG bl_greater
    
    
    bl_greater:
    mov ah, 2
    mov dl, bl 
    int 21h
    
    
    ;printing c
    lea dx, c
    mov ah, 9
    int 21h
    
    jmp end ; its a level 
    
    ;if bh greater
    mov dx, c
    mov dl,bh
    int 21h
    
    ; printing c
    lea dx, c 
    mov ah, 9
    int 21h    
    
    end:
    
     
    
    
    
main endp
end main 