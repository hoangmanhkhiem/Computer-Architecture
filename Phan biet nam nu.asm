.model small
.stack 100h
.data
    s0 db "Nhap gioi tinh (0: Nam, 1: Nu)$"
    s1 db 10, 13, "Nam$"
    s2 db 10, 13, "Nu$"
    s3 db 10, 13, "Khong phai nam hoac nu$"
.code
    main proc
        mov ax, @data
        mov ds, ax
    
        mov ah, 9
        lea dx, s0
        int 21h
    
        mov ah, 1
        int 21h
        
        cmp al, "0"
        je nam
        cmp al, "1"
        je nu
        
        mov ah, 9
        lea dx, s3
        int 21h
        jmp thoat
        
        nam:
        mov ah, 9
        lea dx, s1
        int 21h
        jmp thoat
        
        nu:
        mov ah, 9
        lea dx, s2
        int 21h
        jmp thoat
        
        thoat:
        mov ah, 4ch
        int 21h
        
    main endp
end main