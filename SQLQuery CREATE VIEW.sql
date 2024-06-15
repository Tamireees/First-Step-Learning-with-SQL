CREATE VIEW MEDIA_EMBALAGENS AS
SELECT EMBALAGEM, AVG(PRECO_DE_LISTA) AS PRECO_MEDIO
FROM TABELA_DE_PRODUTOS GROUP BY EMBALAGEM

SELECT * FROM MEDIA_EMBALAGENS;



SELECT MEDIA_EMBALAGENS.EMBALAGEM,
MEDIA_EMBALAGENS.PRECO_MEDIO FROM 
(SELECT EMBALAGEM, AVG(PRECO_DE_LISTA) AS PRECO_MEDIO
FROM TABELA_DE_PRODUTOS GROUP BY EMBALAGEM) MEDIA_EMBALAGENS
WHERE MEDIA_EMBALAGENS.PRECO_MEDIO <= 10;

SELECT MEDIA_EMBALAGENS.EMBALAGEM,
MEDIA_EMBALAGENS.PRECO_MEDIO FROM 
MEDIA_EMBALAGENS
WHERE PRECO_MEDIO <= 10;


--Veja a consulta abaixo que foi resposta de um exerc�cio anterior.

--(SELECT INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO, SUM(INF.QUANTIDADE) AS QUANTIDADE FROM ITENS_NOTAS_FISCAIS  INF
--INNER JOIN TABELA_DE_PRODUTOS TP 
--ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
--GROUP BY INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO HAVING SUM(INF.QUANTIDADE) > 394000 
--ORDER BY SUM(INF.QUANTIDADE) DESC)
--Redesenhe esta consulta criando uma vis�o para a lista de quantidades totais por produto e aplicando a
--condi��o e ordena��o sobre esta mesma vis�o.


 CREATE VIEW VW_QUANTIDADE_PRODUTOS AS SELECT INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO, 
 SUM(INF.QUANTIDADE) AS QUANTIDADE_TOTAL FROM ITENS_NOTAS_FISCAIS  INF
INNER JOIN TABELA_DE_PRODUTOS TP 
ON INF.CODIGO_DO_PRODUTO = TP.CODIGO_DO_PRODUTO
GROUP BY INF.CODIGO_DO_PRODUTO, TP.NOME_DO_PRODUTO;




SELECT * FROM VW_QUANTIDADE_PRODUTOS
WHERE QUANTIDADE_TOTAL > 394000 
ORDER BY QUANTIDADE_TOTAL DESC;