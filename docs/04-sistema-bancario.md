# Sistema Bancário Simples

O exercício de sistema bancário usa vários campos de texto em `WORKING-STORAGE` para montar uma tela simples do terminal.

## Variáveis do sistema

Os dados principais de exemplo são:

```cobol
       01 CABECALHO PIC X(30).
       01 TITULO    PIC X(16).
       01 CLIENTE   PIC X(17).
       01 CONTA     PIC X(12).
       01 SALDO     PIC X(14).
```

### Explicação dos campos

- `CABECALHO`: linha visual de separação para a interface.
- `TITULO`: texto principal do sistema bancário.
- `CLIENTE`: campo usado para mostrar um cliente cadastrado.
- `CONTA`: identificador da conta.
- `SALDO`: campo com o montante disponível.

## Fluxo do programa

O programa executa as instruções nesta ordem:

1. realiza `MOVE` para carregar textos nos campos;
2. chama `DISPLAY` para imprimir cada dado em uma linha;
3. encerra com `STOP RUN`.

## Como isso se encaixa no aprendizado

Esse exemplo incentiva o uso de:

- `WORKING-STORAGE` para a área de memória;
- `PIC X(n)` para textos de saída;
- `DISPLAY` como instrução de interface gráfica de console;
- `MOVE` como forma de popular os campos do programa.

## Observação importante

A escolha do tamanho dos campos precisa casar com o texto exibido. Por exemplo, se o texto de `TITULO` for maior do que `PIC X(16)`, o campo pode ficar insuficiente. Isso é um motivo comum de truncamento ou conflito de compilação.
