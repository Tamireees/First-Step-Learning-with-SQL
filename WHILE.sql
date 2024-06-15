DECLARE @LIMITE_MINIMO INT;
DECLARE @LIMITE_MAXIMO INT;

SET @LIMITE_MINIMO = 3;
SET @LIMITE_MAXIMO = 10;

PRINT 'ENTREI NO LOOPING';
WHILE @LIMITE_MINIMO <= @LIMITE_MAXIMO
BEGIN
  PRINT @LIMITE_MINIMO;
  SET @LIMITE_MINIMO = @LIMITE_MINIMO + 1;
END;
PRINT 'SAI DO LOOPING';


--DESAFIO

--Sabendo que a função abaixo soma um dia a uma data:

--SELECT DATEADD(DAY, 1, @DATA)
--Como podemos fazer um script que, a partir do dia 01/01/2017, conte o número de notas fiscais até o dia 10/01/2017 e, além disso, 
--imprima a data e o número de notas fiscais?

--Dicas:

--Declare variáveis do tipo DATE: DATAINICIAL e DATAFINAL;
--Faça um loop testando se a data inicial é menor que a data final;
--Imprima a data e o número de notas na saída do Management Studio. Não esqueça de converter as variáveis para VARCHAR;
--Acrescente um dia à data.

DECLARE @DATAINICIAL DATE
DECLARE @DATAFINAL DATE
DECLARE @NUMNOTAS INT

SET @DATAINICIAL = '20170101'
SET @DATAFINAL = '20170110'

WHILE @DATAINICIAL <= @DATAFINAL
BEGIN
    SELECT @NUMNOTAS = COUNT(*) FROM [TABELA_DE_VENDAS] 
        WHERE DATA_VENDA = @DATAINICIAL
    PRINT CONVERT(VARCHAR(10), @DATAINICIAL) + ' --> ' 
        + CONVERT(VARCHAR(10), @NUMNOTAS)
    SELECT @DATAINICIAL = DATEADD(DAY, 1, @DATAINICIAL)
END