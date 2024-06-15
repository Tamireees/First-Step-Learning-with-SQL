CREATE TABLE TAB_IDENTITY
(ID INT IDENTITY(1,1) NOT NULL,
DESCRITOR VARCHAR (20) NULL);

SELECT * FROM TAB_IDENTITY

INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE X') 


INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE Y')
                                          , ('CLIENTE Z')
										  , ('CLIENTE W')
										  , ('CLIENTE T')
										  , ('CLIENTE H'); 
----------------------------------------------------------------------------------------------------
										  
SELECT * FROM TAB_IDENTITY

DELETE FROM TAB_IDENTITY WHERE ID = 1
----------------------------------------------------------------------------------------------------
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE B')
--------------------------------------------------------------------------------------
DELETE FROM TAB_IDENTITY WHERE ID = 7
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE C')

SELECT * FROM TAB_IDENTITY
--------------------------------------------------------------------------------------

CREATE TABLE TAB_IDENTITY2
(ID INT IDENTITY(100,5) NOT NULL,
DESCRITOR VARCHAR (20) NULL);


INSERT INTO TAB_IDENTITY2 (DESCRITOR) VALUES ('CLIENTE Y')
                                          , ('CLIENTE Z')
			       			              , ('CLIENTE W')
										  , ('CLIENTE T')
										  , ('CLIENTE H'); 

SELECT * FROM TAB_IDENTITY2


---------------------------------------------------------------------------------------------------------