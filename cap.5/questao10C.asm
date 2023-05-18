;ml /Cx /coff .\questao10C.asm /link /SUBSYSTEM:console /out.questao10C.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib            
;Elemento x da sequencia de Fibonacci em Assembly MASM .repeat - .untilcxz            
            .686
            .model flat, c
            .stack 100h
scanf       PROTO arg2:Ptr Byte, inputlist:VARARG
printf      PROTO arg1:Ptr Byte, printlist:VARARG

            .data
in1fmt      byte "%d", 0
msg1fmt     byte "O termo na posicao %d da sequencia de Fibonacci e: %d",0Ah, 0

msg1        byte "Digite o numero da posicao da sequencia de Fibonacci que voce deseja calcular:  ",0

num         sdword ?
primeiro    sdword 0
segundo     sdword 1
proximo     sdword 0
fibonacci   sdword 0

            .code
main        proc
            INVOKE printf, ADDR msg1
            INVOKE scanf, ADDR in1fmt, ADDR num

if01:       cmp num, 0
            jne else01
then01:     mov fibonacci, 0
            jmp endif01
else01:     nop
if02:       cmp num, 1
            jne else02
then02:     mov fibonacci, 1
            jmp endif02
else02:     nop
            mov eax, primeiro
            mov ebx, segundo
            mov edx, proximo
            ; a quandidade de repetição de soma pra um elemndo da posição x é x-1 
            mov ecx, num
            dec ecx
            ;edx = proximo
            .repeat
                mov edx, eax
                add edx, ebx
                mov eax, ebx
                mov ebx, edx
            .untilcxz 
            mov fibonacci, edx
endif02:    nop
endif01:    nop

            INVOKE printf, ADDR msg1fmt, num, fibonacci
            ret
main        endp
            end