SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR IN ('LIMA/LIMAO', 'MORANGO/LIMAO');


SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR LIKE '%LIMAO';

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR LIKE '%MACA%';

SELECT * FROM TABELA_DE_PRODUTOS WHERE (SABOR LIKE 'Morango%') AND (EMBALAGEM = 'PET');


SELECT * FROM TABELA_DE_CLIENTES WHERE NOME LIKE '%SILVA';