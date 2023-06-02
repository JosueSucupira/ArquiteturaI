;Building Instructions:
;ml /Cx /coff .\questao2.asm /link /SUBSYSTEM:console /out.questao2.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib           
            
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

            .code
main        proc
            INVOKE printf, ADDR msg1
            INVOKE scanf, ADDR in1fmt, ADDR num
            call factorial
            INVOKE printf, ADDR msg1fmt, num, fatorial
            ret
main        endp

factorial   proc
            mov ecx, i
            mov eax, fatorial
            .while ecx <= num
            imul ecx
            inc ecx
            .endw
            mov fatorial, eax
            mov i, ecx
            ret
factorial   endp
            end