


DECLARE @NOME VARCHAR (200)

DECLARE CURSOR1 CURSOR FOR SELECT TOP 4 NOME FROM [TABELA DE CLIENTES]
OPEN CURSOR1
FETCH NEXT FROM CURSOR1 INTO @NOME 
WHILE @@FETCH_STATUS = 0

BEGIN 
PRINT @NOME
FETCH NEXT FROM CURSOR1 INTO @NOME 
END;

--_____________________________________________________________________________
--DESAFIO

DECLARE @nome VARCHAR(50)
DECLARE funcionario_cursor CURSOR FOR SELECT nome FROM funcionarios

OPEN funcionario_cursor

FETCH NEXT FROM funcionario_cursor INTO @nome

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Nome: ' + @nome
    FETCH NEXT FROM funcionario_cursor INTO @nome
END;

CLOSE funcionario_cursor
DEALLOCATE funcionario_cursor

--__________________________________________________________________________





