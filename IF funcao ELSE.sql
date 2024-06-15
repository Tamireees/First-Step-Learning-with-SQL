
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
   PRINT 'Este dia é fim de semana';
ELSE
   PRINT 'Este dia é dia de semana';

--____________________________________________________________________________________________________________________________________   Continuando com os desafios, abaixo é apresentado um novo SCRIPT. Ele atualiza o campo IDADE da TABELA DE CLIENTES com a idade atual, mas pode ser que a IDADE já esteja atualizada, não precisando fazer o UPDATE.

--SCRIPT:

--DECLARE @CPF VARCHAR(15);
--   DECLARE @DATA_NASCIMENTO DATE;
--   DECLARE @IDADE INT;

--   SET @CPF = '1471156710';
--   SELECT @DATA_NASCIMENTO = [DATA DE NASCIMENTO] FROM [TABELA DE CLIENTES] WHERE CPF = @CPF;
--   SET @IDADE = DATEDIFF(YEAR, @DATA_NASCIMENTO, GETDATE());
--   UPDATE [TABELA DE CLIENTES] SET IDADE = @IDADE WHERE CPF = @CPF;
--Diante dessa informação, como poderemos modificar o SCRIPT acima para apenas fazer a alteração da IDADE se a mesma, que está na tabela,
--seja diferente da calculada?

  DECLARE @CPF VARCHAR(15);
DECLARE @IDADE_TABELA INT;
DECLARE @DATA_NASCIMENTO DATE;
DECLARE @IDADE INT;

SET @CPF = '1471156710';

SELECT @DATA_NASCIMENTO = [DATA DE NASCIMENTO], @IDADE_TABELA = IDADE FROM [TABELA DE CLIENTES] WHERE CPF = @CPF;
SET @IDADE = DATEDIFF(YEAR, @DATA_NASCIMENTO, GETDATE());
IF @IDADE_TABELA <> @IDADE UPDATE [TABELA DE CLIENTES] SET IDADE = @IDADE WHERE CPF = @CPF;
