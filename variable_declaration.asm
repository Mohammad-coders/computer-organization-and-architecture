.Model small
.Stack 100h
.data
num db 4
num1 db 3
num2 db ?
num3 db ?
.Code
Main PROC
    Mov ax,@data
    Mov ds,ax
    
    Mov ah,2    
    add num, 48 ; to print the 4 it's decimal number is 52, so add 48 more with num=4
    Mov dl,num  ; display the num
    int 21h     ; execute
    
    ;print into the new line
    mov ah,2
    mov dl,10
    int 21h
    
    ;remove the white space
    
    mov ah,2
    mov dl,13
    int 21h
    
    Mov ah, 2
    add num1,48
    Mov dl, num1
    int 21h
    
     ;print into the new line
    mov ah,2
    mov dl,10
    int 21h
    
    ;remove the white space
    
    mov ah,2
    mov dl,13
    int 21h
    
    ;take input for num2
    mov ah,1
    int 21h
    mov num2,al
    int 21h
    
    
    ;print into the new line
    mov ah,2
    mov dl,10
    int 21h
    
    ;remove the white space
    
    mov ah,2
    mov dl,13
    int 21h
    
    
    mov ah,2
    mov dl,num2
    int 21h
    
    
    ;print the new line
    mov ah,2
    mov dl,10
    int 21h
    
    
    ;removing white space
    mov dl.13
    int 21h 
    
    
    ;take input for num3
    
    mov ah,1
    int 21h
    mov num3,al
    
    mov ah,2
    mov dl,10
    int 21h
    
    mov dl,13
    int 21h
    
    mov dl,num3
    int 21h
    
    exit:
    Mov ah,4ch
    main endp
end main


