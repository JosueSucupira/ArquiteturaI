;ml /Cx /coff .\questao4.asm /link /SUBSYSTEM:console /out.questao4.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib        
            .686
            .model  flat, c
            .stack  100h
printf      PROTO   arg1:Ptr Byte, printlist:VARARG
scanf        PROTO   arg2:Ptr Byte, inputlist:VARARG
            .data
msg1fmt     byte  "%s", 0
in1fmt      byte  "%x", 0
msg2fmt     byte  "%s%x", 0Ah, 0Ah, 0
msg0        byte  "PRINTED FILE", 0Ah, 0
msg1        byte  0Ah, "Enter a hexadecimal number: ", 0
msg2        byte  "The hexadecimal number is ", 0
msgbit0     byte  "PAPER JAM", 0Ah, 0    
msgbit1     byte  "PAPER MISFEED", 0Ah, 0    
msgbit2     byte  "PAPER TRAY EMPTY", 0Ah, 0    
msgbit3     byte  "TONER LOW", 0Ah, 0    
msgbit4     byte  "TONER EMPTY", 0Ah, 0    

dsb         dword ?
            .code 
main        proc 
            INVOKE printf, ADDR msg1fmt, ADDR msg1
            INVOKE scanf, ADDR in1fmt, ADDR dsb
            INVOKE printf, ADDR msg2fmt, ADDR msg2, dsb
while01:    cmp dsb, 1fh
            jg endw
            
if01:       test dsb, 00001b
            jz else01
            INVOKE printf, ADDR msg1fmt, ADDR msgbit0
            jmp endif01
else01:     nop
if02:       test dsb, 00010b
            jz else02
            INVOKE printf, ADDR msg1fmt, ADDR msgbit1
            jmp endif02
else02:     nop
if03:       test dsb, 00100b
            jz else03
            INVOKE printf, ADDR msg1fmt, ADDR msgbit2
            jmp endif03
else03:     nop
if04:       test dsb, 01000b
            jz else04
            INVOKE printf, ADDR msg1fmt, ADDR msgbit3
            jmp endif04
else04:     nop
if05:       test dsb, 10000b
            jz else05
            INVOKE printf, ADDR msg1fmt, ADDR msgbit4
            jmp endif05
else05:     nop
            INVOKE printf, ADDR msg1fmt, ADDR msg0
endif05:    nop
endif04:    nop
endif03:    nop
endif02:    nop
endif01:    nop

            INVOKE printf, ADDR msg1fmt, ADDR msg1
            INVOKE scanf, ADDR in1fmt, ADDR dsb
            INVOKE printf, ADDR msg2fmt, ADDR msg2, dsb
            jmp while01
endw:       nop
            ret
main        endp
            end