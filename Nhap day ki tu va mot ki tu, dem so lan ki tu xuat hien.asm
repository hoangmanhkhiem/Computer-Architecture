.model small
.stack 100h
.data
    s1 db "Nhap day ki tu: $"
    s3 db 10, 13, "Day hoa: $"
    s4 db 10, 13, "Day thuong: $"
    a db 100 dup(?) 
    b db 100 dup(?) 
    x db 10,13 0
    y db 10,13 0
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        mov ah, 9
        lea dx, s1
        int 21h
        
        
        luuhoa:
        mov a(x), al
        inc x 
        
        nhap:
        mov ah, 1
        int 21h
        cmp al,13
          
        
        cmp al, 97
        jle luuhoa
        mov b(y),al
        inc y
        jmp nhap
         
         
          
        in_kq_hoa:
        mov ah,9
        lea dx,s3
        int 21h
        
        mov bx, 0 
        mov cl,x
        
        in1:
        mov ah,9
        lea dx,a[bx]
        int 21h
        inc bx
        loop in1
        
        in_kq_thuong:
        mov ah, 9
        lea dx, s4
        int 21h  
        
        mov bx,0  
        mov cl,y
        
        in2:
        mov ah,9
        lea dx,b[bx]
        int 21h  
        inc bx
        loop in2
        
        thoat:
        mov ah, 4ch
        int 21h
        
    main endp
end main