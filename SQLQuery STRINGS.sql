SELECT * FROM TABELA_DE_CLIENTES;

SELECT NOME, LOWER(NOME) AS NOME_MINUCULO FROM TABELA_DE_CLIENTES
SELECT NOME, UPPER(NOME) AS NOME_MAIUSCULO FROM TABELA_DE_CLIENTES

SELECT NOME, LOWER(NOME) AS NOME_MINUCULO, UPPER(NOME) AS NOME_MAIUSCULO FROM TABELA_DE_CLIENTES

SELECT NOME, CONCAT(ENDERECO_1, ' ', BAIRRO, ' ', CIDADE, '/ ', ESTADO, ' - ', CEP) AS ENDERECO_COMPLETO FROM TABELA_DE_CLIENTES
--OU
SELECT NOME, ENDERECO_1 + ' '+ BAIRRO +  ' ' +  CIDADE +  '/ ' +  ESTADO +  ' - ' +  CEP AS ENDERECO_COMPLETO FROM TABELA_DE_CLIENTES

SELECT * FROM TABELA_DE_PRODUTOS;
SELECT NOME_DO_PRODUTO, LEFT(NOME_DO_PRODUTO, 3) AS TRES_PRIMEIROS_CHAR FROM TABELA_DE_PRODUTOS]

SELECT TAMANHO, REPLACE((REPLACE (TAMANHO, 'Litros', 'L')), 'Litro', 'L') AS TAMANHO_MODIFICADO FROM TABELA_DE_PRODUTOS


--Nas aulas relacionadas às funções de texto, observamos a tabela de cliente onde podemos listar os nomes.

--Note que os nomes e sobrenomes são separados por um espaço.

--Sendo assim, faça uma consulta que traga somente o primeiro nome de cada cliente.

--Dica: Como foi dito pelo instrutor existem diversas funções do SQL Server e muitas vezes não sabemos todas.
--Por isso, para resolver este problema pesquise sobre a função CHARINDEX, veja como ela funciona, e aplique 
--para resolver este problema.

SELECT * FROM TABELA_DE_CLIENTES;

SELECT NOME, CHARINDEX(' ', NOME, 1) FROM TABELA_DE_CLIENTES;
SELECT NOME, SUBSTRING(NOME, 1, CHARINDEX(' ', NOME, 1)) FROM TABELA_DE_CLIENTES;

