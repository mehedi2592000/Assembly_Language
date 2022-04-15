.model small
.stack 100h
.data
.code

main proc
    
    mov cx,40
    
    mov al,1  ;first number
    mov bl,4      ; different number
    mov bh,0    ;initial sum
    
    add bh,al
    
    do_while:
    
    add al,bl
    add bh,al
    
    dec cx
    
    cmp cx,0
    je exit
    jmp do_while
             
    
             
    exit:
    mov ah,2
    
    mov dl,bh
    int 21h
    jmp exit1:
    
    exit1:
    
    
    main endp

end main

    
    
    