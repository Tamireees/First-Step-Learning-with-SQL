INSERT INTO PRODUTOS
(CODIGO, DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA)
VALUES
('1040107', 'Light - 350ml - Melancia','Melancia', '350 ml','Lata', 4.56);

INSERT INTO PRODUTOS
(CODIGO, DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA)
VALUES
('1040108', 'Light - 350ml - Graviola','Graviola', '350 ml','Lata', 4.00);

INSERT INTO PRODUTOS
(CODIGO, DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA)
VALUES
('1040109', 'Light - 350ml - A�ai','A�ai', '350 ml','Lata', 5.00);

INSERT INTO PRODUTOS
VALUES
('1040111', 'Light - 350ml - Manga','Manga', '350 ml','Lata', 3.20), 
('1040112', 'Light - 350ml - Ma�a','Ma�a', '350 ml','Lata', 4.20);

INSERT INTO CLIENTES
VALUES
('1471156710', '�rica Carvalho', 'R. Iriquitia', 'Jardins', 'S�o Paulo', 'SP', '80012212', '19900901', 27, 'F', 170000, 24500, 0),
('19290992743', 'Fernando Cavalcante', 'R. Dois de Fevereiro', '�gua Santa', 'Rio de Janeiro', 'RJ', '22000000', '20000212', 18, 'M', 100000, 20000, 1),
('2600586709', 'C�sar Teixeira', 'Rua Conde de Bonfim', 'Tijuca', 'Rio de Janeiro', 'RJ', '22020001', '20000212', 18, 'M', 120000, 22000, 0);

INSERT INTO [dbo].[CLIENTES] ([CPF], [NOME], [ENDERE�O], 
    [BAIRRO], [CIDADE], [ESTADO], [CEP], [DATA NASCIMENTO], 
    [IDADE], [GENERO], [LIMITE DE CR�DITO], [VOLUME DE COMPRA], 
    [PRIMEIRA COMPRA])
VALUES ('1471156710', '�rica Carvalho', 'R. Iriquitia', 'Jardins', 'S�o Paulo', 
        'SP', '80012212', '19900901', 27, 'F', 170000, 24500,0), 
    ('19290992743', 'Fernando Cavalcante', 'R. Dois de Fevereiro', '�gua Santa', 
        'Rio de Janeiro', 'RJ', '22000000', '20000212', 18, 'M', 100000, 20000, 1), 
    ('2600586709', 'C�sar Teixeira', 'Rua Conde de Bonfim', 'Tijuca', 
        'Rio de Janeiro', 'RJ', '22020001', '20000312', 18, 'M', 120000, 22000, 0)

