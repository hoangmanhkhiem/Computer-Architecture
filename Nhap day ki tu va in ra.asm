.model small
.stack 100h
.data   
    s1 db "Nhap day: $"
    s2 db 10, 13, "Day vua nhap: $"
    s3 db 10, 13, "Dao nguoc day vua nhap: $"
    a db 100 dup (?)
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
        je in
        mov a(bx), al
        inc bx
        jmp nhap
        
        in:
        mov ah, 9
        lea dx, s2
        int 21h
        
        mov cx, bx
        mov bx, 0
        
        lap:
        mov dl, a(bx)
        mov ah, 2
        int 21h
        
        inc bx
        loop lap
        
        mov ah, 9
        lea dx, s3
        int 21h
        
        in_nguoc:
        mov dl, a(bx)
        
        mov ah, 2
        int 21h
        
        dec bx
        cmp bx, 0
        jge in_nguoc
        
        mov ah, 4ch
        int 21h
        
    main endp
end main
            