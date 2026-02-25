

.model small
.stack 100h
.data

    msg db 'My name is hamza $'    ;variable
    msg1 db 0dh,0ah,'Hello world $' 
    
;0DH (Carriage Return - CR)
;0DH means Carriage Return
;It moves the cursor to the beginning of the current line


;0AH (Line Feed - LF)
;0AH means Line Feed
;It moves the cursor down to the next line 

   month db ?
   year dw ?
   day db ?
   
   
.code
 

    main proc               ;function (The name of function could be any thing)
         mov ax,@data
         mov ds,ax
         
         ;Display
         
         Mov ah,09H
         Mov dx,offset msg
         int 21h    
                   
         Mov ah,09h
         mov dx,offset msg1 
         ;we can also use Lea statement
         ;Lea=load effective address
         ;mean: load the destination with address of source
         ;like this : lea dx,msg1
         int 21h      
        
         
         ;Terminate
         
         mov ah,4ch
         int 21h
     
     
    main endp               ;end of function 
    end main