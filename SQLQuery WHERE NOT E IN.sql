SELECT * FROM TABELA_DE_PRODUTOS;

 --por exemplo, quem tem o sabor manga e o tamanho 470 ml, então eu vou aplicar um filtro

 SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'MANGA' AND TAMANHO = '470 ML';


 --Se eu aplicar o or, eu vou ver quando um produto ou é manga, ou é 470, ou os dois casos também, no or vai aparecer.
  SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'MANGA' OR TAMANHO = '470 ML';



SELECT * FROM TABELA_DE_PRODUTOS WHERE NOT (SABOR = 'MANGA' AND TAMANHO = '470 ML');

SELECT * FROM TABELA_DE_PRODUTOS WHERE NOT (SABOR = 'MANGA' OR TAMANHO = '470 ML');

--Nós podemos as vezes aplicar mais de uma expressão lógica, nós aplicamos aqui duas, mas podemos aplicar três, quatro, cinco.
SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'MANGA' OR SABOR = 'LARANJA' OR SABOR = 'MELANCIA';
--Outra opcao:
SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR in ('MANGA', 'LARANJA', 'MELANCIA');

SELECT * FROM TABELA_DE_CLIENTES WHERE CIDADE IN ('RIO DE JANEIRO', 'SAO PAULO');


SELECT * FROM TABELA_DE_CLIENTES WHERE CIDADE IN ('RIO DE JANEIRO', 'SAO PAULO') AND IDADE >= 20;

SELECT * FROM TABELA_DE_CLIENTES WHERE CIDADE IN ('RIO DE JANEIRO', 'SAO PAULO') AND (IDADE >= 20 AND IDADE <=25);

SELECT * FROM TABELA_DE_CLIENTES WHERE CIDADE IN ('RIO DE JANEIRO', 'SAO PAULO') AND (IDADE BETWEEN 20 AND 25);





