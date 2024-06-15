select * from PRODUTOS

UPDATE PRODUTOS SET PRECO_LISTA = 5 WHERE CODIGO = '1040107';

--------------------------------------------------------------------------------------
select * from PRODUTOS WHERE SABOR = 'MANGA'


UPDATE PRODUTOS SET PRECO_LISTA = PRECO_LISTA * 1.10 
WHERE SABOR = 'MANGA';

--------------------------------------------------------------------------------------------

SELECT DESCRITOR FROM PRODUTOS WHERE TAMANHO = '350 ML';


SELECT DESCRITOR, replace (DESCRITOR, '350ml', '550 ml') FROM PRODUTOS WHERE TAMANHO = '350 ml';

UPDATE PRODUTOS SET DESCRITOR = replace (DESCRITOR, '350ml', '550 ml'), TAMANHO = '550 ml' WHERE TAMANHO = '350 ml';


SELECT CODIGO, DESCRITOR, TAMANHO FROM PRODUTOS WHERE TAMANHO = '550 ML';

--------------------------------------------------------------------------------------------------------------------------

select * from PRODUTOS

UPDATE PRODUTOS SET DESCRITOR = 'Frescor do Verao - 550 ml - Manga' WHERE CODIGO = '235653';


UPDATE PRODUTOS SET DESCRITOR = 'Videira do Campo - 550 ml - Melancia' WHERE CODIGO = '290478';



UPDATE PRODUTOS SET DESCRITOR = 'Clean - 550 ml - Laranja' WHERE CODIGO = '812829';


UPDATE PRODUTOS SET DESCRITOR = 'Light - 550 ml - Limão' WHERE CODIGO = '1040113';

-----------------------------------------------------------------------------------------------------

--Modifique o endereço do cliente 19290992743 para R. Jorge Emilio 23, em Santo Amaro, São Paulo, SP, CEP 8833223.

SELECT * FROM CLIENTES WHERE CPF = '19290992743'

UPDATE CLIENTES SET ENDERECO = 'R. Jorge Emilio 23', BAIRRO = 'Santo Amaro', CIDADE = 'São Paulo', ESTADO = 'SP' , CEP = '8833223'
WHERE CPF = '19290992743';

-- ou

UPDATE [dbo].[CLIENTES] SET 
    [ENDEREÇO] = 'R. Jorge Emilio 23',
    [BAIRRO] = 'Santo Amaro',
    [CIDADE] = 'São Paulo',
    [ESTADO] = 'SP',
    [CEP] = '8833223'
WHERE [CPF] = '19290992743'

------------------------------------------------------------------------------------------------------------------

--Agora que já desenvolvemos vários tópicos, que tal praticarmos alterando o volume de compra em 20% dos 
--clientes do estado do Rio de Janeiro?

SELECT * FROM CLIENTES WHERE CIDADE = 'RIO DE JANEIRO'

UPDATE CLIENTES SET VOLUME_COMPRA = VOLUME_COMPRA * 1.2 FROM CLIENTES WHERE CIDADE = 'RIO DE JANEIRO';

-- ou

UPDATE [dbo].[CLIENTES]
    SET [VOLUME COMPRA] = [VOLUME COMPRA] * 1.2
WHERE [ESTADO] = 'RJ';