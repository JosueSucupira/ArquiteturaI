;Building Instructions:
;ml /Cx /coff questao6.asm /link /SUBSYSTEM:console /out:questao6.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib

          .686
          .model  flat, c
          .stack  100h
printf    PROTO   arg1:Ptr Byte, printlist:VARARG
scanf     PROTO   arg2:Ptr Byte, inputlist:VARARG
          .data
msg1in    byte   "%d",0
msg1fmt   byte   0Ah, "%s%d", 0Ah, 0Ah, 0
msg2fmt   byte   0Ah, "%s", 0Ah,0
msg1      byte   "The contents of the accumulator are: ", 0
msg2      byte   "ERROR:DIVISION BY ZERO",0
tempout   sdword ?
tempin    sdword ?
three     sdword 3
          .code
LOADACC   macro operand
          mov eax, operand   ;; load eax with the operand
          endm
STOREACC  macro operand
          mov operand, eax
          endm
SUBACC    macro operand
          sub eax, operand
          endm 
ADDACC    macro operand
          add eax, operand   ;; add the operand to eax 
          endm
DIVACC    macro operand
          if operand EQ 0
          mov eax,-1
          INVOKE printf, ADDR msg2fmt, ADDR msg2
          ret
          elseif operand EQ 1
          ;; o valor no eax continua o mesmo, não faz nada
          else
          push ebx           ;; save ebx and edx
          push edx
          mov ebx, operand
          mov edx,eax
	  mov eax,0
	  if operand LT 0
	  neg ebx
	  endif
	  .while edx >= ebx
	  sub edx, ebx
	  inc eax
	  .endw
	  if operand LT 0
	  neg eax
	  endif
	  push edx
	  push ebx
          endif
          endm
MULTACC   macro operand
          if  operand EQ 0   ;; if operand is equal to 0
          mov eax, 0         ;; load eax with 0
          elseif operand EQ 1
          ;;o valor no eax continua o mesmo, não faz nada
          else
          push ebx           ;; save ebx and ecx
          push ecx
          mov ebx, eax       ;; mov eax to ebx
          mov eax, 0         ;; clear accumulator to zero
          mov ecx, operand   ;; load ecx with operand
          if operand LT 0    ;; if operand is negative
          neg ecx            ;; make ecx positive for loop
          endif   
          .while ecx > 0
          add eax, ebx       ;; repetitively add 
          dec ecx            ;; decrement ecx
          .endw    
          if operand LT 0    ;; if operand is negative
          neg eax            ;; negate accumulator, eax
          endif
          pop ecx            ;; restore ecx and ebx
          pop ebx 
          endif
          endm
main      proc 
          LOADACC 1
          ADDACC  2
          ADDACC  three
          MULTACC 1
          DIVACC 0
          MULTACC 0
          CALL    OUTACC
          ret
main      endp
INACC     proc
          push eax           ;; save ebx and ecx, and edx
          push ecx
          push edx
          INVOKE scanf, ADDR msg1in, ADDR tempin
          pop edx            ;; save ebx and ecx, and edx
          pop ecx
          pop eax
          mov eax, tempin
          ret
INACC     endp
OUTACC    proc
	      push eax           ;; save ebx and ecx, and edx
          push ecx
          push edx
          mov tempout, eax
          INVOKE printf, ADDR msg1fmt, ADDR msg1, tempout
	      pop edx            ;; save ebx and ecx, and edx
          pop ecx
          pop eax
          ret       
OUTACC    endp
          end          
