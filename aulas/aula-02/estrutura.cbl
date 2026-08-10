       IDENTIFICATION DIVISION.
       PROGRAM-ID. ESTRUTURA.
       *>Define a identificação e o nome do programa.

       ENVIRONMENT DIVISION.
       *>Declara o ambiente de execução.
       *>Neste exemplo, não há configuração especial.

       DATA DIVISION.
       *>Define as variáveis e estruturas de dados do programa.

       WORKING-STORAGE SECTION.
       *>Área de armazenamento temporário para dados internos.

       01 MENSAGEM PIC X(30).
       *>Cria uma variável chamada MENSAGEM com 30 caracteres.

       PROCEDURE DIVISION.
       *>Bloco principal com as instruções executáveis.

           MOVE "OLA, MUNDO COBOL!" TO MENSAGEM.
           *>Copia a mensagem literal para a variável MENSAGEM.

           DISPLAY MENSAGEM.
           *>Exibe o conteúdo da variável na tela.

           STOP RUN.
           *>Encerra a execução do programa.