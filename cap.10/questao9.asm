;Building Instructions:
;ml /Cx /coff questao9.asm /link /SUBSYSTEM:console  /out:questao9.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib

          .686
          .model  flat, c
          .stack  100h
printf    PROTO   arg1:Ptr Byte, printlist:VARARG
scanf     PROTO   arg2:Ptr Byte, inputlist:VARARG

          .data
msg1fmt   byte 0Ah,"%s",0Ah,0Ah,0
msg2fmt   byte 0Ah, "%s", 0
msg3fmt   byte " %3.1f",0Ah,0
in1fmt    byte "%lf", 0
msg1      byte "Array", 0
msg2      byte "Enter a number: ", 0

n         sdword 5
array     real8 5 dup(?)

 .code
main      proc
          mov ecx, n
          mov edi, offset array + 0  
          .repeat 
          push ecx
          INVOKE printf, ADDR msg2fmt, ADDR msg2
          INVOKE scanf, ADDR in1fmt, ADDR [edi]
          add edi, 8
          pop ecx
          .untilcxz
          
          INVOKE printf, ADDR msg1fmt, ADDR msg1
          lea esi,array
          mov ecx,n
          .repeat
          push ecx
          INVOKE printf, ADDR msg3fmt, real8 ptr [esi]
          pop ecx
          add esi,8
          .untilcxz
          
          ret
main      endp
          end