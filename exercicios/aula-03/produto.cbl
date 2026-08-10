       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRODUTO.
       *> Define a identificação do programa e o nome executável.

       ENVIRONMENT DIVISION.
       *> Declara o ambiente de execução do programa.

       DATA DIVISION.
       *> Define todas as áreas de dados utilizadas pelo programa.

       WORKING-STORAGE SECTION.
       *> Define a área de memória usada em tempo de execução.

       01 PRODUTO.
       *> Cria um registro principal para armazenar os dados do produto.
           05 CODIGO PIC 9(5).
           *> Guarda o código do produto com 5 dígitos numéricos.
           05 DESCRICAO PIC X(30).
           *> Guarda a descrição do produto com até 30 caracteres.
           05 QUANTIDADE PIC 99.
           *> Guarda a quantidade em estoque com 2 dígitos numéricos.
           05 PRECO PIC 9(7)V99.
           *> Guarda o preço do produto com 7 dígitos inteiros e2 cs dec
           05 ESTOQUE PIC 9(5).
           *> Guarda a quantidade em estoque com 5 dígitos numéricos.

       PROCEDURE DIVISION.
       *> Inicia o bloco principal com a sequência de comandos executáveis.

           MOVE 12345 TO CODIGO.
           *> Carrega o código do produto.
           MOVE "NOTEBOOK" TO DESCRICAO.
           *> Carrega a descrição do produto na variável alfanumérica.
           MOVE 10 TO QUANTIDADE.
           *> Carrega a quantidade disponível.
           MOVE 5000 TO PRECO.
           *> Carrega o preço do produto.
           MOVE 56 TO ESTOQUE.
           *> Carrega o estoque atual do produto.

           DISPLAY "===============================".
           *> Exibe uma linha de separação.
           DISPLAY "       PRODUTOS".
           *> Exibe o título do cadastro do produto.
           DISPLAY "===============================".
           *> Exibe uma linha de separação.
           DISPLAY "CODIGO : " CODIGO.
           *> Exibe o código do produto.
           DISPLAY "DESCRICAO   : " DESCRICAO.
           *> Exibe a descrição do produto.
           DISPLAY "QUANTIDADE  : " QUANTIDADE.
           *> Exibe a quantidade do produto.
           DISPLAY "PRECO  : " PRECO.
           *> Exibe o preço do produto.
           DISPLAY "ESTOQUE: " ESTOQUE.
           *> Exibe o estoque do produto.
           DISPLAY "===============================".
           *> Exibe uma linha final de separação.

           STOP RUN.
           *> Finaliza a execução do programa.
