.model small
.stack 100h
.data
msg db "enter the first bit: $"
msg1 db "enter the second bit: $"

.code 

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    
    cmp bl,'a'
    jge upper
    
    cmp bl,'Z'
    jle lower
    
    upper:
    cmp bl,'z'
    jg nochar
    
    and bl,0DFh
    
    mov ah,2
    mov dl,bl
    int 21h
    
    jmp exit
    
    lower:
    cmp bl,'A'
    jl nochar
    
    or bl,20h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    jmp exit
    
    nochar:
    
    exit:
    
    main endp

end main
    
    