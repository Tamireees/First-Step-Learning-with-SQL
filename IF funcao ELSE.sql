
SELECT GETDATE()

SELECT DATENAME(WEEKDAY, GETDATE());

SELECT DATEADD(DAY, 5, GETDATE());

SELECT GETDATE(), DATEADD(DAY, 28, GETDATE());

SELECT DATENAME(WEEKDAY, DATEADD(DAY, 28, GETDATE()));

--____________________________________________________________________________________________________________________________________

DECLARE @DIA_SEMANA VARCHAR (20);
DECLARE @NUMERO_DIAS INT;

SET @NUMERO_DIAS = 9;
SET @DIA_SEMANA = DATENAME(WEEKDAY, DATEADD(DAY, @NUMERO_DIAS, GETDATE()));

PRINT @DIA_SEMANA

IF @DIA_SEMANA = 'Sunday' OR @DIA_SEMANA = 'Saturday'
   PRINT 'Este dia � fim de semana';
ELSE
   PRINT 'Este dia � dia de semana';

--____________________________________________________________________________________________________________________________________   Continuando com os desafios, abaixo � apresentado um novo SCRIPT. Ele atualiza o campo IDADE da TABELA DE CLIENTES com a idade atual, mas pode ser que a IDADE j� esteja atualizada, n�o precisando fazer o UPDATE.

--SCRIPT:

--DECLARE @CPF VARCHAR(15);
--   DECLARE @DATA_NASCIMENTO DATE;
--   DECLARE @IDADE INT;

--   SET @CPF = '1471156710';
--   SELECT @DATA_NASCIMENTO = [DATA DE NASCIMENTO] FROM [TABELA DE CLIENTES] WHERE CPF = @CPF;
--   SET @IDADE = DATEDIFF(YEAR, @DATA_NASCIMENTO, GETDATE());
--   UPDATE [TABELA DE CLIENTES] SET IDADE = @IDADE WHERE CPF = @CPF;
--Diante dessa informa��o, como poderemos modificar o SCRIPT acima para apenas fazer a altera��o da IDADE se a mesma, que est� na tabela,
--seja diferente da calculada?

  DECLARE @CPF VARCHAR(15);
DECLARE @IDADE_TABELA INT;
DECLARE @DATA_NASCIMENTO DATE;
DECLARE @IDADE INT;

SET @CPF = '1471156710';

SELECT @DATA_NASCIMENTO = [DATA DE NASCIMENTO], @IDADE_TABELA = IDADE FROM [TABELA DE CLIENTES] WHERE CPF = @CPF;
SET @IDADE = DATEDIFF(YEAR, @DATA_NASCIMENTO, GETDATE());
IF @IDADE_TABELA <> @IDADE UPDATE [TABELA DE CLIENTES] SET IDADE = @IDADE WHERE CPF = @CPF;
