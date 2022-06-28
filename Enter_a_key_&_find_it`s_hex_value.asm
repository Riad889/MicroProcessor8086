.MODEL SMALL
.STACK 100H
.DATA 
msg1 db "Enter a key : $"
msg2 db "Hex value of that number : $"
a db ?
b db ?
.CODE
MAIN PROC  
mov ax,@data
mov ds,ax

mov ah,9
lea dx,msg1
int 21h


    MOV AH,1
    INT 21H

mov bh,al
mov bl,al
shr bh,4
    add bh,30h
mov a,bh

mov bh,bl
    and bh,0fh
    add bh,30h
mov b,bh
   mov ah,2
   
    mov ah,2
    mov dl,10
    int 21h 
    mov dl,13
    int 21h
    
    mov ah,9
lea dx,msg2
int 21h 
     
     
mov ah,2
mov dl,a
int 21h
mov ah,2
mov dl,b
int 21h                
    EXIT:
    MOV AH,4CH
    INT 21H

    MAIN ENDP
END MAIN
