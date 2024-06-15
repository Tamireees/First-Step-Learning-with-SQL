

-- FOR I = 1 TO 100
-- <COMANDOS>
-- NEXT

DECLARE @I INT;
SET @I = 1
WHILE @I <= 100
BEGIN
	PRINT @I;
	SET @I = @I +1
END;

--DESAFIO
--FOR I = 10 TO 1 STEP -1
--   PRINT I

DECLARE @I INT;
SET @I = 10
WHILE @I >= 1
BEGIN
	PRINT @I;
	SET @I = @I -1
END;
