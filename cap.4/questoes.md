# Resolução das Questões do capítulo 4

### 01 -)  Indique se as seguintes afirmações estão sintaticamente corretas ou incorretas em MASM. Se estiverem incorretas, indique qual é o problema com a declaração.
- A) incorreto, porque está usuando uma atribuição "=" no lugar de uma comparação "==".
- B) incorreto, o 'then' não para estar la, poeria usar o 'then' como um marcador, mas a forma apresentada está incorreta.
- C) incorreto, pois no lugar de usar o valor, é calculado o endereço de memória
de x menos 1.
- D) incorreto, o cmp ta fazendo dois acesso à memória

### 02-) Usando diretivas MASM, escreva um segmento de código em linguagem assembly para implementar o seguinte:

```assembly
mov eax, b
.if a > eax
    dec a
.else
    .if eax >= c
        sub b, 2
    .else
    	mov eax, d 
        .if c > eax
            add c, eax
        .else
            mov eax, d
            cdq
            mov ebx, 2
            div ebx
            mov d, eax
        .endif
    .endif
.endif
```

### 03-) Converta as seguintes estruturas de seleção em C para segmentos de código em linguagem assembly correspondentes. Não utilize diretivas MASM, mas sim comparações, saltos e rótulos apropriados (dica: Problema B, use as regras de De Morgan).

- A-) 
```assemly
if01:       cmp w, 1
            jne endif01
and01:      comp x, 2
            jne endif01
then01:     inc y
endif01:    nop
``` 
- B-) 
```assembly
; if (num <= 0 || num > 3)

if02:       cmp num, 0
            jle then02
or01:       cmp num, 3
            jle endif02
then02:     sub count, 2
endif02:    nop
```

- C-)
```assembly
if03:       cmp w, 1
            je and01
or01:       cmp x, 2
            jne endif03
and01:      cmp y, 3
            jne endi03
then03:     inc z
endif03:    nop
```

- D-)
```assembly
if04:       cmp b, 2
            jne or01
and01:      cmp c, 3
            jg then04
or01:       cmp a, 1
            je then04
or02:       cmp d, 4
            jg endif04
then04:     dec e
endif04:    nop
```

### 04-) Dado o exemplo da estrutura if-then-else-if no Problema 2 acima, reimplemente-o usando uma estrutura if-then-if aninhada: 
- A-) 
```assembly
mov eax, b
.if a <= eax
    .if eax < c
    	mov eax, c
        .if eax <= d
            mov eax, d
            cdq
            mov ebx, 2
            div ebx
            mov d, eax
        .else
            mov eax, d
            add c, eax
        .endif
    .else
        sub b, 2
    .endif
.else
    dec a
.endif
```

- B-)
```assembly
            mov eax, b
if01:       cmp a, eax
            jg else01
then01:     nop
if02:       cmp eax, c
            jge else02
then02:     nop
            mov eax, d
if03:       cmp c, eax
            jg else03
then03:     mov eax, d
            mov ebx, 2
            cdq
            div ebx
            mov d, eax
            jmp endif01
else03:     mov eax, d
            add c, eax
            jmp endif01
endif03:    nop
else02:     sub b, 2    
            jmp endif01
endif02:    nop
else01:     dec a
endif01:    nop
```

### 05-) Implemente a seguinte declaração switch em C, que não possui um statement default, utilizando comparações, jumps e labels apropriados. Se a variável number não contiver um valor entre 0 e 3, então o valor de count não deve ser alterado:

```assemby
switch01:       cmp number, 0
                je case01;
                cmp number, 1
                je case01;
                cmp number, 2
                je case23
                cmp number, 3
                je case23
                jmp endswitch01
case01:         add count, 2
                jmp endswitch01
case23:         sub count, 2
endswitch01:    nop
```

                
