;Building Instructions:
;ml /Cx /coff .\questao3.asm /link /SUBSYSTEM:console /out.questao3.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib            

            .686
            .model flat, c
            .stack 100h
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG
printf      PROTO arg1:Ptr Byte, printlist:VARARG

            .data
in1fmt      byte "%d", 0
msg1fmt     byte "O termo na posicao %d da sequencia de Fibonacci eh: %d",0Ah, 0

msg1        byte "Digite o numero da posicao da sequencia de Fibonacci que voce deseja calcular:  ",0

num         sdword ?
primeiro    sdword 0
segundo     sdword 1
proximo     sdword 0
result      sdword 0
i           sdword 2

            .code
main        proc
            INVOKE printf, ADDR msg1
            INVOKE scanf, ADDR in1fmt, ADDR num
            call fibonacci
            INVOKE printf, ADDR msg1fmt, num, result
            ret
main        endp

fibonacci   proc
; casos base, caso num = 1 ou num = 0;
if01:       cmp num, 0
            jne else01
then01:     mov result, 0
            jmp endif01
else01:     nop
if02:       cmp num, 1
            jne else02
then02:     mov result, 1
            jmp endif02
else02:     nop
            mov eax, primeiro
            mov ebx, segundo
            mov edx, proximo
            mov ecx, i
            ;edx = proximo
            .while ecx <= num  
                mov edx, eax
                add edx, ebx
                mov eax, ebx
                mov ebx, edx
                inc ecx
            .endw
            mov result, edx
endif02:    nop
endif01:    nop           
            ret
fibonacci   endp
            end