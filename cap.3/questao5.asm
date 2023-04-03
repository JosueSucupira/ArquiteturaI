.686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr byte, printlist:VARARG
scanf       PROTO arg2:Ptr byte, inputlist:VARARG
            .data
msg0fmt     byte 0Ah, "%s", 0
in0fmt      byte "%d", 0
msg1fmt     byte 0Ah, "%s%d", 0Ah, 0Ah, 0
msg0        byte "Enter an integer: ", 0
msg1        byte "The integer is: ", 0
number      sdword ?
            .code
main        proc
            INVOKE printf, ADDR msg0fmt, ADDR msg0
            INVOKE scanf, ADDR in0fmt, ADDR number
            mov eax, number
            mov ebx, 3
            imul ebx
            mov ecx, 7
            sub ecx, eax
            mov number, ecx
            INVOKE printf, ADDR msg1fmt, ADDR msg1, number
            ret
main        endp
            end