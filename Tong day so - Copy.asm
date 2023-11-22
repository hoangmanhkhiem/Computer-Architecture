.model small
.stack 100h
.data 
    muoi dw 10
    TB1 db 'Nhap n: $'
    TB2 db 10,13,'KET QUA LA: $'

.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,9  
        lea dx,TB1 ; in chuoi tb1 
        int 21h
          
          
        mov ah,1   ;nhap so n = 5
        int 21h   
        sub al,48  ;chuyen 5 sang ascii = 53
        mov cx,0 ;cx =0
        mov cl,al   ;cl = 5
        
        lea dx,TB2 ; in chuoi tb2
        mov ah,9
        int 21h
        
        ;1+2+3+4+5       
        mov ax,0;khoi tao ket qua ban dau = 0
        mov bx,1 ;bien tang 
        
        Tinhtong:  ;tinh tong tra ve 1 so
        add ax,bx ;ax + bx luu vao trong ax
        inc bx  ;increase:tang gia tri bx len 1
        cmp bx,cx ;so sanh bx voi cx 
        jle Tinhtong ;neu bx<=cx thi tiep tuc lap
        mov cx,0
             
        Chialay1kt: ;lay tu ky tu cua so 15 vao day vao trong ngan xep
        mov dx,0
        div muoi  ;chia cho 10
        add dx, 48 
        push dx;day vao ngan xep
        inc cx ;increase : tang cx 1 don vi
        cmp ax,0
        jne Chialay1kt
        
        Hienthi:  ;hien thi tuwng ky tu o trong ngan xep
        pop dx ;lay 1 so o dau ngan xep*
        mov ah,2
        int 21h
        Loop HienThi
                      
        mov ah,4Ch
        int 21h
        
         
     main endp
end main