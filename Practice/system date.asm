.model small
.stack 100h
.data
msg db "System date: $"

.code
main proc
    mov ax,@data
    mov ds,ax
    
    ;display string
    mov ah,09h
    lea dx,msg   
    int 21h        
    
    ;get date
    mov ah,2ah
    int 21h
     
    ;day
    mov al,dl
    add al,30h
    mov ah,02h
    mov dl,al
    int 21h 
    
    ;"/"
    mov ah,02h
    mov dl,'/'   
    int 21h
    
    ; month
    mov al,dh
    add al,30h
    mov ah,02h
    mov dl,al
    int 21h
    
         
     ;"/"
    mov ah,02h
    mov dl,'/'   
    int 21h
    
    
     ;year
     mov ax,cx
     add ax,30h 
     mov ah,02h
     mov dl,al
     int 21h
             
             
     mov ah,04ch
     int 21h
     
  main endp
end main