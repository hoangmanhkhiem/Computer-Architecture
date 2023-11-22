.model small
.stack 100h
.data
    s1 db "Hello World$"

.code
    main proc
        ;mov ah, 1
        ;int 21h
        
        mov ax, @data
        mov ds, ax
        
        mov ah, 9
        lea dx, s1
        int 21h
        
        mov ah, 4ch
        int 21h                                            
        
        
    
    main endp
end main