;Tính giai thừa của một số và in ra đáp án

.model small
.stack 100h
.data
    n dw 5
    giaithua dw ?
.code
    main proc
        mov ax,@data
        mov ds,ax

        mov ax,1
        mov bx,1
        mov cx,n
        cmp cx,0
        je ketthuc
        lap:
            mul bx
            inc bx
            loop lap
        ketthuc:
            mov giaithua,ax
            mov ax,4c00h
            int 21h
    main endp
end main