# Procedure Division

A `PROCEDURE DIVISION` é a parte do programa responsável pelas instruções executáveis. É o corpo do programa: o lugar onde a lógica efetivamente age sobre os valores cadastrados e exibidos em tela.

## Função

Aqui são executadas ações como:

- mover textos para variáveis;
- exibir informações na tela;
- carregar números a partir de literais;
- controlar o encerramento do programa.

## Estrutura básica

```cobol
       PROCEDURE DIVISION.

           MOVE "SISTEMA BANCARIO" TO TITULO.
           DISPLAY TITULO.

           STOP RUN.
```

## Sequência de execução

Em um programa COBOL, o fluxo é linear, ou seja, cada instrução é executada em sequência. O que aparece antes em `PROCEDURE DIVISION` é realizado primeiro e depois as próximas instruções se seguem.

## Operadores e instruções importantes

### `MOVE`

`MOVE` é a instrução usada para copiar valores de uma origem para um alvo.

O valor de origem pode ser:

- um literal textual;
- um número explícito;
- uma variável já declarada;
- uma estrutura de dados.

Exemplo:

```cobol
           MOVE "NOTEBOOK" TO DESCRICAO.
           MOVE 10 TO QUANTIDADE.
```

### `DISPLAY`

`DISPLAY` envia uma informação para a saída padrão. Ele é usado principalmente para imprimir mensagens, cabeçalhos e campos de dados.

```cobol
           DISPLAY "CODIGO : " CODIGO.
```

### `STOP RUN`

`STOP RUN` finaliza a execução do programa. Na prática, é o comando que encerra a rotina principal.

## Relacionamento com `WORKING-STORAGE`

Os dados usados em `PROCEDURE DIVISION` precisam estar adequadamente declarados em `WORKING-STORAGE SECTION` e com tamanhos corretos. Se um campo fizer 30 caracteres, e um `MOVE` tentar carregar uma string maior, pode haver truncamento.

## Exemplo prático de fluxo

No programa de produto, o fluxo atual é:

1. declarar o registro do produto;
2. mover o código, descrição, quantidade, preço e estoque;
3. exibir as informações no terminal;
4. finalizar com `STOP RUN`.
