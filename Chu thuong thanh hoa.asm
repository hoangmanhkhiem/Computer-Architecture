.model small
.stack 100h
.data
    s1 db "Nhap chu thuong: $"
    s2 db 10, 13, "Chu hoa: $"
.code
    main proc
        mov ax, @data
        mov ds, ax
    
        mov ah, 9
        lea dx, s1
        int 21h
        
        mov ah, 1
        int 21h 
        mov bl, al
        
        mov ah, 9
        lea dx, s2
        int 21h
        
        sub bl, 32   
        mov dl, bl
        
        mov ah, 2 ;in ki tu tu thanh dl        
        int 21h
        
        mov ah, 4ch
        int 21h
    main endp
end main