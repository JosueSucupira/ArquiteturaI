# Resolução das Questões do capítulo 3

### 01- Indique se as seguintes afirmações são sintaticamente corretas ou incorretas. Se estiverem incorretas, indique o que está errado na afirmação:
- A)Incorreto, a diretiva inc recebe como paramêtro só a variável ou reistrador, no caso dever retirar o ',1'
- B)Correto
- C) Incorreto, pois não adicionar memória à memória
- D) Incorreto, pois está recebendo o valor imediato
- E) Incorreto, não subtriar de um valor imediato
- F) Correto

### 02 - Converta as seguintes declarações aritméticas em C para as declarações equivalentes em linguagem assembly da Intel (dica: conforme discutido no texto, não se esqueça de mover quaisquer valores imediatos para um registro primeiro para as instruções imul e idiv, se necessário):
- A) 
    ```assembly
    mov eax, 3
    imul number
    mov product, eax
    ```
- B)
    ```assembly
    mov eax, number
    cdq
    idiv amount
    move result, edx
    ```
- C)
    ```assembly
    mov eax, number
    mov ebx, 2
    cdq
    idiv ebx
    mov answer, eax
    ```
- D)
    ```assembly
    mov eax, 4
    sub eax, number
    mov difference, eax
    ```

### 03- Usando a ordem de operações de C, converta as seguintes declarações aritméticas nas declarações equivalentes em linguagem assembly. Certifique-se de não destruir o conteúdo de nenhuma das variáveis que aparecem apenas à direita do símbolo de atribuição, a menos que ++ ou -- seja usado.
- A) 
    ```assembly
    mov eax, x
    imul y
    mov ecx, eax
    mov eax, z
    mov ebx, 2
    imul ebx
    add ecx, eax
    moc x, ecx
    ```
- B)
    ```assembly
    mov eax, c
    mov ebx, 3
    cdq
    idiv ebx
    mov ecx, b ;guarda o valor de b
    sub ecx, eax
    mov a, ecx
    ```
- C) 
    ```assembly
    mov eax, num3
    imul num4
    mov ecx, eax ; guarda o produto num3*num4
    mov eax, num1
    cdq
    idiv num2
    sub eax, ecx
    mov total, eax
    ```
- D) 
    ```assembly
    mov exa, s
    neg eax
    mov ebx, t
    add eax, ebx
    inc t
    mov r, eax
    ```

- E)
    ```assembly
    mov eax, i
    sub eax, j
    imul k
    mov ebx, eax
    mov eax, n
    imul ebx
    mov m, eax
    ```
- F)
    ```assembly
        mov eax, c
        cdq
        idiv d
        imul e
        mov ebx, a
        sub ebx, b
        add ebx, eax
        mov q, ebx
    ```