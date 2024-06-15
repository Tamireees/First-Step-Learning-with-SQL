 --Ter que escrever todos os nomes dos campos pode demorar um certo tempo, caso eu queira fazer a inclusão de um determinado produto.
 
 --Vamos fazer o seguinte: no banco VENDAS SUCOS, eu vou clicar com o botão direito do mouse sobre a tabela PRODUTOS e posicionar o 
 --mouse sobre a opção Script de Tabela como. Nos opções que forem exibidas, eu tenho INSERT Para, 
 --e eu vou escolher a opção Janela do Editor de Nova Consulta.

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
           ,'Light - 350 ml - Limão'
           ,'Limão'
           ,'350 ml'
           ,'Lata'
           ,3.25)
GO


--GO = ;