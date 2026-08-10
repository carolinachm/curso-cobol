       IDENTIFICATION DIVISION.
       PROGRAM-ID. AULA-02-SISTEMA.
       *> Define a identificação e o nome do programa.

       ENVIRONMENT DIVISION.
       *> Declara o ambiente de execução.

       DATA DIVISION.
       *> Define as variáveis e estruturas de dados do programa.

       WORKING-STORAGE SECTION.
       *> Área de armazenamento temporário para dados internos.

       01 CABECALHO PIC X(30).
       01 TITULO    PIC X(16).
       01 CLIENTE   PIC X(17).
       01 CONTA     PIC X(12).
       01 SALDO     PIC X(14).

       PROCEDURE DIVISION.
       *> Bloco principal com as instruções executáveis.

           MOVE "==============================" TO CABECALHO.
           MOVE "SISTEMA BANCARIO" TO TITULO.
           MOVE "CLIENTE: CAROLINA" TO CLIENTE.
           MOVE "CONTA: 12345" TO CONTA.
           MOVE "SALDO: 1500.00" TO SALDO.

           DISPLAY CABECALHO.
           DISPLAY TITULO.
           DISPLAY CABECALHO.
           DISPLAY CLIENTE.
           DISPLAY CONTA.
           DISPLAY SALDO.
           DISPLAY CABECALHO.

           STOP RUN.
       *> Encerra a execução do programa.