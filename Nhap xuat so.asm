.model small
.stack 100h
.data
    s1 db "Nhap so: $"
    s2 db 10, 13, "So vua nhap: $"
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        mov ah, 9
        lea dx, s1
        int 21h 
        
        
        
    main endp
end main