
SELECT * FROM [TABELA DE CLIENTES]

SELECT COUNT(*) FROM [TABELA DE CLIENTES]

SELECT DBO.[NumeroAleatorio](1,16)
--___________________________________________________

DECLARE @CLIENTE_ALEATORIO VARCHAR(12)
DECLARE @VAL_INICIAL INT
DECLARE @VAL_FINAL INT
DECLARE @ALEATORIO INT
DECLARE @CONTADOR INT

SET @VAL_INICIAL = 1
SET @CONTADOR = 1
SELECT @VAL_FINAL = COUNT(*) FROM [TABELA DE CLIENTES]
SET @ALEATORIO = DBO.[NumeroAleatorio](@VAL_INICIAL, @VAL_FINAL) 

DECLARE CURSOR01 CURSOR FOR SELECT CPF FROM [TABELA DE CLIENTES]

OPEN CURSOR01
FETCH NEXT FROM CURSOR01 INTO @CLIENTE_ALEATORIO
WHILE @CONTADOR < @ALEATORIO
BEGIN
	FETCH NEXT FROM CURSOR01 INTO @CLIENTE_ALEATORIO
	SET @CONTADOR = @CONTADOR + 1
END

CLOSE CURSOR01
DEALLOCATE CURSOR01

SELECT @CLIENTE_ALEATORIO, @ALEATORIO
SELECT * FROM [TABELA DE CLIENTES]

--_________________________________________________________________________________________

DECLARE @VENDEDOR_ALEATORIO VARCHAR(12)
DECLARE @VAL_INICIAL INT
DECLARE @VAL_FINAL INT
DECLARE @ALEATORIO INT
DECLARE @CONTADOR INT

SET @VAL_INICIAL = 1
SET @CONTADOR = 1
SELECT @VAL_FINAL = COUNT(*) FROM [TABELA DE VENDEDORES]
SET @ALEATORIO = DBO.[NumeroAleatorio](@VAL_INICIAL, @VAL_FINAL) 

DECLARE CURSOR01 CURSOR FOR SELECT NOME FROM [TABELA DE VENDEDORES]

OPEN CURSOR01
FETCH NEXT FROM CURSOR01 INTO @VENDEDOR_ALEATORIO
WHILE @CONTADOR < @ALEATORIO
BEGIN
	FETCH NEXT FROM CURSOR01 INTO @VENDEDOR_ALEATORIO
	SET @CONTADOR = @CONTADOR + 1
END

CLOSE CURSOR01
DEALLOCATE CURSOR01

SELECT @VENDEDOR_ALEATORIO, @ALEATORIO
SELECT NOME FROM [TABELA DE VENDEDORES]