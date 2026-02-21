    org 100h
    
    
    mov ax,[var1]
    mov bx,[var2]
    
    
    mov ax,0x4c00
    int 0x21  
    
    var1:dw 20
    var2:db 10