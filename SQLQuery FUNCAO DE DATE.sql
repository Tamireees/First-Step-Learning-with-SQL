
SELECT GETDATE()

SELECT GETDATE() AS DATA_HOJE, DATEADD(DAY, 10, GETDATE()) AS DATA_DAQUI_10_DIAS

SELECT GETDATE() AS DATA_HOJE, DATEADD(DAY, -48, GETDATE()) AS DATA_48_DIAS_ATRAS

SELECT GETDATE() AS DATA_HOJE, DATEADD(DAY, 10, GETDATE()) AS DATA_DAQUI_10_DIAS,
DATEADD(DAY, -48, GETDATE()) AS DATA_48_DIAS_ATRAS,
DATEDIFF(DAY, '2023-01-01', GETDATE()) AS DIAS_DESDE_INICIO_ANO

SELECT GETDATE() AS DATA_HOJE, DATEPART(DAY, GETDATE()) AS DIA_DE_HOJE

SELECT ISDATE('2020-02-31')

SELECT ISDATE(DATETIMEFROMPARTS(2022, 02, 28, 00, 00, 00, 00))

SELECT DATEDIFF(YEAR, DATA_DE_NASCIMENTO, GETDATE()) FROM TABELA_DE_CLIENTES;

--Como seria a consulta que retornasse o nome do cliente e sua data de nascimento por extenso dia, dia da semana, m�s e ano?

--Dica: Mais uma fun��o de data que voc� deve pesquisar na documenta��o. Chama-se DATENAME. Use ela concatenando com o nome do cliente.

SELECT * FROM TABELA_DE_CLIENTES

SELECT DATENAME(year, DATA_DE_NASCIMENTO)  
    ,DATENAME(month, DATA_DE_NASCIMENTO)  
    ,DATENAME(day, DATA_DE_NASCIMENTO)  
    ,DATENAME(dayofyear, DATA_DE_NASCIMENTO)  
    ,DATENAME(weekday, DATA_DE_NASCIMENTO) FROM TABELA_DE_CLIENTES;  

	SELECT NOME + ' nasceu em ' + 
DATENAME (WEEKDAY,DATA_DE_NASCIMENTO) + ',' +
DATENAME (DAY,DATA_DE_NASCIMENTO) + ' de ' +
DATENAME(MONTH, DATA_DE_NASCIMENTO) + ' de ' +
DATENAME(YEAR, DATA_DE_NASCIMENTO) AS DATA_EXTENSO
FROM TABELA_DE_CLIENTES;