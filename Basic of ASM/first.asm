org 100h

;mov ax,4
;add ax,4      
;add ax,4
;add ax,4

;mov bx,3
;add bx,3
;add bx,3

;add ax,bx  

mov ax,3
add ax,1
mov ax,2
mov bx,3
sub bx,ax
add ax,bx

mov ax,0x4c00
int  0x21


; Run Commands:
; nasm -f win64 hello.asm -o hello.obj
; gcc hello.obj -o hello.exe
; hello
