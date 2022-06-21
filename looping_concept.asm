 .model small
 .stack 100h
 .data
 msg db "Loop  Concept$"
 .code
 main proc 
      mov ax,@data
      mov ds,ax
      
      mov ah,9 
      lea dx,msg  ;this portion used for string print 
      int 21h 
      
      mov ah,2
      mov dl,10
      int 21h    ; this portion is for new line 
      mov dl,13
      int 21h
      
      mov cx,26  ;cx register used for looping purpose
      mov ah,2   ; this portion used for print the 26 English letter
      mov dl,'a'
      
      level2:
      int 21h      ; this portion used for loop 
      inc dl
      loop level2
      
      
      
      exit:
      mov ah,4ch
      int 21h
      main endp
 end main