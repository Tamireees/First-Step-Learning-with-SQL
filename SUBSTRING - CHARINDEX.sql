
--DECLARE @CPF VARCHAR (50);
--DECLARE @NOME VARCHAR (100);
--DECLARE @DATA_NASCIMENTO DATE;
--DECLARE @IDADE INT;

--SET @CPF = '1471156710';

--SELECT @NOME = NOME, @DATA_NASCIMENTO = [DATA DE NASCIMENTO], @IDADE = IDADE FROM [TABELA DE CLIENTES] WHERE CPF = @CPF;

--PRINT @NOME;
--PRINT @DATA_NASCIMENTO;
--PRINT @IDADE;

--SELECT * FROM [TABELA DE CLIENTES];

--1471156710
--19290992743
--2600586709

--____________________________________________________________________________________________________________

--DESAFIO
--Levando em considera��o o que fizemos at� aqui, como podemos criar uma vari�vel chamada NUMNOTAS e atribuir a 
--ela o n�mero de notas fiscais do dia 01/01/2017?


SELECT * FROM [NOTAS FISCAIS];

DECLARE @NUMNOTAS INT

SELECT @NUMNOTAS = COUNT(*) FROM [NOTAS FISCAIS] 
    WHERE DATA = '20170101'
PRINT @NUMNOTAS

--____________________________________________________________________________________________________________

--SELECT NOME, CHARINDEX(' ', NOME), SUBSTRING(NOME, 1,  CHARINDEX(' ', NOME)-1)  FROM [TABELA DE CLIENTES]


DECLARE @CPF VARCHAR (50);
DECLARE @NOME VARCHAR (100);
DECLARE @DATA_NASCIMENTO DATE;
DECLARE @IDADE INT;

SET @CPF = '1471156710';

SELECT @NOME = NOME, @DATA_NASCIMENTO = [DATA DE NASCIMENTO], @IDADE = IDADE FROM [TABELA DE CLIENTES] WHERE CPF = @CPF;

PRINT 'O primeiro nome do cliente ' + @NOME + ', cujo CPF � ' + @CPF + ', corresponde a ' + SUBSTRING(@NOME, 1,  CHARINDEX(' ', @NOME)-1) ;




--____________________________________________________________________________________________________________
--DESAFIO
--Uma das funcionalidades do comando PRINT � a possibilidade de utilizar fun��es para compor o resultado a ser exibido. 
--Como exemplo, vamos considerar o SCRIPT abaixo:

DECLARE @CPF VARCHAR(15);
DECLARE @DATA_NASCIMENTO DATE;
DECLARE @IDADE INT;

SET @CPF = '1471156710';

SELECT @DATA_NASCIMENTO = [DATA DE NASCIMENTO] FROM [TABELA DE CLIENTES] WHERE CPF = @CPF;

SET @IDADE = DATEDIFF(YEAR, @DATA_NASCIMENTO, GETDATE());

PRINT @IDADE;

--Como far�amos para repetir o mesmo SCRIPT sem usar a vari�vel @IDADE?

DECLARE @CPF VARCHAR(15);
DECLARE @DATA_NASCIMENTO DATE;
DECLARE @IDADE INT;

SET @CPF = '1471156710';
SELECT @DATA_NASCIMENTO = [DATA DE NASCIMENTO] FROM [TABELA DE CLIENTES] WHERE CPF = @CPF;
PRINT DATEDIFF(YEAR, @DATA_NASCIMENTO, GETDATE());