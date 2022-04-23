;binary input output
.model small
.stack 100h
.data
msg db "enter binary number: $"
msg2 db 10,13,"not binary number $"
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,msg
        int 21h
        
        mov bx,0 ;clearing register
        
        while:
            mov ah,1
            int 21h
            
            cmp al,13
            je print
            
            cmp al,'0'
            je store
            
            cmp al,'1'
            je store
            
            jmp notNumber
            
            store:
            shl bx,1
            and al,0Fh
            or bl,al
            
            jmp while
     
        print:
            
            mov cx,0 ;clearing register 
            
            mov cl,16
            
            top:
            jcxz exit
            shl bx,1
            jc print_1
            
            print_0:
            mov ah,2
            mov dl,'0'
            int 21h
            loop top
            
            print_1:
            mov ah,2
            mov dl,'1'
            int 21h
            loop top
         
         notNumber:
            mov ah,9
            lea dx,msg2
            int 21h 
          
         exit:
         main endp
    end main
        
            
     
        
        
        