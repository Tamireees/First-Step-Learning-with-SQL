 --Ter que escrever todos os nomes dos campos pode demorar um certo tempo, caso eu queira fazer a inclus�o de um determinado produto.
 
 --Vamos fazer o seguinte: no banco VENDAS SUCOS, eu vou clicar com o bot�o direito do mouse sobre a tabela PRODUTOS e posicionar o 
 --mouse sobre a op��o Script de Tabela como. Nos op��es que forem exibidas, eu tenho INSERT Para, 
 --e eu vou escolher a op��o Janela do Editor de Nova Consulta.

 USE [VENDAS SUCOS]
GO

INSERT INTO [dbo].[PRODUTOS]
           ([CODIGO]
           ,[DESCRITOR]
           ,[SABOR]
           ,[TAMANHO]
           ,[EMBALAGEM]
           ,[PRECO_LISTA])
     VALUES
           ('1040113'
           ,'Light - 350 ml - Lim�o'
           ,'Lim�o'
           ,'350 ml'
           ,'Lata'
           ,3.25)
GO


--GO = ;