; Building Instructions:
; ml /Cx /coff .\questao7.asm /link /SUBSYSTEM:console /out.questao7.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
            
            .686
            .model flat, c
            .stack 100h
printf      PROTO arg1:Ptr byte, printlist:VARARG
scanf       PROTO agr2:Ptr byte, inputlist:VARARG

            .data
msg1fmt     byte 0Ah, "%s", 0
msg2fmt     byte "%s%d", 0Ah, 0Ah, 0

in1fmt      byte "%d", 0

msg1        byte "Enter the degrees in Fahrenheit: ", 0
msg2        byte "The degrees in Celsius is: ", 0

fahrenheit  sdword ?
celsius     sdword ?

            .code
main        proc
            INVOKE printf, ADDR msg1fmt, ADDR msg1
            INVOKE scanf, ADDR in1fmt, ADDR fahrenheit

            mov eax, fahrenheit
            sub eax, 32
            mov ebx, 9
            cdq
            idiv ebx
            mov ebx, 5
            imul ebx
            mov celsius, eax

            INVOKE printf, ADDR msg2fmt, ADDR msg2, celsius
            ret
main        endp
            end
        
