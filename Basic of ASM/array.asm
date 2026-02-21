
org 100h

mov ax,0
mov bx,num
mov si,0
add ax,[bx+si]
add si,2
add ax,[bx+si]
add si,2
add ax,[bx+si]       
        
mov ax,0x4c00 
int 0x21

num:dw 4,6,7,9