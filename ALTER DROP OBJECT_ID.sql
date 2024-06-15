-- Fun��o que concatena o endere�o do cliente

SELECT * FROM [TABELA DE CLIENTES]

--observamos que temos o campo "ENDERECO 1", al�m de "BAIRRO", "CIDADE", "ESTADO" e "CEP", todos separados. Queremos uma fun��o na qual, 
--passando esses par�metros, temos como retorno o endere�o completo.

CREATE FUNCTION EnderecoCompleto
(@ENDERECO VARCHAR (100),
@BAIRRO VARCHAR (50),
@CIDADE VARCHAR (20),
@ESTADO VARCHAR (2),
@CEP VARCHAR (20))
RETURNS VARCHAR (250)
AS
BEGIN
  DECLARE @ENDERECO_COMPLETO VARCHAR (250)
  SET @ENDERECO_COMPLETO = @ENDERECO + ' - ' + @BAIRRO + ' - ' + @CIDADE + ' - ' + @ESTADO + ' - ' + @CEP
  RETURN @ENDERECO_COMPLETO
END;
SELECT CPF, [dbo].[EnderecoCompleto]([ENDERECO 1], BAIRRO, CIDADE, ESTADO, CEP) AS ENDERECO_COMPLETO
FROM [TABELA DE CLIENTES]

--ALTERANDO A FUNCAO

ALTER FUNCTION EnderecoCompleto
(@ENDERECO VARCHAR (100),
@BAIRRO VARCHAR (50),
@CIDADE VARCHAR (20),
@ESTADO VARCHAR (2),
@CEP VARCHAR (20))
RETURNS VARCHAR (250)
AS
BEGIN
  DECLARE @ENDERECO_COMPLETO VARCHAR (250)
  SET @ENDERECO_COMPLETO = @ENDERECO + '  ' + @BAIRRO + '  ' + @CIDADE + '  ' + @ESTADO + ' , ' + @CEP
  RETURN @ENDERECO_COMPLETO
END;

SELECT CPF, [dbo].[EnderecoCompleto]([ENDERECO 1], BAIRRO, CIDADE, ESTADO, CEP) AS ENDERECO_COMPLETO
FROM [TABELA DE CLIENTES]

--EXCLUINDO FUNCAO

CREATE FUNCTION EnderecoCompleto2
(@ENDERECO VARCHAR (100),
@BAIRRO VARCHAR (50),
@CIDADE VARCHAR (20),
@ESTADO VARCHAR (2),
@CEP VARCHAR (20))
RETURNS VARCHAR (250)
AS
BEGIN
  DECLARE @ENDERECO_COMPLETO VARCHAR (250)
  SET @ENDERECO_COMPLETO = @ENDERECO + ' - ' + @BAIRRO + ' - ' + @CIDADE + ' - ' + @ESTADO + ' - ' + @CEP
  RETURN @ENDERECO_COMPLETO
END;

CREATE FUNCTION EnderecoCompleto3
(@ENDERECO VARCHAR (100),
@BAIRRO VARCHAR (50),
@CIDADE VARCHAR (20),
@ESTADO VARCHAR (2),
@CEP VARCHAR (20))
RETURNS VARCHAR (250)
AS
BEGIN
  DECLARE @ENDERECO_COMPLETO VARCHAR (250)
  SET @ENDERECO_COMPLETO = @ENDERECO + ' - ' + @BAIRRO + ' - ' + @CIDADE + ' - ' + @ESTADO + ' - ' + @CEP
  RETURN @ENDERECO_COMPLETO
END;



DROP FUNCTION [dbo].[EnderecoCompleto3]

--Usamos a fun��o OBJECT_ID(), que tamb�m usamos anteriormente para testar se uma tabela existe, por exemplo. 
--Nesse caso, testamos para saber se a fun��o existe, passando o nome da fun��o entre aspas simples.

IF OBJECT_ID('Enderecocompleto3', 'FN') IS NOT NULL
DROP FUNCTION [dbo].[Enderecoscompleto3]

