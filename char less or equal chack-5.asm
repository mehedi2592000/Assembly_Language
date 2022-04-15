
.model small
.stack 100h
.data
msg db "Enter a character: $"
msg2 db 10,13,"Thank You $"
var db ?  
.code
    main proc
          
        mov ax,@data
        mov ds,ax
              
       mov ah,9
       lea dx,msg
       int 21h 
       
       mov ah,1
       int 21h
       mov cl,al
       
       mov ah,1
       int 21h
       mov bl,al
       
       
       cmp cl,bl
       jg level1
       jle level2
       
       level1:
       xchg cl,bl
       
       mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        
        mov ah,2
        mov dl,cl
        int 21h 
        
        mov ah,2
        mov dl,bl
        int 21h
        
        jmp exit
        
        level2:
      
       mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        
        mov ah,2
        mov dl,cl
        int 21h 
        
        mov ah,2
        mov dl,bl
        int 21h
       jmp exit 
       
       
       
       
       exit:
        
       
        main endp
    end main
        
        
        
