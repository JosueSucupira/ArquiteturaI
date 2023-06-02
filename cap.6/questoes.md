# Resolução das Questões do capítulo 6

### 01- Dadas as seguintes declarações em linguagem de montagem, indique se estão corretas ou incorretas do ponto de vista da sintaxe. Se estiverem incorretas, indique o que está errado na declaração:

- a) Correto.
- b) Correto.
- c) Incorreto. Pois a instrução rotate não existe, o correto seria rol ou ror.
- d) Correto.
- e) Correto.
- f) Incorreto. Pois está fazendo dois acesso a memória.
- g) Correto.
- h) Incorreto. Pois a instrução lol não existe, o correto seri rol.
- i) Incorreto. Pois a instrução shift não existe, o correto seria shl ou shr.

### 02- Dadas as seguintes instruções aritméticas em C, implemente-as usando instruções de deslocamento aritmético, quando possível:

- a)
```assembly
mov eax, total
sar eax, 5
mov ebx, num
sub ebx, eax
mov answer, ebx
```

- b)
```assembly
mov eax, amount
add eax, number
sal eax, 2
mov resut, eax
```

- c)
```assembly
mov eax, y
sal eax, 3
mov ebx, z
sar ebx, 1
add eax, ebx
mov x, eax
```

- d)
```assembly
mov eax, a
sar eax, 4
mov ebx, b
mov ecx, b
sal ebx, 2
sal ecx, 1
add ebx, ecx
sub eax, ebx
mov a, eax
```

### 03- Escreva um segmento de código que pegue o conteúdo de eax, ebx, ecx e edx e os coloque na ordem inversa de edx, ecx, ebx e eax, usando apenas as instruções push e pop. Em outras palavras, eax deve conter o conteúdo de edx e vice-versa, etc.
```assembly
push eax
push ebx
push ecx
push edx

pop eax
pop ebx
pop ecx
pop edx
```