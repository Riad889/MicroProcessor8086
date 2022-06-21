 .model small
 .stack 100h
 .data 
 msg db "Enter an Input : $" 
 msg2 db "Capital Letter $"
 msg3 db "Not Capital $ "
 msg4 db "Digit "
 msg5 db "Special Character $"
 .code 
 main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,9 
    lea dx,msg
    int 21h  
    
    
    mov ah,1
    int 21h  
    mov bl,al
    
    mov ah,2
    mov dl,10
    int 21h 
    mov dl,13
    int 21h
    
    ; this portion is for check capital value  
    
    cmp bl,41h ;compare with ascii table value
    jl Not_Capital    ; jump less also compare working like < operator 
    cmp bl,5ah ; compare with ascii table value 
    jg Not_Capital   ; jump greater it`s also comparing working like > operator 
    
    mov ah,9 
    lea dx,msg2
    int 21h
    
    Not_Capital:
    
    mov ah,9 
    lea dx,msg3
    int 21h
    
      
    exit:
    
    mov ah,4ch,
    int 21h 
    main endp
 end main