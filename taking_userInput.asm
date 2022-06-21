.model small 
.stack 100h
.data 
msg db ?;this ? sign is for unknown variable value       ;define by 
.code 
main proc 
    
    mov ax,@data
    mov ds,ax
    
    mov ah,1 ; this ah,1 function used for taking input
    int 21h
    mov msg,al ; by default all data save in al register
    
    mov ah,2 ; this ah,2 function used for print the value
    mov dl,10
    int 21h    ;this segment use for line break
    mov dl,13
    int 21h ; this line used for interupt 
     
    
    mov ah,2
    mov dl,msg
    int 21h 
     
    exit:
    
    mov ah,4ch
    int 21h    ;this segment use for end the program
    main endp
end main
    
    
      