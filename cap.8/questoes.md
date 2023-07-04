# Resolução das Questões do capítulo 8

### 01-) Dadas as seguintes instruções de linguagem assembly, indique se elas estão sintaticamente corretas ou incorretas. Se estiverem incorretas, indique o que há de errado na instrução:
- A-) Correto.
- B-) Correto.
- C-) Correto.
- D-) Correto.
- E-) Correto.
- F-) Incorreto, pois essa instrução requer dois acesso a memória.

### 02-) Dado o conteúdo da seguinte localização de memória, o que está armazenado no registro eax no final de cada segmento?
- A-) 5
- B-) 200
- C-) 200
- D-) 204
- E-) 200
- F-) 5
- G-) 12
- H-) 14

### 03-) Implemente as seguintes instruções em C usando linguagem assembly. Assuma que todas as variáveis são declaradas como "sdword":
- A-) 
```assembly
mov num+0,1
```
- B-) 
```assembly
lea esi, x+4
lea edi, x+8
mov eax, [edi]
mov [esi], eax
```
- C-)
```assembly
mov ebx, i
sal ebx, 2
mov eax, y[ebx]
mov y[ebx]+4, eax
```

### 04- Dado as declarações abaixo, indique o que seria armazenado no registro eax para cada uma das seguintes instruções. Observe que o array é do tipo sword, não sdword.
- A) 5.
- B) 20.
- C) 10.
- D) 40.
- E) 3.
- F) 6.