;ml /Cx /coff .\questao9B.asm /link /SUBSYSTEM:console /out.questao9B.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib            
Cálculo de um fatorial em Assembly MASM .repeat - .until                     
            .686
            .model flat, c
            .stack 100h
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG
printf      PROTO arg1:Ptr Byte, printlist:VARARG

            .data
in1fmt      byte "%d", 0
msg1fmt     byte "O fatorial de %d! e %d: ",0Ah, 0
msg2fmt     byte "%d",0Ah, 0

msg1        byte "Calcular fatorial de: ",0

num         sdword ?
fatorial    sdword 1
i           sdword 1

            .code
main        proc
            INVOKE printf, ADDR msg1
            INVOKE scanf, ADDR in1fmt, ADDR num
            mov ecx, i
            mov eax, fatorial
            .repeat
            imul ecx
            inc ecx
            .until ecx > num
            mov fatorial, eax
            mov i, ecx

            INVOKE printf, ADDR msg1fmt, num, fatorial
            ret
main        endp
            end