# Curso COBOL

Este repositório reúne um curso básico de programação em COBOL com exemplos, exercícios e desafios praticados em sala.

## Objetivo

Introduzir os conceitos iniciais da linguagem COBOL, incluindo:

- estrutura mínima de um programa COBOL;
- declaração de dados em `WORKING-STORAGE`;
- uso de `MOVE` para carregar textos em variáveis;
- uso de `DISPLAY` para imprimir informações na tela;
- organização de programas executáveis com `PROCEDURE DIVISION`;
- produção de pequenos sistemas bancários e formulários de cadastro.

## Configuração do ambiente

O projeto foi compilado e executado com o compilador GNU COBOL (`cobc`).

Versão detectada no ambiente:

```bash
cobc (GnuCOBOL) 3.1.2.0
```

### Instalação no Linux

Se o compilador ainda não estiver instalado:

```bash
sudo apt update
sudo apt install gnucobol
```

### Compilar um programa

Para compilar um arquivo COBOL:

```bash
cobc -x nome-do-programa.cbl
```

Para executar o binário gerado:

```bash
./nome-do-programa
```

## Estrutura do curso

```text
curso-cobol/
├── aula-01/                # primeiro exemplo e estrutura básica
├── aula-02/                # estrutura com DATA DIVISION e WORKING-STORAGE
├── exercicios/             # programas práticos propostos pelo curso
├── desafios/               # desafios com mini-sistemas e telas de saída
├── docs/                   # diretório reservado para documentação adicional
├── bin/                    # binários compilados gerados pelo GNU COBOL
└── README.md               # documentação principal do projeto
```

## Conteúdo atual do curso

### Aula 01

Diretório: `aula-01/`

Arquivo principal:

- [aula-01/hello.cbl](aula-01/hello.cbl) — exemplo mínimo com identificação, procedimento e `DISPLAY` de uma mensagem.

### Aula 02

Diretório: `aula-02/`

Arquivo principal:

- [aula-02/estrutura.cbl](aula-02/estrutura.cbl) — programa com `IDENTIFICATION DIVISION`, `ENVIRONMENT DIVISION`, `DATA DIVISION`, `WORKING-STORAGE SECTION`, `MOVE`, `DISPLAY` e `STOP RUN`.

### Exercícios

Diretório: `exercicios/`

Programas já implementados:

- [exercicios/ola-carolina.cbl](exercicios/ola-carolina.cbl) — primeiro programa com mensagens em sequência.
- [exercicios/aula-02-sistema.cbl](exercicios/aula-02-sistema.cbl) — exemplo de sistema bancário simples com cabeçalho e variáveis de texto.
- [exercicios/aula-03-funcionario.cbl](exercicios/aula-03-funcionario.cbl) — exemplo de cadastro com registro de funcionário contendo matrícula, nome, idade, cargo e salário.
- [exercicios/aula-03/produto.cbl](exercicios/aula-03/produto.cbl) — exemplo de cadastro de produto com código, descrição, quantidade, preço e estoque.

### Desafios

Diretório: `desafios/`

Programas já implementados:

- [desafios/desafio-01.cbl](desafios/desafio-01.cbl) — programa com saída de cadastro/estagiário em tela.
- [desafios/desafio-02.cbl](desafios/desafio-02.cbl) — desafio com layout de banco, opções de operação e textos em `WORKING-STORAGE`.

## Comandos básicos usados no curso

Alguns elementos recorrentes nos programas:

```cobol
IDENTIFICATION DIVISION.
PROGRAM-ID. NOME-DO-PROGRAMA.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 VARIAVEL PIC X(n).
PROCEDURE DIVISION.
    MOVE "TEXTO" TO VARIAVEL.
    DISPLAY VARIAVEL.
    STOP RUN.
```

## Conceitos novos estudados

### Registros e agrupamento de dados

O exercício de funcionário e o exemplo de produto introduziram o uso de estruturas de nível com registro:

```cobol
01 FUNCIONARIO.
   05 MATRICULA PIC 9(5).
   05 NOME      PIC X(30).
   05 IDADE     PIC 99.
   05 CARGO     PIC X(20).
   05 SALARIO   PIC 9(7)V99.
```

Esse padrão permite agrupar vários campos em uma unidade lógica do programa.

### Numerização com `PIC`

Além de `PIC X(n)` para textos, o curso já trabalha com campos numéricos:

- `PIC 99` para idade ou quantidade curta;
- `PIC 9(5)` para códigos ou estoques;
- `PIC 9(7)V99` para valores monetários com duas casas decimais.

### Layout de saída com `DISPLAY`

As telas dos programas usam linhas de separação e mensagens para sintetizar uma tela com layout de cadastro.

## Observações de estudo

- `PROGRAM-ID` identifica o nome do programa executável.
- `DATA DIVISION` define os dados usados no programa.
- `WORKING-STORAGE SECTION` guarda variáveis de memória.
- `PIC X(n)` representa uma área alfanumérica com tamanho `n`.
- `PIC 9(n)` representa um campo numérico com `n` dígitos.
- `PIC 9(n)V99` é um número com casas decimais implícitas.
- `MOVE` transfere texto ou números para uma variável.
- `DISPLAY` envia a informação para a saída padrão.
- `STOP RUN` encerra a execução do programa.

## Estado atual

O projeto contém programas em fase inicial de aprendizado, com foco em conceitos básicos de entrada e saída, variáveis, registros de dados e estruturas de programação COBOL. Os binários compilados são produzidos na pasta `bin/`.

