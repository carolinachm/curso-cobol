# Variáveis e PIC

Em COBOL, as variáveis são definidas na divisão de dados, em especial dentro de `DATA DIVISION` e `WORKING-STORAGE SECTION`.

## Declaração de uma variável

```cobol
       01 MENSAGEM PIC X(30).
```

Essa linha cria uma variável chamada `MENSAGEM` com capacidade para 30 caracteres. O nome `MENSAGEM` identifica a área de memória. O trecho `PIC X(30)` informa que o conteúdo é alfanumérico e ocupa 30 posições.

## O que significa `PIC`?

`PIC` é a cláusula de imagem/descrição do campo. Ela define o tipo e o formato do dado que a variável aceita.

### `PIC X(n)`

`PIC X(n)` representa um campo de texto alfanumérico com `n` posições.

Exemplo:

```cobol
       01 TITULO PIC X(20).
```

Esse campo reserve 20 caracteres para um título, uma frase ou uma palavra no programa.

### `PIC 9(n)`

`PIC 9(n)` representa um campo numérico com `n` dígitos.

Exemplo:

```cobol
       01 CODIGO PIC 9(5).
```

A variável receberá um número com cinco casas, por exemplo `12345`.

### `PIC 9(n)V99`

`PIC 9(7)V99` representa um campo numérico com parte inteira e duas casas decimais, usada para valores monetários.

Exemplo:

```cobol
       01 SALARIO PIC 9(7)V99.
```

Esse campo permite um valor como `0000569.71`, com duas casas decimais.

## Importância do tamanho

O tamanho do campo deve ser compatível com o valor que será movido para a variável.

Se o literal for maior que o campo, o COBOL pode:

- truncar o texto;
- gerar aviso ou erro em compilação;
- deixar a saída visual desalinhada.

Por isso, `PIC` e o conteúdo movido precisam ser compatíveis.

## Uso com `MOVE`

```cobol
       MOVE "OLA, MUNDO COBOL!" TO MENSAGEM.
```

A instrução `MOVE` copia o literal para a variável criada. Em outro exemplo, também foi usada para carregar dados de cadastro em vários campos.

## Observação prática

Em um programa de sistema bancário, `CABECALHO`, `TITULO`, `CLIENTE` e `SALDO` precisam ser campos compatíveis com o texto que vai ser exibido. Quando a declaração tem tamanho pequeno, os textos devem caber nele. Se o texto for 30 e o campo for 16, o valor será reduzido ou sairão avisos de truncamento.
