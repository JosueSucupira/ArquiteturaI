;Building Instructions:
;ml /Cx /coff questao5.asm /link /SUBSYSTEM:console /out:questao5.exe kernel32.lib legacy_stdio_definitions.lib msvcrt.lib

            .686
            .model  flat, c
            .stack  100h
printf      PROTO   arg1:Ptr Byte, printlist:VARARG
            .data
msg1fmt     byte    "%d ", 0
msg1        byte    "Array Copied!", 0Ah, 0

array1      sdword 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20
array2      sdword 20 dup (?)
            .code
main        proc
            mov ecx, 20
            mov ebx, 0
            .repeat
            mov eax, array1[ebx]
            mov array2[ebx], eax
            add ebx, 4
            .untilcxz
            INVOKE printf, ADDR msg1
            mov ecx, 20
            mov ebx, 0
            .repeat
            push ecx
            INVOKE printf, ADDR msg1fmt, array2[ebx]
            add ebx, 4
            pop ecx
            .untilcxz
            ret
main        endp
            end