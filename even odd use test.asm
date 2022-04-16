.model data
.stack 100h
.data
msg db "enput the number: $"
msg1 db 10,13,"not a number $"
msg2 db 10,13,"even number $"
msg3 db 10,13,"odd number $"

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    cmp bh,'9'
    jg notnumber
    
    cmp bh,'0'
    jl notnumber
    
    testing:
    
    test bh,01h
    
    jz even
    jmp odd
    
    even:
    
    mov ah,9
    lea dx,msg2
    int 21h
    jmp exit
    
    odd:
    mov ah,9
    lea dx,msg3
    int 21h
    jmp exit 
    
    notnumber:
    mov ah,9
    lea dx,msg1
    int 21h
    jmp exit  
    
    exit:
    
    main endp

end main
    
    


