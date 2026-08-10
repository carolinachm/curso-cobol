       IDENTIFICATION DIVISION.
       PROGRAM-ID. CADASTRO.

       ENVIRONMENT DIVISION.

       DATA DIVISION.

       WORKING-STORAGE SECTION.

          01 CLIENTE.
          05 CODIGO  PIC 9(05).
          05 NOME    PIC X(30).
          05 IDADE   PIC 99.
          05 SALARIO PIC 9(7)V99.

       PROCEDURE DIVISION.

           MOVE 12345 TO CODIGO.
           MOVE "CAROLINA" TO NOME.
           MOVE 43 TO IDADE.
           MOVE 5695.71 TO SALARIO.

           DISPLAY "===============================".
           DISPLAY "       CADASTRO CLIENTE".
           DISPLAY "===============================".
           DISPLAY "CODIGO : " CODIGO.
           DISPLAY "NOME   : " NOME.
           DISPLAY "IDADE  : " IDADE.
           DISPLAY "SALARIO: " SALARIO.
           DISPLAY "===============================".

           STOP RUN.