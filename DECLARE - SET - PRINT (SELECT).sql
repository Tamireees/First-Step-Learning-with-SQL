SELECT * FROM [TABELA DE CLIENTES]

SELECT BAIRRO, SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES]
GROUP BY BAIRRO


SELECT SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES]
WHERE BAIRRO = '�gua Santa'

--____________________________________________________________________________________________________________________

DECLARE @LIMITE_MAXIMO FLOAT;
DECLARE @LIMITE_ATUAL FLOAT;
DECLARE @BAIRRO VARCHAR(20);

SET @LIMITE_MAXIMO = 50000;
SET @BAIRRO = '�gua Santa';
SELECT @LIMITE_ATUAL = SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] WHERE BAIRRO = @BAIRRO;
IF @LIMITE_MAXIMO <= @LIMITE_ATUAL
    PRINT 'VALOR ESTOUROU';
ELSE
    PRINT 'VALOR N�O ESTOUROU';

--____________________________________________________________________________________________________________________

DECLARE @LIMITE_MAXIMO FLOAT;
DECLARE @BAIRRO VARCHAR(20);

SET @LIMITE_MAXIMO = 50000;
SET @BAIRRO = '�gua Santa';
IF @LIMITE_MAXIMO <= (SELECT SUM([LIMITE DE CREDITO]) FROM [TABELA DE CLIENTES] WHERE BAIRRO = @BAIRRO)
    PRINT 'VALOR ESTOUROU';
ELSE
    PRINT 'VALOR N�O ESTOUROU';

--____________________________________________________________________________________________________________________
--DESAFIO

DECLARE @CPF VARCHAR(15);
DECLARE @DATA_NASCIMENTO DATE;
DECLARE @IDADE INT;

SET @CPF = '1471156710';
SELECT @DATA_NASCIMENTO = [DATA DE NASCIMENTO] FROM [TABELA DE CLIENTES] WHERE CPF = @CPF;

SET @IDADE = DATEDIFF(YEAR, @DATA_NASCIMENTO, GETDATE());
IF (SELECT COUNT(*) FROM  [TABELA DE CLIENTES] WHERE CPF = @CPF AND IDADE <> @IDADE) = 1 
    UPDATE [TABELA DE CLIENTES] SET IDADE = @IDADE WHERE CPF = @CPF;