;Implemente o programa na seção 4.8 em linguagem assembly sem usar diretivas 
;de alto nível, apenas utilizando comparações, saltos e rótulos apropriados.

;compilar com:
;ml /Cx /coff .\questao6.asm /link /SUBSYSTEM:console /out.questao6.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib


            .686
            .model flat
            .stack 100h
scanf       PROTO agr2:Ptr Byte, inputlist:VARARG
printf      PROTO agr1:Ptr Byte, printlist:VARARG

            .data
in1fmt      byte "%d", 0
msg1fmt     byte "%s", 0
msg2fmt     byte 0Ah, "%s", 0Ah, 0
msg3fmt     byte "%s", 0Ah, 0
msg4fmt     byte 0Ah, 0
msg1        byte "Enter an AC voltage: ", 0
msg2        byte "Voltage is Acceptable", 0
msg3        byte "Warning!", 0
msg4        byte "Voltage too Low", 0
msg5        byte "Voltage too High", 0
voltage     sdword  ?

            .code
main        proc
            INVOKE printf, ADDR msg1fmt, ADDR msg1
            INVOKE scanf, ADDR in1fmt, ADDR voltage
if01:       cmp voltage, 110
            jl  else01
            cmp voltage, 120
            jg else01
then01:     INVOKE printf, ADDR msg2fmt, ADDR msg2
            jmp endif01
else01:     INVOKE printf, ADDR msg2fmt, ADDR msg3
if02:       cmp voltage, 110
            jge else02
            INVOKE printf, ADDR msg3fmt, ADDR msg4
            jmp endif02
else02:     INVOKE printf, ADDR msg3fmt, ADDR msg5
endif02:    nop
endif01:    nop
            INVOKE printf, ADDR msg4fmt
            ret
main        endp
            end


