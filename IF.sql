
DROP TABLE TABELA_TESTE 
create table TABELA_TESTE (ID VARCHAR (10));

IF OBJECT_ID('TABELA_TESTE', 'U') IS NOT NULL DROP TABLE TABELA_TESTE; 
CREATE TABLE TABELA_TESTE (ID VARCHAR (10));



IF OBJECT_ID('TABELA_TESTE', 'U') IS NULL CREATE TABLE TABELA_TESTE (ID VARCHAR (10));

--_____________________________________________________________________________________________________________________________-
--DESAFIO
--Nessa aula estamos aprendendo como aplicar o SCRIPT. Dessa forma, verifique o SCRIPT abaixo:

DECLARE @IDADE_ALUNO INT;
DECLARE @FORMADO_INGLES BIT;
DECLARE @FORMADO_ALEMAO BIT;

SET @IDADE_ALUNO = 17;
SET @FORMADO_INGLES = 1;
SET @FORMADO_ALEMAO = 0;

IF ((@IDADE_ALUNO >= 18 OR @FORMADO_INGLES = 1) OR (@IDADE_ALUNO < 18 AND @FORMADO_ALEMAO = 1))
  PRINT 'EXPRESSAO VERDADEIRA';
ELSE
  PRINT 'EXPRESSAO FALSA';

--Nessa situação, o resultado desse SCRIPT será 'EXPRESSAO VERDADEIRA' ou 'EXPRESSAO FALSA' ?

--EXPRESSAO VERDADEIRA