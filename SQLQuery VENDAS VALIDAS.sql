SELECT NF.CPF, NF.DATA_VENDA, INF.QUANTIDADE

FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO

SELECT NF.CPF, 
CONVERT(VARCHAR(7), NF.DATA_VENDA, 120) AS MES_ANO, 
INF.QUANTIDADE
FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO

SELECT  NF.CPF, 
CONVERT(VARCHAR(7), NF.DATA_VENDA, 120) AS MES_ANO, 
SUM(INF.QUANTIDADE) AS QUANTIDADE_TOTAL
FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO
GROUP BY
NF.CPF, 
CONVERT(VARCHAR(7), NF.DATA_VENDA, 120)


SELECT CPF, NOME, VOLUME_DE_COMPRA FROM TABELA_DE_CLIENTES

SELECT TC.CPF, TC.NOME, TC.VOLUME_DE_COMPRA, TV.MES_ANO, TV.QUANTIDADE_TOTAL
FROM TABELA_DE_CLIENTES TC
INNER JOIN
(
SELECT  NF.CPF, 
CONVERT(VARCHAR(7), NF.DATA_VENDA, 120) AS MES_ANO, 
SUM(INF.QUANTIDADE) AS QUANTIDADE_TOTAL
FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO
GROUP BY
NF.CPF, 
CONVERT(VARCHAR(7), NF.DATA_VENDA, 120) 
) TV
ON TV.CPF = TC.CPF



SELECT TC.CPF, TC.NOME, TC.VOLUME_DE_COMPRA, TV.MES_ANO, TV.QUANTIDADE_TOTAL,
(CASE WHEN TC.VOLUME_DE_COMPRA >= TV.QUANTIDADE_TOTAL THEN 'VENDAS_VALIDAS'
ELSE 'VENDAS_INVALIDAS' END) AS RESULTADO
FROM TABELA_DE_CLIENTES TC
INNER JOIN
(
SELECT  NF.CPF, 
CONVERT(VARCHAR(7), NF.DATA_VENDA, 120) AS MES_ANO, 
SUM(INF.QUANTIDADE) AS QUANTIDADE_TOTAL
FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO
GROUP BY
NF.CPF, 
CONVERT(VARCHAR(7), NF.DATA_VENDA, 120) 
) TV
ON TV.CPF = TC.CPF



SELECT TC.CPF, TC.NOME, TC.VOLUME_DE_COMPRA, TV.MES_ANO, TV.QUANTIDADE_TOTAL,
(CASE WHEN TC.VOLUME_DE_COMPRA >= TV.QUANTIDADE_TOTAL THEN 'VENDAS_VALIDAS'
ELSE 'VENDAS_INVALIDAS' END) AS RESULTADO
FROM TABELA_DE_CLIENTES TC
INNER JOIN
(
SELECT  NF.CPF, 
CONVERT(VARCHAR(7), NF.DATA_VENDA, 120) AS MES_ANO, 
SUM(INF.QUANTIDADE) AS QUANTIDADE_TOTAL
FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO
GROUP BY
NF.CPF, 
CONVERT(VARCHAR(7), NF.DATA_VENDA, 120) 
) TV
ON TV.CPF = TC.CPF
WHERE TV.MES_ANO = '2015-01'


--Nesse sentido, nosso compromisso agora � que voc� complemente este relat�rio, isto �, listando somente os que tiveram vendas
--inv�lidas e calculando a diferen�a entre o limite de venda m�ximo e o realizado, em percentuais.

--Dicas:

--Capture a SQL final da aula

--Filtre somente as linhas onde:

--(TC.VOLUME_DE_COMPRA < TV.QUANTIDADE_TOTAL)COPIAR C�DIGO
--Liste a coluna de VOLUME_DE_COMPRA

--Crie uma nova coluna, fazendo a f�rmula:

--(1 - (VOLUME_DE_COMPRA/QUANTIDADE_VENDAS)) * 100COPIAR C�DIGO
--Arredonde o resultado da varia��o percentual em duas casas decimais.

SELECT TC.CPF, TC.NOME, TC.VOLUME_DE_COMPRA, TV.MES_ANO, TV.QUANTIDADE_TOTAL,
(CASE WHEN TC.VOLUME_DE_COMPRA >= TV.QUANTIDADE_TOTAL THEN 'VENDAS_VALIDAS'
ELSE 'VENDAS_INVALIDAS' END) AS RESULTADO
FROM TABELA_DE_CLIENTES TC
INNER JOIN
(
SELECT  NF.CPF, 
CONVERT(VARCHAR(7), NF.DATA_VENDA, 120) AS MES_ANO, 
SUM(INF.QUANTIDADE) AS QUANTIDADE_TOTAL
FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO
GROUP BY
NF.CPF, 
CONVERT(VARCHAR(7), NF.DATA_VENDA, 120) 
) TV
ON TV.CPF = TC.CPF
WHERE TV.MES_ANO = '2015-01'
AND (TC.VOLUME_DE_COMPRA - TV.QUANTIDADE_TOTAL) < 0



SELECT TC.CPF, TC.NOME, TC.VOLUME_DE_COMPRA, TV.MES_ANO, TV.QUANTIDADE_TOTAL,
(CASE WHEN TC.VOLUME_DE_COMPRA >= TV.QUANTIDADE_TOTAL THEN 'VENDAS_VALIDAS'
ELSE 'VENDAS_INVALIDAS' END) AS RESULTADO,
ROUND((1 - (TC.VOLUME_DE_COMPRA/TV.QUANTIDADE_TOTAL)) * 100, 2) AS PERCENTUAL
FROM TABELA_DE_CLIENTES TC
INNER JOIN
(
SELECT  NF.CPF, 
CONVERT(VARCHAR(7), NF.DATA_VENDA, 120) AS MES_ANO, 
SUM(INF.QUANTIDADE) AS QUANTIDADE_TOTAL
FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF
ON NF.NUMERO = INF.NUMERO
GROUP BY
NF.CPF, 
CONVERT(VARCHAR(7), NF.DATA_VENDA, 120) 
) TV
ON TV.CPF = TC.CPF
WHERE TV.MES_ANO = '2015-01'
AND (TC.VOLUME_DE_COMPRA - TV.QUANTIDADE_TOTAL) < 0

