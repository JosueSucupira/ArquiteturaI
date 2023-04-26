# Resolução capítulo 2

### 01 - Indique se as seguintes afirmações são sintaticamente corretas ou incorretas. Se estiverem incorretas, indique o que está errado na afirmação:

- a) Correto.
- b) Incorreto, pois em vez de utilizar o "/n", utilizar o "0Ah" e estar fora do "%s%d".
- c) Incorreto, pois não está correto o uso da diretiva ADDR no number.
- d) Correto.
- e) Incorreto, pois em vez de utilizar "\n", utilizar o "0Ah".

### 02 - Descartando a suposição de que a seção .data esteja configurada corretamente, qual é o problema lógico do seguinte segmento de código? Como poderia ser reescrito para evitar a dificuldade?
```assembly
    mov num1,5
    mov eax,num1
    mov num2,eax
    INVOKE printf, ADDR msg1fmt, ADDR msg1, num2
```
### 03- Dado o seguinte programa MASM, o que será exibido na tela? Certifique-se de alinhar tudo corretamente. Use a letra minúscula "b" para representar um espaço em branco e as palavras "blank line" para representar uma linha em branco.
``` 
    xb=b1byb=b2
    blank line
    blank line
    z=3
```

### 04- Dado o seguinte programa MASM, o que será exibido na tela? Certifique-se de alinhar tudo corretamente. Use a letra minúscula "b" para representar um espaço em branco e as palavras "blank line" para representar uma linha em branco.
```
    blank line
    Thebfirstbnumberbisb5,bbutbthebsecondbnumberbisb7,
    blank line
    whilebthebthirdbnumberbisb11
    blank line
```

