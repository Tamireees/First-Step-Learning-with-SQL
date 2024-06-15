
SELECT * FROM VENDEDORES

BEGIN TRANSACTION

UPDATE VENDEDORES SET COMISSAO = COMISSAO * 1.1

COMMIT
-----------------------------------------------------------------------

BEGIN TRANSACTION

INSERT INTO VENDEDORES
VALUES ('239', 'Maria Joana', 'Copacabana', 0.2, '2015-01-01', 1);


SELECT * FROM VENDEDORES

ROLLBACK

-- Deve ser utilizado com muito cuidado, porque voc� v� que eu tranco a tabela e nenhum outro usu�rio consegue trabalhar.
--� legal voc� usar o BEGIN TRANSACTION quando voc� vai fazer uma opera��o sens�vel, ou por exemplo, um conjunto de opera��es 
--que pode ser que d� errado, e ent�o voc� queira voltar aos processamentos que voc� fez, enquanto voc� efetuou essas diversas 
--atualiza��es no seu banco.


