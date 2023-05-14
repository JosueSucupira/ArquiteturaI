# Resolução das Questões do capítulo 5

### 01-) Dado as seguintes declarações de linguagem de montagem, indique se elas estão sintaticamente corretas ou incorretas. Se estiverem incorretas, indique o que está errado na declaração:
- A-) Inorreto, pois não exite a diretiva .for e .endfor em MASM
- B-) Incorreto. Pois o while está fazendo uma comparação com dois valores na memória.
- C-) Correto
- D-) Incorreto, a diretiva .untiledx está incorreta
- E-) Incorreto, as diretives correspondente do while em assembly MASM é .repeat - .until

### 02-) Implemente o último trecho de código na Seção 5.1 sem utilizar diretivas e usando apenas saltos condicionais e incondicionais.
```assembly
            mov ans, 0
if01:       cmp x, 0 
            je endif01
            mov ecx, 1
while01:    cmp ecx, y
            jg endw01
            mov eax, ans
            add ax, x
            mov ans, eax
            inc ecx
            jmp while01
endw01:     nop
            mov i, ecx
endif01:    nop
```

### 03-) Dado os seguintes loops while implementados usando saltos condicionais e incondicionais, indique quantas vezes o corpo de cada loop será executado:

- A-) três vezes
- B-) uma vez
- C-) zero vezes

### 04-) Implemente a diretiva .repeat e .until no final da Seção 5.2 utilizando somente as instruções de comparação e salto, juntamente com os nomes de etiquetas apropriados.

```assembly
                mov ans, 0
if01:           cmp y,0
                je endif01
                mov ecx, 1
repeat01:       nop
                mov eax, ans
                add eax, x
                mov ans, eax
                inc ecx
                cmp ecx, y
                jle repeat01
endrpt01:       nop
                mov i, ecx
endif01:        nop
                
```

### 05-) Implemente uma divisão sem sinal (similar à instrução "div") usando subtração repetitiva, com sua escolha (ou escolha do seu instrutor) de qualquer uma das seguintes opções (começando com o dividendo em eax e o divisor em ebx, em seguida, colocando o quociente em eax e o resto em edx. Observação: não se preocupe com a divisão por zero ou números negativos):

- A-)
```assembly
mov edx,eax
mov eax,0
.while edx >= ebx
sub edx, ebx
inc eax
.endw
```
- B-)
```assembly
;so entra no laço se o dividinendo for maior ou igual ao divisor
;caso contrario o quociente é 0 e o resto é o proprio dividendo
.if eax >= ebx
mov edx,eax
mov eax,0
.repeat
sub edx, ebx
inc eax
.until edx < ebx
.else
mov edx, eax
mov eax, 0
.endif
```

- C-)
```assembly
;so entra no laço se o dividinendo for maior ou igual ao divisor
;caso contrario o quociente é 0 e o resto é o proprio dividendo

.if eax >= ebx
mov edx,eax
mov eax,0
mov ecx, 0
.repeat
sub edx, ebx
inc eax
; se o dividendo ficar menor que o divisor o contador ecx recebe 1, é decrementado para 0 e para o loop
.if edx < ebx
mov ecx, 1
.endif
.untilcxz
.else
mov edx, eax
mov eax, 0
.endif
```

### 6-) Implemente o seguinte segmento em C usando as diretivas .repeat - .untilcxz. E se o valor de n for 0 ou negativo? Seu segmento de código ainda funcionará corretamente? Como esse problema pode ser corrigido?

- Impletação do código com as diretivas
```assembly
mov sum, 0
mov eax, sum
mov ecx, n
.repeat
add eax, ecx
.untilcxz
mov sum, eax
```
- Se n for 0 ou negitivo o resultado sai incorreto, pois não tem nenhum condicional casa n seja 0 ou negativo. Para resolver esse problema é so verificar antes de entrar no laço se n é 0 ou menor que 0, caso seja maior que zero entra no loço. O problema corrigido fica da seguinte maneira.

```assembly
mov sum, 0
mov eax, sum
mov ecx, n
.if  n > 0
.repeat
add eax, ecx
.untilcxz
.endif
mov sum, eax
```

### 07-) Implemente o seguinte loop do-while, primeiro usando as diretivas .repeat - .until e depois usando apenas comparações e saltos condicionais e incondicionais
- Diretivas
```assembly
mov ecx, 10
mov sum, 0
.repeat
add sum, ecx
sub ecx, 2
.until ecx <= 0
mov i, ecx
```

- Comparações e saltos condicionais e incondicionais
```assembly
                mov ecx,10
                mov sum, 0
repeat01:       nop    
                add sum, ecx
                sub ecx, 2
                cmp ecx, 0
                jg repeat01
endrpt01:       nop
```
### 08-) Implemente o último segmento de código na Seção 5.5 usando a instrução de loop em vez das diretivas .repeat e .untilcxz.

```assembly
mov ecx,2
for01:      nop
            mov tempecx, ecx
            mov ecx, 3
for02:      nop 
            ; body of nested loop
            loop for02
endfor02:   nop
            mov ecx,tempecx
            loop for01
endfor01:   nop
```










