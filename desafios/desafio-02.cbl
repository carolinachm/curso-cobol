       IDENTIFICATION DIVISION.
       PROGRAM-ID. DESAFIO-02.
       *> Define a identificação e o nome do programa.

       ENVIRONMENT DIVISION.
       *> Declara o ambiente de execução.

       DATA DIVISION.
       *> Define as variáveis e estruturas de dados do programa.

       WORKING-STORAGE SECTION.
       *> Área de armazenamento temporário para dados internos.

       01 CABECALHO PIC X(35).
       01 TITULO    PIC X(20).
       01 CLIENTE   PIC X(30).
       01 AGENCIA   PIC X(30).
       01 CONTA     PIC X(30).
       01 SALDO     PIC X(30).

       01 TITULO2   PIC X(20).
       01 CONSULTAR PIC X(25).
       01 DEPOSITAR PIC X(20).
       01 SACAR     PIC X(20).
       01 SAIR      PIC X(20).

       PROCEDURE DIVISION.
       *> Bloco principal com as instruções executáveis.

           MOVE "===================================" TO CABECALHO.
           MOVE "BANCO COBOL" TO TITULO.
           MOVE "CLIENTE: " TO CLIENTE.
           MOVE "AGENCIA: " TO AGENCIA.
           MOVE "CONTA: " TO CONTA.
           MOVE "SALDO: " TO SALDO.

           MOVE "OPERACOES" TO TITULO2.
           MOVE "1 - CONSULTAR SALDO" TO CONSULTAR.
           MOVE "2 - DEPOSITAR" TO DEPOSITAR.
           MOVE "3 - SACAR" TO SACAR.
           MOVE "4 - SAIR" TO SAIR.

           DISPLAY CABECALHO.
           DISPLAY TITULO.
           DISPLAY CABECALHO.
           DISPLAY CLIENTE.
           DISPLAY AGENCIA.
           DISPLAY CONTA.
           DISPLAY SALDO.
           DISPLAY CABECALHO.

           DISPLAY CABECALHO.
           DISPLAY TITULO2.
           DISPLAY CONSULTAR.
           DISPLAY DEPOSITAR.
           DISPLAY SACAR.
           DISPLAY SAIR.

           STOP RUN.

       *> Encerra a execução do programa.