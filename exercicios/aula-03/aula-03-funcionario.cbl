       IDENTIFICATION DIVISION.
       PROGRAM-ID. FUNCIONARIO.
       *> Define a identificação do programa e o nome executável.

       ENVIRONMENT DIVISION.
       *> Declara o ambiente de execução do programa.

       DATA DIVISION.
       *> Define todas as áreas de dados utilizadas pelo programa.

       WORKING-STORAGE SECTION.
       *> Define a área de memória usada em tempo de execução.

       01 FUNCIONARIO.
       *> Cria um registro principal para armazenar os dados do funcionário.
           05 MATRICULA PIC 9(5).
           *> Guarda a matrícula com 5 dígitos numéricos.
           05 NOME      PIC X(30).
           *> Guarda o nome com até 30 caracteres alfanuméricos.
           05 IDADE     PIC 99.
           *> Guarda a idade com 2 dígitos numéricos.
           05 CARGO     PIC X(20).
           *> Guarda o cargo com até 20 caracteres.
           05 SALARIO   PIC 9(7)v99.
           *> Guarda o salário com 7 dígitos inteiros e 2 casas decimais.

       PROCEDURE DIVISION.
       *> Inicia o bloco principal com a sequência de comandos executáveis.

           MOVE 12345 TO MATRICULA.
           *> Carrega o valor numérico 12345 para a matrícula.
           MOVE "CAROLINA" TO NOME.
           *> Carrega o nome do funcionário na variável alfanumérica.
           MOVE 43 TO IDADE.
           *> Carrega a idade com 2 dígitos.
           MOVE "ANALISTA" TO CARGO.
           *> Carrega o cargo do funcionário.
           MOVE 5695.71 TO SALARIO.
           *> Carrega o salário com duas casas decimais.

           DISPLAY "===============================".
           *> Exibe uma linha de separação.
           DISPLAY "       CADASTRO FUNCIONARIO".
           *> Exibe o título do cadastro no centro.
           DISPLAY "===============================".
           *> Exibe uma linha de separação.
           DISPLAY "CODIGO : " MATRICULA.
           *> Exibe a matrícula já carregada.
           DISPLAY "NOME   : " NOME.
           *> Exibe o nome contido no registro.
           DISPLAY "IDADE  : " IDADE.
           *> Exibe a idade numerada.
           DISPLAY "CARGO  : " CARGO.
           *> Exibe o cargo do funcionário.
           DISPLAY "SALARIO: " SALARIO.
           *> Exibe o valor do salário com casas decimais.
           DISPLAY "===============================".
           *> Exibe uma linha final de separação.

           STOP RUN.
           *> Finaliza a execução do programa.