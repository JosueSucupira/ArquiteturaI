# Resolução das Questões do capítulo 1

### 01 - Quais dos seguintes são nomes de variáveis sintaticamente corretos em linguagem assembly?

- a) Correto.
- b) Incorreto, pois está começando com número.
- c) Correto.
- d) Incorreto, pois está começando com um caractere.
- e) Incorreto, pois está começando com um caractere.
- f) Incorreto, pois tem um ponto.

### 02 - Implemente cada uma das seguintes declarações em linguagem assembly:

- a) initial byte ?
- b) grade byte 'B'
- c) x byte 'P'

     y byte 'Q'
- d) amount sdword ?
- e) count sdword 0
- f) number sdword -396

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

- a) mov i, 1

- b) mov eax, y

     mov x, eax

- c) mov c, 2

     mov eax, c

     mov b, eax

     mov eax, b

     mov a, eax

- d) mov x, 1

     mov y, 1

- e) mov a, 1

     mov b, 2

     mov eax, a

     mov c, eax

     mov eax, b

     mov a, eax

     mov eax, c

     mov b, 

### 05 - Assumindo que todas as variáveis são declaradas como byte, escreva instruções de linguagem assembly para implementar cada uma das seguintes declarações ou segmentos de código em C:

- a) mov a, 'B'

- b) mov al, c

     mov b, al

- c) mov d, 'E'

     mov al, d

     mov e, al

- d) mov d, 'z'

     mov al, d

     mov a, al

     mov al, a

     mov b, al

- e) mov a, '2'

     mov b, '?'

     mov al, b

     mov a, al