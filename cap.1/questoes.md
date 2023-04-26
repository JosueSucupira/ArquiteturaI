# Resolução das Questões do capítulo 1

### 01 - Quais dos seguintes são nomes de variáveis sintaticamente corretos em linguagem assembly?

- a) Correto.
- b) Incorreto, pois está começando com número.
- c) Correto.
- d) Incorreto, pois está começando com um caractere.
- e) Incorreto, pois está começando com um caractere.
- f) Incorreto, pois tem um ponto.

### 02 - Implemente cada uma das seguintes declarações em linguagem assembly:

- a) 
     ```assembly
     initial byte ?
     ```
- b) 
     ```assembly
     grade byte 'B'
     ```
- c)
     ```assembly
     x byte 'P'
     y byte 'Q'
     ```
- d) 
     ```assembly
     amount sdword ?
     ```
- e) 
     ```assembly
     count sdword 0
     ```
- f) 
     ```assembly
     number sdword -396
     ```

### 03 - Assumindo que as variáveis foram declaradas corretamente, indique se as seguintes declarações são sintaticamente corretas ou incorretas. Se incorretas, indique o que está errado na declaração:

- a) Incorreto, o certo é mov.
- b) Incorreto, pois está acessando a memória duas vezes.
- c) Correto.
- d) Correto.
- e) Incorreto, pois está movendo uma variável para uma constante.
- f) Correto.
- g) Incorreto, o registrador está com sinal negativo.
- h) Correto.

### 04 - Assumindo que todas as variáveis são declaradas como sdword, escreva instruções de linguagem assembly para implementar cada uma das seguintes declarações ou segmentos de código em C:

- a) 
     ```assembly
     mov i, 1
     ```
- b) 
     ```assembly
     mov eax, y
     mov x, eax
     ```
- c) 
     ```assembly
     mov c, 2
     mov eax, c
     mov b, eax
     mov eax, b
     mov a, eax
     ```
- d) 
     ```assembly
     mov x, 1
     mov y, 1
     ```
- e) 
     ```assembly
     mov a, 1
     mov b, 2
     mov eax, a
     mov c, eax
     mov eax, b
     mov a, eax
     mov eax, c
     mov b, eax
     ```
    
### 05 - Assumindo que todas as variáveis são declaradas como byte, escreva instruções de linguagem assembly para implementar cada uma das seguintes declarações ou segmentos de código em C:

- a) 
     ```assembly
     mov a, 'B'
     ```
- b) 
     ```assembly
     mov al, c
     mov b, al
     ``` 
- c) 
     ```assembly
     mov d, 'E'
     mov al, d
     mov e, al
     ```
- d) 
     ```assembly
     mov d, 'z'
     mov al, d
     mov a, al
     mov al, a
     mov b, al
     ```
    
- e) 
     ```assembly
     mov a, '2'
     mov b, '?'
     mov al, b
     mov a, al
     ```
     
