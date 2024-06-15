create database [VENDAS SUCOS];

CREATE DATABASE [VENDAS SUCOS 2] 
ON (
    NAME = 'VENDAS_SUCOS_2_DAT', 
    FILENAME ='C:\TEMP\VENDAS_SUCOS_02.MDF', 
    SIZE = 10, 
    MAXSIZE = 50, 
    FILEGROWTH = 5
) 
LOG ON (
    NAME = 'VENDAS_SUCOS_2_LOG', 
    FILENAME ='C:\TEMP\VENDAS_SUCOS_02.LDF', 
    SIZE = 10, 
    MAXSIZE = 50, 
    FILEGROWTH = 5
);

DROP DATABASE [VENDAS SUCOS 2];