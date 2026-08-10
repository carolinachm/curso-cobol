# Aula 02 - Estrutura básica de um programa COBOL

## 1. Qual divisão identifica o programa?

A divisão responsável por identificar o programa é:

```cobol
IDENTIFICATION DIVISION.
```

Essa seção contém informações gerais sobre o programa, como o nome do programa e a descrição básica do código.

---

## 2. Qual comando identifica o nome do programa?

O comando usado para identificar o nome do programa é:

```cobol
PROGRAM-ID.
```

Exemplo:

```cobol
IDENTIFICATION DIVISION.
PROGRAM-ID. HELLO.
```

Nesse exemplo, o nome do programa é `HELLO`.

---

## 3. Em qual divisão normalmente declaramos variáveis?

As variáveis normalmente são declaradas na:

```cobol
DATA DIVISION.
```

A parte mais usada para isso é a área de armazenamento:

```cobol
WORKING-STORAGE SECTION.
```

Exemplo:

```cobol
DATA DIVISION.
WORKING-STORAGE SECTION.
01 NOME PIC X(30).
```

A `WORKING-STORAGE SECTION` serve para declarar campos e variáveis que o programa vai usar durante a execução.

---

## 4. Para que serve a `PROCEDURE DIVISION`?

A seção:

```cobol
PROCEDURE DIVISION.
```

contém a lógica do programa, ou seja, as instruções que o código executa.

Exemplo:

```cobol
PROCEDURE DIVISION.
    DISPLAY "Olá, Carolina!".
    STOP RUN.
```

É nessa divisão que aparecem comandos como:

- `DISPLAY`
- `MOVE`
- `IF`
- `ELSE`
- `PERFORM`
- `COMPUTE`
- `STOP RUN`

Em resumo:

- `DATA DIVISION` = define os dados que o programa possui;
- `PROCEDURE DIVISION` = define o que o programa faz com esses dados.

---

## 5. Qual a diferença entre `DATA DIVISION` e `PROCEDURE DIVISION`?

A diferença principal está na função de cada uma:

| Divisão | Função |
|--------|--------|
| `DATA DIVISION` | Declara os dados e variáveis utilizados pelo programa |
| `PROCEDURE DIVISION` | Contém as instruções e regras de processamento |

Exemplo:

```cobol
DATA DIVISION.
WORKING-STORAGE SECTION.
01 NOME PIC X(30).
```

Aqui estamos declarando uma variável.

Depois:

```cobol
PROCEDURE DIVISION.
    MOVE "Carolina" TO NOME.
    DISPLAY NOME.
    STOP RUN.
```

Aqui estamos usando a variável dentro da lógica do programa.

Uma boa forma de lembrar:

```text
DATA DIVISION
      ↓
"Quais dados eu tenho?"

PROCEDURE DIVISION
      ↓
"O que eu faço com esses dados?"
```

---

## 6. O que significa `01 MENSAGEM PIC X(30).`?

Essa linha:

```cobol
01 MENSAGEM PIC X(30).
```

define um campo chamado `MENSAGEM`, com capacidade para armazenar até 30 caracteres.

Podemos entender cada parte:

- `01` → nível do campo;
- `MENSAGEM` → nome da variável;
- `PIC X(30)` → campo alfanumérico com 30 posições.

Exemplo:

```cobol
01 MENSAGEM PIC X(30).
```

Esse campo pode armazenar textos como:

```text
"Olá, Carolina!"
```

ou:

```text
"Bem-vinda ao mundo COBOL!"
```

O ponto final `.` é importante porque encerra a declaração.

---

## 7. Para que serve `STOP RUN.`?

A instrução:

```cobol
STOP RUN.
```

indica que o programa deve encerrar a sua execução.

Exemplo:

```cobol
PROCEDURE DIVISION.
    DISPLAY "Olá, mundo!".
    STOP RUN.
```

O fluxo de execução fica assim:

```text
Inicia o programa
      ↓
DISPLAY "Olá, mundo!"
      ↓
STOP RUN
      ↓
Programa termina
```

---

## Resumo para decorar

Um programa COBOL básico pode ser organizado assim:

```cobol
IDENTIFICATION DIVISION.
PROGRAM-ID. HELLO.

DATA DIVISION.
WORKING-STORAGE SECTION.

01 MENSAGEM PIC X(30).

PROCEDURE DIVISION.
    MOVE "Olá, Carolina!" TO MENSAGEM.
    DISPLAY MENSAGEM.
    STOP RUN.
```

A anatomia do programa é:

```text
IDENTIFICATION DIVISION
        ↓
"Quem sou eu?"

DATA DIVISION
        ↓
"Quais dados tenho?"

PROCEDURE DIVISION
        ↓
"O que faço?"

STOP RUN
        ↓
"Termino a execução."
```
