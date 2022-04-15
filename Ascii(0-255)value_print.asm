.model small
.stack 100h
.data
.code


main proc
    mov cl,255
    mov ch,0
    
    level:
    mov ah,2
    mov dl,ch
    int 21h
    
    inc ch
    
    cmp cl,0
    dec cl
    jnz level
    jmp exit
    
    exit:
    
    main endp
        
        end main