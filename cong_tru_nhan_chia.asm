.model small
.stack 100h
.data

.code
    main proc
        ;cong
        mov al, 4
        mov bl, 5
        add al, bl
        
        ;tru
        mov al, 9
        mov bl, 5
        sub al, bl
        
        ;nhan
        mov al, 200
        mov bl, 4
        mul bl
        
        ;chia
        mov ax, 20
        mov bx, 6
        div bl
        ;div bx
        
        ;mov ah, 4ch
        ;int 21h
        
    main endp
end main                                       