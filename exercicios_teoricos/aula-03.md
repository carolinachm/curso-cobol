# Aula 03 - Tipos de dados e estruturas em COBOL

## 1. O que representa `PIC X(30)`?

A definição:

```cobol
PIC X(30)
```

representa um campo alfanumérico com `30` posições.

- `X` indica caracteres alfanuméricos;
- `(30)` indica a quantidade de posições do campo.

Exemplo:

```cobol
01 NOME PIC X(30).
```

Esse campo pode armazenar textos como:

```text
CAROLINA
JOAO
MARIA SILVA
```

---

## 2. O que representa `PIC 9(05)`?

A definição:

```cobol
PIC 9(05)
```

representa um campo numérico com `5` posições.

- `9` representa um dígito numérico;
- `(05)` indica que o campo possui 5 posições.

Exemplo:

```cobol
01 CODIGO PIC 9(05).
```

Esse campo pode armazenar valores como:

```text
00001
12345
98765
```

> Observação: `PIC 9(05)` descreve cinco posições numéricas. A forma de apresentação dos zeros à esquerda depende do uso do campo e do contexto da operação.

---

## 3. Qual é a finalidade do `V` em `PIC 9(7)V99`?

O `V` representa uma posição decimal implícita.

Exemplo:

```cobol
PIC 9(7)V99
```

Esse formato significa:

- `7` dígitos antes da casa decimal;
- `2` dígitos depois da casa decimal.

Por exemplo:

```text
1234567.89
```

No campo, o ponto decimal não é armazenado como caractere. Ele é interpretado como uma casa decimal implícita.

A ideia é:

```text
9(7)   V   99
 ↑      ↑
 inteiro  decimal
```

---

## 4. Para que serve o `S`?

O `S` indica que o campo numérico pode armazenar sinal, ou seja, pode conter valores positivos ou negativos.

Exemplo:

```cobol
01 SALDO PIC S9(5)V99.
```

Esse campo pode representar:

```text
+12345.67
-12345.67
```

Em outras palavras:

- `9` → número sem sinal explícito;
- `S9` → número com sinal.

---

## 5. Qual a diferença entre declarar um campo e usar `VALUE`?

Primeiro, uma declaração simples:

```cobol
01 NOME PIC X(30).
```

Isso apenas declara o campo, mas não define um valor inicial.

Agora, uma declaração com valor inicial:

```cobol
01 NOME PIC X(30) VALUE "CAROLINA".
```

Esse trecho declara o campo e já inicializa o conteúdo com o valor informado.

O efeito é este:

```text
01 NOME PIC X(30).
NOME
└── sem valor inicial definido
```

em comparação com:

```text
01 NOME PIC X(30) VALUE "CAROLINA".
NOME
└── "CAROLINA"
```

O `VALUE` é usado para definir um valor inicial no campo.

---

## 6. O que faz `MOVE "CAROLINA" TO NOME.`?

A instrução:

```cobol
MOVE "CAROLINA" TO NOME.
```

significa:

> Coloque o valor `"CAROLINA"` dentro da variável `NOME`.

É equivalente à ideia de atribuição de valor em outras linguagens.

Por exemplo, em Java ficaria algo como:

```java
nome = "CAROLINA";
```

Em COBOL, a forma é:

```cobol
MOVE "CAROLINA" TO NOME.
```

Então a lógica é:

```text
antes:
NOME → vazio

      ↓ MOVE

depois:
NOME → "CAROLINA"
```

---

## 7. O que representa essa estrutura?

```cobol
01 CLIENTE.
   05 CODIGO PIC 9(05).
   05 NOME   PIC X(50).
```

Essa estrutura representa um grupo de dados chamado `CLIENTE`, composto por outros campos.

Podemos visualizar assim:

```text
CLIENTE
│
├── CODIGO
│   └── 5 dígitos numéricos
│
└── NOME
    └── 50 caracteres
```

A linha:

```cobol
01 CLIENTE.
```

representa o nível mais alto do grupo.

As linhas:

```cobol
05 CODIGO PIC 9(05).
05 NOME   PIC X(50).
```

são os itens subordinados ao grupo `CLIENTE`.

Assim, a leitura fica:

> `CLIENTE` possui `CODIGO` e `NOME`.

---

## Como memorizar essa estrutura?

```cobol
01 CLIENTE.
   05 CODIGO PIC 9(05).
   05 NOME   PIC X(50).
```

Essa estrutura cria uma organização de dados que pode ser entendida como:

```text
CLIENTE
   ↓
 ┌───────────────┐
 │ CODIGO        │ → 5 números
 │ NOME          │ → 50 caracteres
 └───────────────┘
```

---

## Resumo rápido do `PIC`

| Símbolo | Significado |
|---------|-------------|
| `X` | caractere ou alfanumérico |
| `9` | dígito numérico |
| `V` | decimal implícito |
| `S` | sinal positivo/negativo |
| `(30)` | quantidade de posições |
| `VALUE` | valor inicial |

Exemplo combinando os conceitos:

```cobol
01 PRODUTO.
   05 CODIGO PIC 9(05).
   05 DESCRICAO PIC X(30).
   05 PRECO PIC S9(7)V99.
```

Esse registro poderia representar:

```text
PRODUTO
├── CODIGO      → 12345
├── DESCRICAO   → "TECLADO MECANICO"
└── PRECO       → 159.90
```
