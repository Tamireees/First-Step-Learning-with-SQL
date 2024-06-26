


SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES

SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES

SELECT * FROM TABELA_DE_CLIENTES
WHERE BAIRRO IN ('Copacabana', 'Jardins','Santo Amaro', 'Tijuca');

SELECT * FROM TABELA_DE_CLIENTES
WHERE BAIRRO IN (SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES);


--Veja a consulta abaixo que foi resposta de um exerc�cio anterior.

SELECT INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM ITENS_NOTAS_FISCAIS  INF
INNER JOIN TABELA_DE_PRODUTOS TP 
ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
GROUP BY INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO HAVING SUM(INF.QUANTIDADE) > 394000 
ORDER BY SUM(INF.QUANTIDADE) DESC;

Ela nos d� os produtos cuja soma das vendas s�o maiores que 394000.

--Levando isso em considera��o, liste os sabores destes produtos que s�o selecionados nesta consulta.


SELECT DISTINCT SABOR FROM TABELA_DE_PRODUTOS WHERE
CODIGO_DO_PRODUTO IN (
SELECT INF.CODIGO_DO_PRODUTO FROM ITENS_NOTAS_FISCAIS  INF
INNER JOIN TABELA_DE_PRODUTOS TP 
ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
GROUP BY INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO HAVING SUM(INF.QUANTIDADE) > 394000 );