.model small
.stack 100h
.data 
msg db "Enter the Input : $"
msg2 db "Small Letter $"
msg3 db "Not Small Letter $" 

.code 
 main proc 
    mov ax,@data 
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h 
    mov dl,13
    int 21h
    
    
    mov ah,1
    int 21h 
    mov bl,al
    
    
    cmp bl,61h
    jl Not_Small
    cmp bl,7ah
    jg Not_Small 
    
    mov ah,9 
    lea dx,msg2 
    
     
     
    Not_Small:
    
    mov ah,2
    mov dl,10
    int 21h 
    mov dl,13
    int 21h
   
    mov ah,9
    lea dx,msg3
    int 21h
    
    
    
    
    
    
    exit:
     mov ah,4ch
     int 21h 
     main endp
 end main