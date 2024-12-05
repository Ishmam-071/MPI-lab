.model small
.stack 100h
.data 
msg db "Enter Three Initials: $$$" 
a db "$"
b db "$"
c db "$"
.code
main proc
    
  mov ax,@data
  mov ds,ax
  
  ;Enter Three Initials  
    
  lea dx,msg
  mov ah,9
  int 21h
   
   ;first
  mov ah,1
  int 21h
  mov bl,al
    
    ;second
  mov ah,1
  int 21h
  mov bh,al
    
    ;third
  mov ah,1
  int 21h
  mov cl,al
  
  ;new line 
  
  mov ah,2
  mov dl,10
  int 21h
  mov dl,13
  int 21h
  
    ;first output
   mov ah,2
   mov dl,bl
   int 21h 
   
   ;new line
   
   mov ah,2
   mov dl,10
   int 21h
   mov dl,13
   int 21h
   
   ;second output
   mov ah,2
   mov dl,bh
   int 21h
   
   ;new line
   mov ah,2
   mov dl,10
   int 21h
   mov dl,13
   int 21h
   
   ;third output
   mov ah,2
   mov dl,cl
   int 21h
   
   
           
main endp
end main