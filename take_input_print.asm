;Model specify the memory model for the program

.Model small  ; This model is suitable for small program that are 64kb limit. 
.Stack 100h   ; This is defined the size of the stack in this program
.Code
main PROC     ; Main method of the program
    Mov ah,1  ; Take input from the user 
    int 21h   ; executed 
    Mov bl, al; store the al value in the bl register
    Mov ah, 2 ; Print function
    Mov dl,10 ; print in new line
    int 21h
    Mov dl,13 ; To destruct the white space 
    int 21h 
    Mov dl, bl; Display the bl value 
    int 21h
    
    Mov ah,4ch; The value 4Ch in the ah register indicates to the DOS interrupt that the program should terminate. 
    Main endp ; end of the main procedure
end main      ; end of the main program after the end of main procedure



