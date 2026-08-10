# Introdução ao COBOL

COBOL (Common Business-Oriented Language) é uma linguagem de programação voltada para processamento de negócios, arquivos e relatórios.

## O que é COBOL?

COBOL foi criada para automatizar rotinas de empresas e ainda permanece presente em sistemas legados, especialmente em bancos, instituições financeiras e sistemas que precisam lidar com grandes volumes de dados.

A linguagem foi concebida para ser legível e próxima da linguagem humana, o que explica o uso de sentenças longas e blocos estruturados.

## Estrutura básica de um programa

Um programa COBOL simples tem a seguinte organização:

```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXEMPLO.

       ENVIRONMENT DIVISION.

       DATA DIVISION.

       WORKING-STORAGE SECTION.

       PROCEDURE DIVISION.
           DISPLAY "OLA, MUNDO!".
           STOP RUN.
```

### Explicação de cada parte

- `IDENTIFICATION DIVISION`: identifica o programa e a sua finalidade.
- `PROGRAM-ID`: informa o nome do programa executável.
- `ENVIRONMENT DIVISION`: descreve o ambiente no qual o programa funciona.
- `DATA DIVISION`: orienta a forma como o programa mantém os dados em memória.
- `WORKING-STORAGE SECTION`: é a área para dados internos e variáveis que o programa precisa manter durante a execução.
- `PROCEDURE DIVISION`: é a área de instruções executáveis, onde acontecem as ações do programa.

## Fluxo de execução

Um programa COBOL segue uma sequência lógica:

1. o programa é identificado;
2. os dados são declarados;
3. as variáveis são alimentadas;
4. as instruções de saída ou processamento são executadas;
5. o programa termina com `STOP RUN`.

## Comandos já estudados

### `DISPLAY`

A instrução `DISPLAY` mostra algo na saída padrão (console/terminal). Ela pode exibir:

- um texto literal;
- uma variável de texto;
- uma variável específica com etiqueta útil.

Exemplo:

```cobol
           DISPLAY "OLA, MUNDO!".
```

### `MOVE`

`MOVE` carrega um valor em uma variável. Em Cobol, o valor pode ser um literal, uma variável ou uma expressão com compatibilidade de tipo.

Exemplo:

```cobol
           MOVE "SISTEMA BANCARIO" TO TITULO.
```

### `STOP RUN`

`STOP RUN` encerra a execução do programa.

## Objetivo do primeiro contato

Nos primeiros exemplos, o foco está em entender como a linguagem organiza um programa, como usar a área de dados e como imprimir informações simples. A partir daí, o curso passa a trabalhar com textos, registros, campos numéricos e layouts de saída.
