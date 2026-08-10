# Aula 01 - Introdução ao GnuCOBOL

## 1. O que é o GnuCOBOL?

O GnuCOBOL é um compilador COBOL de código aberto.

Ele permite escrever programas em COBOL e transformá-los em programas executáveis pelo sistema operacional.

O fluxo básico de desenvolvimento é este:

```text
Código COBOL
    ↓
arquivo .cbl
    ↓
GnuCOBOL (cobc)
    ↓
programa executável
```

Exemplo:

```text
hello.cbl
   ↓
cobc
   ↓
hello
```

---

## 2. O que é o comando `cobc`?

O comando `cobc` é a interface de linha de comando do compilador GnuCOBOL.

Ele é usado no terminal para:

- compilar programas COBOL;
- gerar executáveis;
- verificar erros de compilação;
- gerar arquivos intermediários;
- executar etapas do processo de compilação.

Exemplo:

```bash
cobc -x hello.cbl
```

Esse comando indica ao GnuCOBOL:

> "Compile este arquivo COBOL e gere um executável."

---

## 3. Qual a diferença entre `hello.cbl` e `hello`?

Essa diferença é bastante importante.

### `hello.cbl`

É o arquivo-fonte COBOL, escrito por você.

Exemplo de conteúdo:

```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO.

       PROCEDURE DIVISION.
           DISPLAY "Hello, World!".
           STOP RUN.
```

A extensão `.cbl` indica que o arquivo contém código na linguagem COBOL.

### `hello`

É o programa executável gerado pelo compilador.

Depois de executar:

```bash
cobc -x hello.cbl
```

Você terá, no diretório, arquivos como:

```text
hello.cbl
hello
```

Para executar o programa compilado:

```bash
./hello
```

### Comparação rápida

| Arquivo | Função |
|--------|--------|
| `hello.cbl` | Código-fonte COBOL |
| `hello` | Programa executável |

Uma forma simples de lembrar:

- `.cbl` = código que eu escrevi;
- sem extensão = programa que o sistema executa.

---

## 4. Para que serve `cobc -x hello.cbl`?

Esse comando compila o programa COBOL e gera um executável a partir do arquivo fonte.

```bash
cobc -x hello.cbl
```

Podemos dividir esse comando em partes:

- `cobc` → compilador GnuCOBOL;
- `-x` → opção para gerar um executável;
- `hello.cbl` → arquivo-fonte COBOL.

Depois da compilação, o fluxo fica assim:

```text
hello.cbl
   ↓
cobc -x
   ↓
hello
```

Se você listar o diretório com `ls`, poderá encontrar:

```text
hello.cbl
hello
```

---

## 5. Como executar o programa compilado?

Para executar o programa compilado usamos:

```bash
./hello
```

O `./` significa:

> "Execute o arquivo `hello` que está neste diretório."

Então o processo completo é:

```bash
cobc -x hello.cbl
./hello
```

Exemplo de saída:

```text
$ cobc -x hello.cbl
$ ./hello
Hello, World!
```

⚠️ No Linux, simplesmente escrever `hello` normalmente não funciona, porque o diretório atual nem sempre está no `PATH`.

Por isso usamos:

```bash
./hello
```

---

## 6. Qual é a função da extensão COBOL no VS Code?

A extensão COBOL no VS Code ajuda o editor a trabalhar com código COBOL.

Ela pode fornecer recursos como:

- destaque de sintaxe;
- indentação;
- reconhecimento da estrutura do código COBOL;
- navegação pelo código;
- sugestões;
- diagnóstico de erros;
- integração com ferramentas de desenvolvimento, dependendo da extensão instalada.

Por exemplo, ela pode reconhecer este trecho:

```cobol
IDENTIFICATION DIVISION.
PROGRAM-ID. HELLO.

PROCEDURE DIVISION.
    DISPLAY "Hello".
    STOP RUN.
```

E destacar diferentes partes do código.

Mas existe uma diferença fundamental:

```text
Extensão COBOL
      ↓
ajuda a editar código

GnuCOBOL / cobc
      ↓
compila código
```

---

## 7. O VS Code é o compilador COBOL?

Não.

O VS Code é um editor de código e ambiente de desenvolvimento.

Ele permite criar e editar arquivos como `hello.cbl`, mas quem compila o COBOL é o GnuCOBOL, por meio do comando `cobc`.

Podemos visualizar o fluxo assim:

```text
                 VS Code
                 ┌─────────────┐
                 │             │
                 │ hello.cbl   │
                 │             │
                 └──────┬──────┘
                        │
                        │ código-fonte
                        ▼
                 ┌──────────┐
                 │ GnuCOBOL │
                 │   cobc   │
                 └─────┬─────┘
                       │
                       │ compilação
                       ▼
                 ┌─────────┐
                 │  hello  │
                 │executável│
                 └────┬────┘
                      │
                      ▼
                   ./hello
```

---

## Resumo para decorar

- `COBOL` é a linguagem.
- `GnuCOBOL` é o compilador.
- `cobc` é o comando usado para compilar.
- `VS Code` é o editor/ambiente de desenvolvimento.
- `hello.cbl` é o código-fonte.
- `hello` é o executável.
- `./hello` executa o programa.

O ciclo de trabalho que você usará com frequência no curso será:

1. Escrever o código em `hello.cbl`.
2. Compilar com `cobc -x hello.cbl`.
3. Executar com `./hello`.

