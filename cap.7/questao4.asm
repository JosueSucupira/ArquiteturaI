;Building Instructions:
;ml /Cx /coff .\questao4.asm /link /SUBSYSTEM:console /out.questao4.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib           
            
            .686
            .model flat, c
            .stack 100h
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG
printf      PROTO arg1:Ptr Byte, printlist:VARARG

            .data
in1fmt      byte "%d", 0
msg1fmt     byte "O fatorial de %d! eh %d: ",0Ah, 0
msg2fmt     byte "%d",0Ah, 0

msg1        byte "Calcular fatorial de: ",0

num         sdword ?
fatorial    sdword 1
i           sdword 1

factorial   macro 
            mov ecx, i
            mov eax, fatorial
            .while ecx <= num
            imul ecx
            inc ecx
            .endw
            mov fatorial, eax
            mov i, ecx
            endm 

            .code
main        proc
            INVOKE printf, ADDR msg1
            INVOKE scanf, ADDR in1fmt, ADDR num
            factorial
            INVOKE printf, ADDR msg1fmt, num, fatorial
            ret
main        endp
            end