SELECT * FROM TABELA_DE_PRODUTOS

SELECT * FROM SUCOS_FRUTAS.DBO.TABELA_DE_PRODUTOS;

SELECT CODIGO_DO_PRODUTO, NOME_DO_PRODUTO, SABOR, TAMANHO, EMBALAGEM, PRECO_DE_LISTA
FROM SUCOS_FRUTAS.DBO.TABELA_DE_PRODUTOS; 


SELECT CODIGO_DO_PRODUTO AS CODIGO, NOME_DO_PRODUTO AS DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_DE_LISTA AS PRECO_LISTA
FROM SUCOS_FRUTAS.DBO.TABELA_DE_PRODUTOS; 

INSERT INTO PRODUTOS SELECT CODIGO_DO_PRODUTO AS CODIGO, NOME_DO_PRODUTO AS DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_DE_LISTA AS PRECO_LISTA
FROM SUCOS_FRUTAS.DBO.TABELA_DE_PRODUTOS; 

INSERT INTO PRODUTOS SELECT CODIGO_DO_PRODUTO AS CODIGO, NOME_DO_PRODUTO AS DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_DE_LISTA AS PRECO_LISTA
FROM SUCOS_FRUTAS.DBO.TABELA_DE_PRODUTOS
WHERE CODIGO_DO_PRODUTO <> '1040107'; 

SELECT * FROM PRODUTOS

----------------------------------------------------------------------------------------------------------------------------------

SELECT CPF, NOME, ENDERECO_1, ENDERECO_2, BAIRRO, CIDADE, ESTADO, CEP, DATA_DE_NASCIMENTO, IDADE, GENERO, LIMITE_DE_CREDITO, 
VOLUME_DE_COMPRA, PRIMEIRA_COMPRA
FROM SUCOS_FRUTAS.DBO.TABELA_DE_CLIENTES; 

SELECT * FROM CLIENTES 


INSERT INTO CLIENTES
SELECT CPF, NOME, ENDERECO_1 AS ENDERECO, BAIRRO, CIDADE, ESTADO, CEP, 
DATA_DE_NASCIMENTO AS DATA_NASCIMENTO, IDADE, 
GENERO, LIMITE_DE_CREDITO AS LIMITE_CREDITO, VOLUME_DE_COMPRA AS VOLUME_COMPRA, PRIMEIRA_COMPRA
FROM SUCOS_FRUTAS.DBO.TABELA_DE_CLIENTES;

--vai dar erro pois ja existem alguns clientes no banco de dados clientes, pontanto add o where.

INSERT INTO CLIENTES
SELECT CPF, NOME, ENDERECO_1 AS ENDERECO, BAIRRO, CIDADE, ESTADO, CEP, 
DATA_DE_NASCIMENTO AS DATA_NASCIMENTO, IDADE, 
GENERO, LIMITE_DE_CREDITO AS LIMITE_CREDITO, VOLUME_DE_COMPRA AS VOLUME_COMPRA, PRIMEIRA_COMPRA
FROM SUCOS_FRUTAS.DBO.TABELA_DE_CLIENTES
WHERE CPF NOT IN ('1471156710', '19290992743', '2600586709');





