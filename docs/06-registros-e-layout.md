# Registros, Funcionários e Produtos

A partir da aula de registros, o curso passou a trabalhar com estruturas de dados mais próximas de um cadastro.

## Registro em COBOL

Em COBOL, um `registro` é um agrupamento de campos relacionados entre si, e o nível de declaração mais alto (`01`) identifica a estrutura principal.

A organização de um registro fica assim:

```cobol
       01 REGISTRO.
           05 CAMPO1 PIC X(10).
           05 CAMPO2 PIC 9(5).
```

O nível `01` nomeia o conjunto principal, enquanto os níveis abaixo representam os campos internos. Cada subcampo herda a ideia de organização do registro.

## Registro de funcionário

O arquivo de funcionário organiza os dados do funcionário em um único bloco:

```cobol
       01 FUNCIONARIO.
           05 MATRICULA PIC 9(5).
           05 NOME      PIC X(30).
           05 IDADE     PIC 99.
           05 CARGO     PIC X(20).
           05 SALARIO   PIC 9(7)V99.
```

### Explicação do exemplo

- `MATRICULA` guarda a identificação do funcionário com 5 dígitos.
- `NOME` guarda o nome com texto alfanumérico até 30 caracteres.
- `IDADE` é uma variável de texto numérico com dois dígitos.
- `CARGO` guarda a função.
- `SALARIO` é um valor monetário com duas casas decimais.

## Registro de produto

O programa de produto trabalha com um nível de dados específico para o cadastro de itens:

```cobol
       01 PRODUTO.
           05 CODIGO PIC 9(5).
           05 DESCRICAO PIC X(30).
           05 QUANTIDADE PIC 99.
           05 PRECO PIC 9(7)V99.
           05 ESTOQUE PIC 9(5).
```

### Explicação do exemplo

- `CODIGO` representa o identificador do produto.
- `DESCRICAO` armazena o texto descritivo do produto.
- `QUANTIDADE` guarda o número em estoque.
- `PRECO` representa um valor monetário.
- `ESTOQUE` guarda a disponibilidade de itens no setor.

## Importância da dimensão dos campos

O processo de cadastro exige que os campos recebam valores que cabem no tamanho declarado.

Exemplo:

- `NOME PIC X(30)` pode receber até 30 caracteres.
- `PRECO PIC 9(7)V99` precisa receber um valor com duas casas decimais.

Se um valor demorar a caber, pode haver erro ou visual truncado.

## Saída em tela

Os programas usam `DISPLAY` para montar um layout visual com títulos e linhas separadoras.

Exemplo:

```cobol
           DISPLAY "===============================".
           DISPLAY "       PRODUTOS".
           DISPLAY "===============================".
```

O programa imprime primeiro uma linha de separação, depois um título e depois outra linha de separação. Isso produz um formato de console mais organizado.

## Conceitos de estudo

- agrupamento de dados em nível hierárquico;
- uso de `PIC` numérico e alfanumérico;
- correção de tamanho dos campos;
- movimentação de valores com `MOVE`;
- apresentação de registros em uma tela de terminal;
- representação de dados em uma sequência visual do programa.
