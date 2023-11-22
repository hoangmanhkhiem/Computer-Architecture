.model small
.stack 100h
.data
      s DB "00:00:00$"  
.code
    main PROC
        MOV AX, @data
        MOV DS, AX
        
back:   
        ;ham khia bao thoi gian    
        MOV AH,2ch
        INT 21h
        ;ch:gio , cl:phut , dh :giay
        
        MOV AL,CH
        MOV DL,10  
        MOV AH,0
        DIV DL
        
        ADD AL,48
        ADD AH,48
        
        MOV s,AL
        MOV s+1,AH
        
        MOV AL,CL
        MOV AH,0
        MOV DL,10
        DIV DL
        ADD AL,48
        ADD AH,48
        MOV s+3,AL
        MOV s+4,AH
        
        MOV AL,DH
        MOV AH,0
        MOV DL,10
        DIV DL
        ADD AL,48
        ADD AH,48
        MOV s+6,AL
        MOV s+7,AH
        
        ;ham hien ra mot vi tri
        MOV AH,2
        MOV DX,0803h
        INT 10h
        
        MOV AH,9
        LEA DX,s
        INT 21h  
        JMP back
        
        MOV AH, 4ch
        INT 21h        
    main ENDP
END main