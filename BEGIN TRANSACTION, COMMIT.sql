
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

-- Deve ser utilizado com muito cuidado, porque você vê que eu tranco a tabela e nenhum outro usuário consegue trabalhar.
--É legal você usar o BEGIN TRANSACTION quando você vai fazer uma operação sensível, ou por exemplo, um conjunto de operações 
--que pode ser que dê errado, e então você queira voltar aos processamentos que você fez, enquanto você efetuou essas diversas 
--atualizações no seu banco.


