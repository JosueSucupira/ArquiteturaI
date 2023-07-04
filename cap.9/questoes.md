# Resolução das Questões do capítulo 9


### 01-) Dadas as seguintes instruções em linguagem assembly, indique se elas estão sintaticamente corretas ou incorretas. Se estiverem incorretas, indique qual é o problema na instrução:
A-) Incorreto, o certo seria 'movsb'
B-) Correto.
C-) Correto.
D-) Incorreto, o certo seria 'storsb'
E-) Incorreto, o certo seria 'rep storsb'
F-) Incoreto, o certo seria 'lodsb'

### 02-) Dadas as seguintes declarações, analise os segmentos de código a seguir e indique o conteúdo dos registradores ecx, esi, edi e al ao final de cada segmento. Você pode assumir que string1 começa no endereço de memória 100 e string2 no endereço de memória 105. No problema D, além dos registradores, qual seria o conteúdo da string2?

- A-) ecx = 2; esi = ?; edi = 103; al = 'c'
- B-) ecx = ?; esi = 103; edi = ?; al = 'd'
- C-) ecx = 1; esi = 104; edi = 109; al = ?
- D-) ecx = 4; esi = 101; edi = 106; al = ?
    a string2 continua com mesmos valores não é alterada.
- E-) ecx = ?; esi = ?; edi = 105; al = 'd'
    a string 2 no final fica "dbcyz"