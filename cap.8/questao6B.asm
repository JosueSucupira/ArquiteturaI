;Building Instructions:
;ml /Cx /coff questao6b.asm /link /SUBSYSTEM:console  /out:questao6b.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib          
          
          .686
          .model  flat, c
          .stack  100h
printf    PROTO   arg1:Ptr Byte, printlist:VARARG
scanf     PROTO   arg2:Ptr Byte, inputlist:VARARG
          .data
msg1fmt   byte    "%d ", 0
msg2fmt   byte    0Ah, 0
in1fmt    byte    "%d", 0
msg1      byte    "Enter the number of integers to be input: ", 0
msg2      byte    "Enter a integer: ", 0
msg3      byte    "Sorted: ", 0
n         sdword  ?
array     sdword  20 dup(?)
temp      sdword  ?
swapped   sdword  ?

          .code
main      proc
          INVOKE printf, ADDR msg1
          INVOKE scanf, ADDR in1fmt, ADDR n
          INVOKE printf, ADDR msg2fmt
          
          .if n > 0                 
          mov ecx, n                
          mov edi, offset array + 0 
     
          .repeat
          push ecx
          INVOKE printf, ADDR msg2
          INVOKE scanf, ADDR in1fmt, ADDR [edi]
          add edi, 4
          pop ecx
          .untilcxz
          
         .if n > 1
         mov ecx, n
         dec ecx
         .repeat
         mov swapped, 0
         push ecx
         mov esi, offset array+0
         .repeat
         mov eax, [esi+4]
         .if [esi] > eax
         xchg [esi], eax
         mov [esi+4], eax
         mov swapped, 1
         .endif

         .if (swapped == 0)
            jmp sorted
         .endif

         add esi, 4
         .untilcxz
         pop ecx
         .untilcxz
         .endif

sorted:   nop

          INVOKE printf, ADDR msg3
          mov ecx, n                
          mov esi, offset array + 0 
          .repeat
          push ecx                  
          mov eax, [esi]            
          mov temp, eax             
          INVOKE printf, ADDR msg1fmt, temp 
          add esi, 4                
          pop ecx                   
          .untilcxz

          INVOKE printf, ADDR msg2fmt
          .endif
          ret
main      endp
          end