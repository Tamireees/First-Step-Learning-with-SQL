
--DECLARE @MATRICULA VARCHAR (5);
--DECLARE @PERCENTUAL FLOAT;
--DECLARE @NOME VARCHAR (100);
--DECLARE @DATA DATE;
--DECLARE @FERIAS BIT;
--DECLARE @BAIRRO VARCHAR (50);

--OU

SELECT * FROM [TABELA DE VENDEDORES];

DECLARE @MATRICULA VARCHAR (5), @PERCENTUAL FLOAT, @NOME VARCHAR (100), @DATA DATE, @FERIAS BIT, @BAIRRO VARCHAR (50);

SET @MATRICULA = '00240';
SET @NOME = 'Claudia Rodrigues';
SET @PERCENTUAL = 0.10;
SET @DATA = '2012-03-12';
SET @FERIAS = 1;
SET @BAIRRO = 'Jardim';

PRINT @MATRICULA;
PRINT @NOME;
PRINT @PERCENTUAL;
PRINT @DATA;
PRINT @FERIAS;
PRINT @BAIRRO;


INSERT INTO [TABELA DE VENDEDORES]
(MATRICULA, NOME, [PERCENTUAL COMISS�O], [DATA ADMISS�O], [DE FERIAS], BAIRRO)
VALUES
(@MATRICULA, @NOME, @PERCENTUAL, @DATA, @FERIAS, @BAIRRO);

PRINT 'UM VENDEDOR INCLUIDO'

--________________________________________________________________________________________________________________________________________

DECLARE @MATRICULA VARCHAR (5), @PERCENTUAL FLOAT, @NOME VARCHAR (100), @DATA DATE, @FERIAS BIT, @BAIRRO VARCHAR (50);

SET @MATRICULA = '00244';
SET @NOME = 'Roberto Araujo';

PRINT @MATRICULA;
PRINT @NOME;
PRINT @PERCENTUAL;
PRINT @DATA;
PRINT @FERIAS;
PRINT @BAIRRO;


INSERT INTO [TABELA DE VENDEDORES]
(MATRICULA, NOME, [PERCENTUAL COMISS�O], [DATA ADMISS�O], [DE FERIAS], BAIRRO)
VALUES
(@MATRICULA, @NOME, @PERCENTUAL, @DATA, @FERIAS, @BAIRRO);

PRINT 'UM VENDEDOR INCLUIDO'

--________________________________________________________________________________________________________________________________________
--DESAFIO
--Para colocarmos em pr�tica o que aprendemos at� aqui, que tal exercitarmos em um desafio? Pensando nisso, propomos a cria��o de 4 vari�veis com as caracter�sticas abaixo:

--Nome: Cliente - Tipo: Caracteres com 10 posi��es.
--Nome: Idade - Tipo: Inteiro.
--Nome: DataNascimento - Tipo: Data.
--Nome: Custo - Tipo: N�mero com casas decimais.

--DECLARE @CLIENTE VARCHAR (10), @IDADE INT, @DATANASCIMENTO DATE, @CUSTO FLOAT;
--________________________________________________________________________________________________________________________________________
--O T-SQL nos permite realizar a declara��o de vari�veis, o que foi poss�vel colocar em pr�tica atrav�s do desafio anterior.

--Al�m disso, verificamos no v�deo anterior a possibilidade de atribuir valores �s vari�veis que criamos.

--Pensando nisso, inicialize as vari�veis do desafio anterior com os seguintes valores:

--Nome: Cliente - Tipo: Caracteres com 10 posi��es - Valor: Jo�o
--Nome: Idade - Tipo: Inteiro - Valor: 10
--Nome: DataNascimento - Tipo: Data - Valor: 10/01/2007
--Nome: Custo - Tipo: N�mero com casas decimais - Valor: 10,23

--SET @Cliente = 'Jo�o';
--SET @Idade = 10;
--SET @DataNascimento = '20170110';
--SET @Custo = 10.23;
--________________________________________________________________________________________________________________________________________

DECLARE @CLIENTE VARCHAR (10), @IDADE INT, @DATANASCIMENTO DATE, @CUSTO FLOAT;

SET @Cliente = 'Jo�o';
SET @Idade = 10;
SET @DataNascimento = '20170110';
SET @Custo = 10.23;

PRINT @Cliente;
PRINT @Idade;
PRINT @DataNascimento;
PRINT @Custo;
--________________________________________________________________________________________________________________________________________

SELECT * FROM [TABELA DE VENDEDORES];
INSERT INTO [TABELA DE VENDEDORES]
(MATRICULA, NOME, [PERCENTUAL COMISS�O], [DATA ADMISS�O], [DE FERIAS], BAIRRO)
VALUES
(@MATRICULA, @NOME, @PERCENTUAL, @DATA, @FERIAS, @BAIRRO);