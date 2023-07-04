;Building Instructions:
;ml /Cx /coff questao6A.asm /link /SUBSYSTEM:console /out:questao6A.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib  
          .686
          .model  flat, c
          .stack  100h
printf    PROTO   arg1:Ptr Byte, printlist:VARARG
scanf     PROTO   arg2:Ptr Byte, inputlist:VARARG
          .data
msg1fmt   byte    "%c",0
msg2fmt   byte    "%s",0
msg3fmt   byte    0Ah,0
msg4fmt   byte    "A string %d do arry: Eh UM PALINDOME", 0Ah, 0
msg5fmt   byte    "A string %d do arry: NAO Eh UM PALINDOME",0Ah, 0

arraystr  byte    "mmmhmmmhmm ", "athbdrpogd ","1096886901 ","abcdefefrg ","caca11acac ",
                  "1234994321 ", "asbdeedbsa ","mmmuhhummm ","aaabbbbaaa ","0123456789 "
str1      byte    10 dup (?)
temp      byte    ?
aux       sdword  ?
numstr    sdword  1
          .code
main      proc
          mov ecx, 10
          lea esi, arraystr
          ;ebx é usado como um idince para identifiar o começo de cada string no array
          mov ebx,0
          .repeat
          push ecx

          ;copia uma string do array na str auxiliar
          mov ecx, 10
          lea edi, str1
          cld
          rep movsb
          ;esi fica com o começo da proxima string do array e armazena o endereço no aux para proxima iteração
          inc esi 
          mov aux, esi
          

          ;inverte a str auxiliar
          mov esi, offset str1+0
          mov edi, offset str1+9
          mov ecx,5
          .repeat
          mov al, [edi]
          xchg[esi], al
          mov [edi], al
          inc esi
          dec edi
          .untilcxz

          ;compara a string com a str axiliar
          mov ecx, 10
          lea esi, arraystr[ebx]
          lea edi, str1
          repe cmpsb
         
          ;imprime quais são palidromes ou não são palindromes
          .if ecx == 0
          INVOKE printf, ADDR msg4fmt, numstr
          .else
          INVOKE printf, ADDR msg5fmt, numstr
          .endif
          inc numstr
          
          add ebx,11
          mov esi, aux
          pop ecx
          .untilcxz
          ret
main      endp
          end