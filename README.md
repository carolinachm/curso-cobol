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

- `hello.cbl` — exemplo mínimo com identificação, procedimento e `DISPLAY` de uma mensagem.

### Aula 02

Diretório: `aula-02/`

Arquivo principal:

- `estrutura.cbl` — programa com `IDENTIFICATION DIVISION`, `ENVIRONMENT DIVISION`, `DATA DIVISION`, `WORKING-STORAGE SECTION`, `MOVE`, `DISPLAY` e `STOP RUN`.

### Exercícios

Diretório: `exercicios/`

Programas já implementados:

- `ola-carolina.cbl` — primeiro programa com mensagens em sequência.
- `aula-02-sistema.cbl` — exemplo de sistema bancário simples com cabeçalho e variáveis de texto.

### Desafios

Diretório: `desafios/`

Programas já implementados:

- `desafio-01.cbl` — programa com saída de cadastro/estagiário em tela.
- `desafio-02.cbl` — desafio com layout de banco, opções de operação e textos em `WORKING-STORAGE`.

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

## Observações de estudo

- `PROGRAM-ID` identifica o nome do programa executável.
- `DATA DIVISION` define os dados usados no programa.
- `WORKING-STORAGE SECTION` guarda variáveis de memória.
- `PIC X(n)` representa uma área alfanumérica com tamanho `n`.
- `MOVE` transfere texto de um literal para uma variável.
- `DISPLAY` envia a informação para a saída padrão.
- `STOP RUN` encerra a execução do programa.

## Estado atual

O projeto contém programas em fase inicial de aprendizado, com foco em conceitos básicos de entrada e saída, variáveis e estruturas de programação COBOL. Os binários compilados são produzidos na pasta `bin/`.

