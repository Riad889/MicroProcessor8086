.model small 
.stack 100h
.data 

msg1 db "Enter a charachter : $"
msg2 db "Capital Letter $"
msg3 db "Small Letter $"
msg4 db "Digit $"
msg5 db "Special Character$" 
.code
 main proc 
    Again:
    mov ax,@data
    mov ds,ax
    
    ; this portion is for showing the msg1
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    ; this portion is for taking input 
    
    mov ah,1
    int 21h 
    mov bl,al
    
    
    ; this portion is for checking the small letter
    
    
    cmp bl,61h
    jge Small_Letter
    
    
    ; this portion is for capital letter
    
    cmp bl,41h   ;captial letter starts from 41h in ascii table
    jge Capital_Letter  ;goto level 
    
    ;this portion is for digit check 
    
    cmp bl,30h
    jge Digit_Check
    
    ; this portion is for special character check  
    
    cmp bl,30h
    jl Special_Check 
    
    Special_Check: ;level 
    
    ; this portion is for new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    ;-----------------------------
    
    ;this portion is for printing the message
    
    lea dx,msg5   
    
    mov ah,09
    
    int 21h  
    ;-------------------------------------
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    jmp Again ;jump for one level to another
    
    
    Digit_check:
    
    cmp bl,39h
    jg Special_check
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    lea dx,msg4
    mov ah,9
    
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    jmp Again   
            
    
    Capital_Letter:
    
    cmp bl,5ah
    jg Special_Check
                     
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h                 
                     
    
    lea dx,msg2
    mov ah,9
    
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    jmp Again 
    
    Small_Letter:
    
    cmp bl,7ah
    jg   Special_Check
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
      
      
      lea dx,msg3
    mov ah,9
    
    int 21h 
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    jmp Again 
    
    
    exit:
    
    mov ah,4ch
    int 21h 
    main endp
 end main
    
    
 