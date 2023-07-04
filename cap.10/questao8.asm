;Building Instructions:
;ml /Cx /coff questao8.asm /link /SUBSYSTEM:console  /out:questao8.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib

          .686
          .model  flat, c
          .stack  100h
printf    PROTO   arg1:Ptr Byte, printlist:VARARG
scanf     PROTO   arg2:Ptr Byte, inputlist:VARARG

          .data
in1fmt    byte "%lf", 0
msg0fmt   byte 0Ah, "%s", 0
msg1fmt   byte 0Ah, "%s%6.1f", 0Ah, 0
msg0      byte "Enter a positive double for x: ", 0
msg1      byte "The sum is: ", 0

x         real8   ?
sum       real8   ?
zero      real8  0.0

          .code
main      proc

          fld zero
          fstp sum
          

          repeat01: nop
          INVOKE printf, ADDR msg0fmt, ADDR msg0
          INVOKE scanf, ADDR in1fmt, ADDR x
          fld sum
          fld x
          fadd
          fstp sum

          fld zero
          fld x
          fcomip st(0), st(1)
          ja repeat01
          endrpt01: nop

          INVOKE printf, ADDR msg1fmt, ADDR msg1, sum
          ret
main      endp
          end