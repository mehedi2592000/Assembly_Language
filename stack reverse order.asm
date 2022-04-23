.model small
.stack 100h
.data
msg db "enter the string $"
msg1 db 10,13,"reverse $"
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h


    mov cx,0
    mov ah,1
    
    while:
    
    int 21h
    
    cmp al,0Dh
    je print
    push ax
    inc cx
    jmp while
    
    print:
    mov ah,9
    lea dx,msg1
    int 21h
    
    print1:
    
    cmp cx,0
    je exit
    
    mov ah,2
    pop dx
    int 21h
    dec cx
    jmp print1
    
    exit:
    
    main endp
end main