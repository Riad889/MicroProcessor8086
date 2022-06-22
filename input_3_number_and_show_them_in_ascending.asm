.model small
.stack 100h


.data
a db ?
b db ?
c db ? 
msg db "Enter three value : $"   
msg2 db "Ascending Order : $"


.code 
main proc
    mov ax,@data
    mov ds,ax  
    
    mov ah,9
    lea dx,msg ; to print a string
    int 21h   
    
    
    mov ah,1
    int 21h
    mov bl,al 
    
    
    ;sub bl,17d
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    
    
    mov ah,1
    int 21h
    mov bh,al 
    
    
    ;sub bh,17d 
    
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    
    
    mov ah,1
    int 21h
    mov cl,al 
    
    
    ;sub cl,17d 
    
    
    
    cmp bl,bh
    jge level1;
    jmp level4
    
    
    
    
    
    
    
    level1:
    cmp bl,cl
    jge level2
    mov a,cl
    mov b,bl
    mov c,bh
    jmp display
    
    
    
    
    
    level2:
    mov a,bl
    cmp bh,cl
    jge level3
    mov b,cl
    mov c,bh  
    jmp display
    
    
    
    level3:
    mov b,bh
    mov c,cl
    jmp display  
    
    
    level4:
    cmp bh,cl
    jge level5
    mov a,cl
    mov b,bh
    mov c,bl 
    jmp display
    
    
    level5:
    
    mov a,bh
    cmp bl,cl
    jge level6
    mov b,cl
    mov c,bl
    jmp display
    
    
    level6:
    mov b,bl
    mov c,cl
    jmp display 
    
    
    
    display: 
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    mov ah,9
    lea dx,msg2 ; to print a string
    int 21h
            
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h         
            
    
    
    mov dl,c
    mov ah,2
    int 21h 
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
     
    
    mov dl,b
    mov ah,2
    int 21h
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    mov dl,a
    mov ah,2
    int 21h 
    
    jmp exit
    
    
    exit:
    mov ah,4ch
    int 21h 
    main endp
    end main
    
    
    
    
    
    
    
    
    


    
    