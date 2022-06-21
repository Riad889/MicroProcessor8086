  .model small
  .stack 100h
  .data
  a db 'Enter the 1st input$'
  b db 'Enter the 2nd input$'
  c db 'Result = $'   
  .code 
  main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,10 
    mov bl,dl
    int 21h
    mov ah,13
    mov bl,dl
    
    
    exit:
    mov ah,4ch
    
    