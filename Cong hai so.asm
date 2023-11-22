.model small
.stack 100h
.data
    s1 db "Nhap so thu 1: $"
    s2 db 10, 13, "Nhap so thu 2: $"
    s3 db 10, 13, "Tong = $"      
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        mov ah, 9
        lea dx, s1
        int 21h
        
        ;Nhap ki tu
        mov ah, 1
        int 21h
        sub al, 48
        add bl, al
        
        mov ah, 9
        lea dx, s2
        int 21h
        
        ;Nhap ki tu
        mov ah, 1
        int 21h
        sub al, 48
        add bl, al
        
        mov ah, 9
        lea dx, s3
        int 21h
        
        ;chia lay thuong va du
        mov ah, 0
        mov al, bl
        mov bl, 10
        div bl ;al / bl       ah = du    al = thuong
        
        ;hien thuong
        mov bl, ah ;chuyen du sang bl
        
        mov ah, 2
        mov dl, al
        add dl, 48
        int 21h
        
        ;hien du
        mov dl, bl
        add dl, 48
        int 21h
        
        mov ah, 4ch
        int 21h        
    main endp
end main