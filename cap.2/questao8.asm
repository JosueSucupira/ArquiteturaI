; Building Instructions:
; ml /Cx /coff .\questao8.asm /link /SUBSYSTEM:console /out.questao8.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib
        
        .686
        .model flat, c
        .stack 100h
printf  PROTO arg1:Ptr byte, printlist:VARARG
scanf   PROTO arg2:Ptr byte, inputlist:VARARG
        .data
msg0fmt byte "%s", 0
in0fmt  byte "%d", 0
msg1fmt byte 0Ah, "%s", 0
msg2fmt byte 0Ah, "%s%d", 0
msg3fmt byte 0Ah, "%s%d", 0Ah, 0
msg0    byte "Enter a number: ", 0
msg1    byte "Numbers", 0
msg2    byte "   ", 0
num1    sdword ?
num2    sdword ?
        .code
main     proc
        INVOKE printf, ADDR msg0fmt, ADDR msg0
        INVOKE scanf, ADDR in0fmt, ADDR num1
        INVOKE printf, ADDR msg0fmt, ADDR msg0
        INVOKE scanf, ADDR in0fmt, ADDR num2
        INVOKE printf, ADDR msg1fmt, ADDR msg1
        INVOKE printf, ADDR msg2fmt, ADDR msg2, num1
        INVOKE printf, ADDR msg3fmt, ADDR msg2, num2
        ret
main    endp
        end