.model small
.stack 100h
.data
    s1 db "Nhap day: $"
    s2 db 10, 13, "Day chi gom chu hoa: $"
    s3 db 10, 13, "Day khong co chu hoa$"
    a db 100 dup(?)
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        mov ah, 9
        lea dx, s1
        int 21h
        
        mov bx, 0
        
        nhap:
        mov ah, 1
        int 21h
        
        cmp al, 13
        je in_s2
        cmp al, "Z"
        jle hoa
        jmp nhap
        
        hoa:
        mov a(bx), al
        inc bx
        jmp nhap
        
        in_s2:
        mov cx, bx
        mov bx, 0
        
        cmp cx, 0
        je in_kq_0
        
        mov ah, 9
        lea dx, s2
        int 21h
        
        in_kq:
        mov dl, a(bx)
        
        mov ah, 2
        int 21h
        
        inc bx
        loop in_kq
        jmp thoat
        
        in_kq_0:
        mov ah, 9
        lea dx, s3
        int 21h
        
        thoat:
        mov ah, 4ch
        int 21h
        
    main endp
end main