SELECT ROUND(3.437, 2), ROUND(3.433, 2)

SELECT ROUND(3.437, 2), ROUND(3.433, 2), CEILING(3.433), FLOOR(3.433), POWER(12, 2)

SELECT ROUND(3.437, 2), ROUND(3.433, 2), CEILING(3.433), FLOOR(3.433), POWER(12, 2), EXP(3),
SQRT(300), ABS(10), ABS(-10)

--Na tabela de notas fiscais, temos o valor do imposto. Já na tabela de itens, temos a quantidade e o faturamento. 
--Calcule o valor do imposto pago no ano de 2016, arredondando para o menor inteiro.

SELECT * FROM NOTAS_FISCAIS
SELECT * FROM ITENS_NOTAS_FISCAIS

SELECT YEAR(DATA_VENDA) AS ANO, FLOOR(SUM(IMPOSTO * (QUANTIDADE * PRECO)))
FROM NOTAS_FISCAIS NF
INNER JOIN ITENS_NOTAS_FISCAIS INF ON NF.NUMERO = NF.NUMERO
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY YEAR(DATA_VENDA);
