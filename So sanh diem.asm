.model small
.stack 100h
.data
    s0 db "Nhap diem: $"
    s1 db 10, 13, "Kem$"
    s2 db 10, 13, "Trung binh$"
    s3 db 10, 13, "Gioi$"
    s4 db 10, 13, "Xuat sac$"
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        mov ah, 9
        lea dx, s0
        int 21h
        
        mov ah, 1
        int 21h
        
        cmp al, "4"
        jle kem
        cmp al, "6"
        jle trungbinh
        cmp al, "8"
        jle gioi
        jmp xuatsac
        
        kem:
        mov ah, 9
        lea dx, s1
        int 21h
        jmp thoat
        
        trungbinh:
        mov ah, 9
        lea dx, s2
        int 21h
        jmp thoat
        
        gioi:
        mov ah, 9
        lea dx, s3
        int 21h
        jmp thoat
        
        xuatsac:
        mov ah, 9
        lea dx, s4
        int 21h
        jmp thoat
        
        thoat:
        mov ah, 4ch
        int 21h
    main endp
end main