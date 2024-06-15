SELECT * FROM TABELA_DE_CLIENTES;

SELECT * FROM TABELA_DE_CLIENTES
WHERE IDADE > 20;

SELECT * FROM TABELA_DE_CLIENTES
WHERE IDADE < 20;

SELECT * FROM TABELA_DE_CLIENTES
WHERE IDADE <= 20;

SELECT * FROM TABELA_DE_CLIENTES
WHERE IDADE < 18;

SELECT * FROM TABELA_DE_CLIENTES
WHERE IDADE < > 18;

--FAZENDO A CONSULTA POR DATA:
--YYYY-MM-DD

SELECT * FROM TABELA_DE_CLIENTES
WHERE DATA_DE_NASCIMENTO >= '1995-11-14';

SELECT * FROM TABELA_DE_CLIENTES
WHERE DATA_DE_NASCIMENTO < '1995-11-14';



--FAZENDO A CONSULTA POR SELECAO NAO NUMERICA, TEXTOS:

SELECT * FROM TABELA_DE_CLIENTES
WHERE BAIRRO >= 'Lapa';

