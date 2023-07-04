;Building Instructions:
;ml /Cx /coff questao6.asm /link /SUBSYSTEM:console  /out:questao6.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib          
          
          .686
          .model  flat, c
          .stack  100h
printf    PROTO   arg1:Ptr Byte, printlist:VARARG
scanf     PROTO   arg2:Ptr Byte, inputlist:VARARG
          .data
msg1fmt   byte    0Ah, "%s%6.4Lf", 0
msg2fmt   byte    0Ah, "%s", 0Ah, 0
in1fmt    byte    "%f", 0
msg1      byte    "Enter a float for x: ", 0
msg2      byte    "Enter a float for y: ", 0
msg3      byte    "x is greater than y", 0
msg4      byte    "x is less than or equal to y", 0

x real4    ?
y real4    ?

          .code
main      proc
          INVOKE printf, ADDR msg2fmt, ADDR msg1
          INVOKE scanf, ADDR in1fmt, ADDR x
          INVOKE printf, ADDR msg2fmt, ADDR msg2
          INVOKE scanf, ADDR in1fmt, ADDR y

if01:     fld y
          fld x
          fcomip st(0), st(1)
          jbe else01
then01:   INVOKE printf, ADDR msg2fmt, ADDR msg3
          jmp endif01
else01:   INVOKE printf, ADDR msg2fmt, ADDR msg4 
          
endif01: nop
          ret
main      endp
          end