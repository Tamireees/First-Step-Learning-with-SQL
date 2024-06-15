SELECT * FROM TABELA_DE_CLIENTES;


SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS CREDITO 
FROM TABELA_DE_CLIENTES GROUP BY ESTADO;

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS CREDITO 
FROM TABELA_DE_CLIENTES GROUP BY ESTADO
HAVING SUM(LIMITE_DE_CREDITO)>= 900000;

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS 'PRECO MAXIMO', MIN(PRECO_DE_LISTA) AS 'PRECO MINIMO'
FROM TABELA_DE_PRODUTOS GROUP BY EMBALAGEM;

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS 'PRECO MAXIMO', MIN(PRECO_DE_LISTA) AS 'PRECO MINIMO'
FROM TABELA_DE_PRODUTOS
WHERE PRECO_DE_LISTA >= 10
GROUP BY EMBALAGEM;


SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS 'PRECO MAXIMO', MIN(PRECO_DE_LISTA) AS 'PRECO MINIMO'
FROM TABELA_DE_PRODUTOS 
WHERE PRECO_DE_LISTA >= 10 
GROUP BY EMBALAGEM 
HAVING MAX(PRECO_DE_LISTA) >=20;


--Vamos voltar aos itens das notas fiscais. Os dois exerc�cios anteriores olharam as vendas do produto '1101035' .
--Mas nossa empresa vendeu mais produtos. Verifique as quantidades totais de vendas de cada produto e ordene do maior para o menor.

SELECT CODIGO_DO_PRODUTO, SUM(QUANTIDADE) AS 'QUANTIDADE TOTAL DE PRODUTOS' 
FROM ITENS_NOTAS_FISCAIS 
GROUP BY CODIGO_DO_PRODUTO 
ORDER BY SUM(QUANTIDADE) DESC;


--Vimos os produtos mais vendidos no exerc�cio anterior. Agora, liste somente os produtos que venderam mais que 394000 unidades.

SELECT CODIGO_DO_PRODUTO, SUM(QUANTIDADE) AS 'QUANTIDADE MAIS VENDIDA' 
FROM ITENS_NOTAS_FISCAIS 
GROUP BY CODIGO_DO_PRODUTO 
HAVING SUM(QUANTIDADE) > 394000 
ORDER BY SUM(QUANTIDADE) DESC;

