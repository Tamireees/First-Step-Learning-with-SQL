SELECT DISTINCT SABOR FROM [TABELA DE PRODUTOS]
-- Mas, por outro lado, a presid�ncia quer um relat�rio com dados de vendas, por datas, olhando pela perspectiva destes
-- novos departamentos.


--SELECT TP.[SABOR], SUM(INF.QUANTIDADE * INF.[PRE�O]) AS FATURAMENTO 
--FROM [TABELA DE PRODUTOS] TP
--INNER JOIN [ITENS NOTAS FISCAIS] INF 
--ON TP.[CODIGO DO PRODUTO]  = INF.[CODIGO DO PRODUTO]
--INNER JOIN [NOTAS FISCAIS] NF
--ON INF.NUMERO = NF.NUMERO
--WHERE NF.DATA >= '2015-01-01' AND NF.DATA <= '2015-12-31'
--GROUP BY TP.[SABOR]


DECLARE @DEPARTAMENTO TABLE (SABOR VARCHAR(20), DEPARTAMENTO VARCHAR(20))
INSERT INTO @DEPARTAMENTO 
SELECT DISTINCT SABOR, 'FRUTAS N�O C�TRICAS' as DEPARTAMENTO 
FROM [TABELA DE PRODUTOS] WHERE 
SABOR IN ('A�ai','Cereja','Cereja/Ma�a','Ma�a','Manga','Maracuj�','Mel�ncia')
UNION
SELECT DISTINCT SABOR, 'FRUTAS C�TRICAS' as DEPARTAMENTO 
FROM [TABELA DE PRODUTOS] WHERE 
SABOR IN ('Laranja','Uva','Lim�o','Morango','Morango/Lim�o','Lima/Lim�o')

--__________________________________________________________________________________________________
DECLARE @DEPARTAMENTO TABLE (SABOR VARCHAR(20), DEPARTAMENTO VARCHAR(20))
INSERT INTO @DEPARTAMENTO 
SELECT DISTINCT SABOR, 'FRUTAS N�O C�TRICAS' as DEPARTAMENTO 
FROM [TABELA DE PRODUTOS] WHERE 
SABOR IN ('A�ai','Cereja','Cereja/Ma�a','Ma�a','Manga','Maracuj�','Mel�ncia')
UNION
SELECT DISTINCT SABOR, 'FRUTAS C�TRICAS' as DEPARTAMENTO 
FROM [TABELA DE PRODUTOS] WHERE 
SABOR IN ('Laranja','Uva','Lim�o','Morango','Morango/Lim�o','Lima/Lim�o')

SELECT DP.[DEPARTAMENTO]
, SUM(INF.QUANTIDADE * INF.[PRE�O]) AS FATURAMENTO
FROM [TABELA DE PRODUTOS] TP
INNER JOIN [ITENS NOTAS FISCAIS] INF
ON TP.[CODIGO DO PRODUTO] = INF.[CODIGO DO PRODUTO]
INNER JOIN [NOTAS FISCAIS] NF
ON NF.NUMERO = INF.NUMERO
INNER JOIN @DEPARTAMENTO DP
ON TP.SABOR = DP.SABOR
WHERE NF.DATA >= '2015-01-01' AND NF.DATA <= '2015-12-31'
GROUP BY DP.[DEPARTAMENTO]


--__________________________________________________________________________________________________

CREATE PROCEDURE faturamentoDepartamento (@dataInicial DATE, @dataFinal DATE)
AS
BEGIN
DECLARE @DEPARTAMENTO TABLE (SABOR VARCHAR(20), DEPARTAMENTO VARCHAR(20))
INSERT INTO @DEPARTAMENTO 
SELECT DISTINCT SABOR, 'FRUTAS N�O C�TRICAS' as DEPARTAMENTO 
FROM [TABELA DE PRODUTOS] WHERE 
SABOR IN ('A�ai','Cereja','Cereja/Ma�a','Ma�a','Manga','Maracuj�','Mel�ncia')
UNION
SELECT DISTINCT SABOR, 'FRUTAS C�TRICAS' as DEPARTAMENTO 
FROM [TABELA DE PRODUTOS] WHERE 
SABOR IN ('Laranja','Uva','Lim�o','Morango','Morango/Lim�o','Lima/Lim�o')
SELECT DP.[DEPARTAMENTO]
, SUM(INF.QUANTIDADE * INF.[PRE�O]) AS FATURAMENTO
FROM [TABELA DE PRODUTOS] TP
INNER JOIN [ITENS NOTAS FISCAIS] INF
ON TP.[CODIGO DO PRODUTO] = INF.[CODIGO DO PRODUTO]
INNER JOIN [NOTAS FISCAIS] NF
ON NF.NUMERO = INF.NUMERO
INNER JOIN @DEPARTAMENTO DP
ON TP.SABOR = DP.SABOR
WHERE NF.DATA >= @dataInicial AND NF.DATA <= @dataFinal
GROUP BY DP.[DEPARTAMENTO]
END

exec faturamentoDepartamento '2016-01-01','2016-01-15';
