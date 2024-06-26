

DECLARE @NOME VARCHAR (200)
DECLARE @ENDERECO VARCHAR(MAX)

DECLARE CURSOR2 CURSOR FOR 
SELECT NOME, ([ENDERECO 1] + ' ' + BAIRRO + ' ' + CIDADE + ' ' + ESTADO + ', ' + 'CEP: ' + CEP) ENDCOMPLETO
FROM [TABELA DE CLIENTES]

OPEN CURSOR2
FETCH NEXT FROM CURSOR2 INTO @NOME, @ENDERECO

WHILE @@FETCH_STATUS = 0

BEGIN
	PRINT @NOME + ' , Endere�o: ' + @ENDERECO
	FETCH NEXT FROM CURSOR2 INTO @NOME, @ENDERECO
END

CLOSE CURSOR2
DEALLOCATE CURSOR2

--________________________________________________________________________________

DECLARE @data_venda DATE, @valor_venda MONEY
DECLARE @janeiro MONEY, @fevereiro MONEY, @marco MONEY, @abril MONEY, @maio MONEY, @junho MONEY,
        @julho MONEY, @agosto MONEY, @setembro MONEY, @outubro MONEY, @novembro MONEY, @dezembro MONEY

SET @janeiro = 0
SET @fevereiro = 0
SET @marco = 0
SET @abril = 0
SET @maio = 0
SET @junho = 0
SET @julho = 0
SET @agosto = 0
SET @setembro = 0
SET @outubro = 0
SET @novembro = 0
SET @dezembro = 0

DECLARE vendas_cursor CURSOR FOR
 SELECT NF.[DATA] AS DATA_VENDA, SUM(TNT.[QUANTIDADE] * TNT.[PRE�O]) AS VALOR_VENDA
 FROM [dbo].[NOTAS FISCAIS] NF
 INNER JOIN [dbo].[ITENS NOTAS FISCAIS] TNT
 ON NF.NUMERO = TNT.NUMERO
 GROUP BY NF.[DATA]

OPEN vendas_cursor

FETCH NEXT FROM vendas_cursor INTO @data_venda, @valor_venda

WHILE @@FETCH_STATUS = 0
BEGIN
    IF MONTH(@data_venda) = 1
        SET @janeiro = @janeiro + @valor_venda
    IF MONTH(@data_venda) = 2
        SET @fevereiro = @fevereiro + @valor_venda
    IF MONTH(@data_venda) = 3
        SET @marco = @marco + @valor_venda
    IF MONTH(@data_venda) = 4
        SET @abril = @abril + @valor_venda
    IF MONTH(@data_venda) = 5
        SET @maio = @maio + @valor_venda
    IF MONTH(@data_venda) = 6
        SET @junho = @junho + @valor_venda
    IF MONTH(@data_venda) = 7
        SET @julho = @julho + @valor_venda
    IF MONTH(@data_venda) = 8
        SET @agosto = @agosto + @valor_venda
    IF MONTH(@data_venda) = 9
        SET @setembro = @setembro + @valor_venda
    IF MONTH(@data_venda) = 10
        SET @outubro = @outubro + @valor_venda
    IF MONTH(@data_venda) = 11
        SET @novembro = @novembro + @valor_venda
    IF MONTH(@data_venda) = 12
        SET @dezembro = @dezembro + @valor_venda

	FETCH NEXT FROM vendas_cursor INTO @data_venda, @valor_venda

CLOSE vendas_cursor
DEALLOCATE vendas_cursor

PRINT 'Janeiro: ' + CAST(@janeiro AS VARCHAR(20))
PRINT 'Fevereiro: ' + CAST(@fevereiro AS VARCHAR(20))
PRINT 'Mar�o: ' + CAST(@marco AS VARCHAR(20))
PRINT 'Abril: ' + CAST(@abril AS VARCHAR(20))
PRINT 'Maio: ' + CAST(@maio AS VARCHAR(20))
PRINT 'Junho: ' + CAST(@junho AS VARCHAR(20))
PRINT 'Julho: ' + CAST(@julho AS VARCHAR(20))
PRINT 'Agosto: ' + CAST(@agosto AS VARCHAR(20))
PRINT 'Setembro: ' + CAST(@setembro AS VARCHAR(20))
PRINT 'Outubro: ' + CAST(@outubro AS VARCHAR(20))
PRINT 'Novembro: ' + CAST(@novembro AS VARCHAR(20))
PRINT 'Dezembro: ' + CAST(@novembro AS VARCHAR(20))





