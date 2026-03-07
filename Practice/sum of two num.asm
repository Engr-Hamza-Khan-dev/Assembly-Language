           
  .model small
  .stack 100h
  
  .data
  
  msg db "Enter the first no : $"
  msg2 db 0dh,0ah,"The sum is : $"
    
  .code 
  
  main proc
      mov ax,@data
      mov ds,ax
      
      
      mov ah,09h
      lea dx,msg
      int 21h
      
      
      mov ah,01h
      int 21h
      mov bl,al
      
      
      mov ah,01h
      int 21h
      mov bh,al
      
      sub bl,30h
      sub bh,30h
      
      mov al,bl
      add al,bh
      
      add al,30h
      
      mov ah,09h
      lea dx,msg2
      int 21h   
      
      mov ah,02h
      mov dl,al
      int 21h    
      
      
      mov ah,4ch
      int 21h
      main endp
  end main