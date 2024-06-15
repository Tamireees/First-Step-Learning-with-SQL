SELECT * FROM  [NOTAS FISCAIS] WHERE CPF = '7771579779'

CREATE FUNCTION ListaNotasClientes (@CPF AS VARCHAR (11))
RETURNS TABLE
AS
RETURN SELECT * FROM  [NOTAS FISCAIS] WHERE CPF = @CPF

SELECT * FROM [dbo].[ListaNotasClientes]('1471156710')

SELECT COUNT(*) FROM [dbo].[ListaNotasClientes]('1471156710')
