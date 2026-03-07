.model small
.stack 100h
.data

msg db "enter three variable: $" 
var1 db ?
var2 db ?
var3 db ?

.code 
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,09h
    lea dx,msg
    int 21h
    
    mov ah,01h
    int 21h
    mov var1,al
    
    mov ah,01h
    int 21h
    mov var2,al
    
    mov ah,01h
    int 21h 
    mov var3,al 
        
    ;new line 
    mov ah,02h
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    mov ah,02h
    mov dl,var1
    int 21h
       
       
    ;new line 
    mov ah,02h
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
    
     mov ah,02h
    mov dl,var2
    int 21h 
      
    ;new line 
    mov ah,02h
    mov dl,0dh
    int 21h
    mov dl,0ah
    int 21h
    
     mov ah,02h
    mov dl,var3 
    int 21h 
    
    mov ah,4ch
    int 21h
    
    main endp
end main