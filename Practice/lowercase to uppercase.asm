
.model small
.stack 100h
.data
 msg db 'Enter the Alphabet :$'
 msg2 db 0dh,0ah, 'The conversion is :$' 
 temp db ?
 
.code 
    main proc 
        mov ax,@data
        mov ds,ax
        
        mov ah,09h
        lea dx,msg
        int 21h
        
        mov ah,01h
        int 21h    
        
        mov temp,al
        
        mov ah,09h
        lea dx,msg2
        int 21h
        
        sub temp,32  
        
        mov ah,02h
        mov dl,temp
        int 21h    
        
        mov ah,4ch
        int 21h
        
   main endp
   end main