.model small
.stack 100h
.data
    s1 db "Nhap chuoi: $"
    s2 db 10, 13, "So ki tu aA trong chuoi: $"
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        mov ah, 9
        lea dx, s1
        int 21h
        
        mov bl, 48
        
        nhap:
        mov ah, 1
        int 21h
        
        cmp al, "A"
        je dem
        
        cmp al, "a"
        je dem
        
        kt_nhap:
        cmp al, 13
        je in_kq
        jmp nhap
                
        dem:
        inc bl
        jmp kt_nhap
        
        in_kq:
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