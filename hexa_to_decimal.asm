  .model small 
  .stack 100h
  .data 
  
  a db "Input a hex digit : $"
  b db "Decimal Representation : $"
  
  .code 
  main proc
    mov ax,@data ;copy the data into ax register 
    mov ds,ax    ; mov the data into ds register
    
    
    mov ah,9 
    lea dx,a     ; to print a string 
    int 21h 
    
    
    mov ah,1
    int 21h 
    mov bl,al 
    
    sub bl,17d   ;convert the ascii value into the number 
    
    mov ah,2
    mov dl,10
    int 21h 
    mov dl,13 
    int 21h 
    
    mov ah,9
    lea dx,b
    int 21h 
    
    
    
    
    mov dl,49d ;print 1 at the 1st time 
    mov ah,2
    int 21h 
    
    
    mov dl,bl
    mov ah,2
    int 21h 
    
    exit:
    mov ah,4ch
    int 21h 
    main endp
  end main
    
    