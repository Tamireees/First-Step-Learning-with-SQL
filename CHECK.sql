
CREATE TABLE TAB_CHECK
(ID INT IDENTITY(100,5) NOT NULL,
NOME VARCHAR(50) NULL,
IDADE INT NULL,
CIDADE VARCHAR(50) NULL,
CONSTRAINT CHK_IDADE CHECK (IDADE >= 18));

INSERT INTO TAB_CHECK
VALUES
('JOAO', 19, 'RIO DE JANEIRO') 

INSERT INTO TAB_CHECK
VALUES
('PEDRO', 16, 'RIO DE JANEIRO') 
-- The INSERT statement conflicted with the CHECK constraint "CHK_IDADE". The conflict occurred in database "VENDAS SUCOS", 
--table "dbo.TAB_CHECK", column 'IDADE'.
----------------------------------------------------------------------------------------------------------------------

INSERT INTO TAB_CHECK
VALUES
('PEDRO', 18, 'RIO DE JANEIRO') 

SELECT * FROM TAB_CHECK
-------------------------------------------------------------------------------------------------------------------------------


CREATE TABLE TAB_CHECK2
(ID INT IDENTITY(100,5) NOT NULL,
NOME VARCHAR(50) NULL,
IDADE INT NULL,
CIDADE VARCHAR(50) NULL,
CONSTRAINT CHK_IDADE2 CHECK ((IDADE >= 18 AND CIDADE = 'RIO DE JANEIRO') OR (IDADE >= 16 AND CIDADE =  'SAO PAULO')));

INSERT INTO TAB_CHECK2 VALUES ('JOAO', 19, 'RIO DE JANEIRO') 

INSERT INTO TAB_CHECK2 VALUES ('PEDRO', 16, 'RIO DE JANEIRO') --The INSERT statement conflicted with the CHECK constraint "CHK_IDADE2". 
                                                              --The conflict occurred in database "VENDAS SUCOS", table "dbo.TAB_CHECK2".

INSERT INTO TAB_CHECK2 VALUES ('JOAO', 19, 'SAO PAULO')