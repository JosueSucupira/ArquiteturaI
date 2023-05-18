;ml /Cx /coff .\questao9C.asm /link /SUBSYSTEM:console /out.questao9C.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib            
;Cálculo de um fatorial em Assembly MASM .repeat - .untilcxz           
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

            .code
main        proc
            INVOKE printf, ADDR msg1
            INVOKE scanf, ADDR in1fmt, ADDR num
            
if01:       cmp num, 0
            je endif01
            mov ecx, num
            mov eax, fatorial
            .repeat
            imul ecx
            .untilcxz 
endif01:    nop
            mov fatorial, eax

            INVOKE printf, ADDR msg1fmt, num, fatorial
            ret
main        endp
            end