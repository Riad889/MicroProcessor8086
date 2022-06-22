.model small
.stack 100h
.data 

msg1 db "Enter the decimal number : $"
msg2 db "The Binary Number is : $"

.code 
 
 main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h 
    
    
    mov ah,1
    int 21h 
    
    
    sub al,48  
    mov ah,0
    
    mov bx,2
    mov dx,0
    mov cx,0
    
    
    again:
    div bx  ;divisor   ax=dividend
    push dx
    mov ah,0
    inc cx
    cmp ax,0
    jne again
    
    mov ah,9
    lea dx,msg2
    int 21h
    
     display:
    pop dx 
    add dx,48
    mov ah,2
    int 21h 
    
    loop display
      exit:
    mov ah,4ch
    int 21h 
    main endp
 end main
    
    
    