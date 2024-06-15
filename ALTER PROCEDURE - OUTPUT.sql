
CREATE PROCEDURE RetornaValoreFaturamentoQuantidade
@CPF AS VARCHAR(12) = '19290992743', @ANO AS INT = 2017, 
@NUM_NOTAS AS INT , @FATURAMENTO AS FLOAT 

AS
BEGIN

SELECT @NUM_NOTAS = COUNT(*) FROM [NOTAS FISCAIS]
WHERE CPF = @CPF AND YEAR([DATA]) = @ANO

SELECT @FATURAMENTO = SUM(INF.QUANTIDADE * INF.[PRE�O])
FROM [ITENS NOTAS FISCAIS] INF
INNER JOIN [NOTAS FISCAIS] NF
ON INF.NUMERO = NF.NUMERO
WHERE NF.CPF = @CPF AND YEAR(NF.[DATA]) = @ANO
END;


DECLARE @NUM_NOTAS INT
DECLARE @FATURAMENTO FLOAT

SET @NUM_NOTAS = 0
SET @FATURAMENTO = 0

SELECT @NUM_NOTAS, @FATURAMENTO

EXEC RetornaValoreFaturamentoQuantidade @CPF = '19290992743', @ANO = 2017, @NUM_NOTAS = @NUM_NOTAS, @FATURAMENTO = @FATURAMENTO 

SELECT @NUM_NOTAS, @FATURAMENTO

-- VAI RETORNAR VALOR 0

--______________________________________________________________________________________

ALTER PROCEDURE RetornaValoreFaturamentoQuantidade
@CPF AS VARCHAR(12) = '19290992743', @ANO AS INT = 2017, 
@NUM_NOTAS AS INT OUTPUT, @FATURAMENTO AS FLOAT OUTPUT

AS
BEGIN

SELECT @NUM_NOTAS = COUNT(*) FROM [NOTAS FISCAIS]
WHERE CPF = @CPF AND YEAR([DATA]) = @ANO

SELECT @FATURAMENTO = SUM(INF.QUANTIDADE * INF.[PRE�O])
FROM [ITENS NOTAS FISCAIS] INF
INNER JOIN [NOTAS FISCAIS] NF
ON INF.NUMERO = NF.NUMERO
WHERE NF.CPF = @CPF AND YEAR(NF.[DATA]) = @ANO
END;


DECLARE @NUM_NOTAS INT
DECLARE @FATURAMENTO FLOAT

SET @NUM_NOTAS = 0
SET @FATURAMENTO = 0

SELECT @NUM_NOTAS, @FATURAMENTO

EXEC RetornaValoreFaturamentoQuantidade @CPF = '19290992743', @ANO = 2017, @NUM_NOTAS = @NUM_NOTAS OUTPUT, @FATURAMENTO = @FATURAMENTO OUTPUT

SELECT @NUM_NOTAS, @FATURAMENTO