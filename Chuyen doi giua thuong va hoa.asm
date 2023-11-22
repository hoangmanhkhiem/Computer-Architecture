.model small
.stack 100h
.data
    s1 db "Nhap ki tu: $"
    s2 db 10, 13, "Ki tu sau khi chuyen: $"
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        mov ah, 9
        lea dx, s1
        int 21h
        
        mov ah, 1
        int 21h
    
        cmp al, 90
        jle hoathanhthuong
        
        sub al, 32
        jmp xuat
        
        hoathanhthuong:
        add al, 32
        
        xuat:
        mov bl, al
        mov ah, 9
        lea dx, s2
        int 21h
        
        mov dl, bl
        mov ah, 2
        int 21h
        
        mov ah, 4ch
        int 21h    
    main endp
end main