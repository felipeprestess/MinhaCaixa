/*
Assuntos: Create database, tidos de dados, inserção, update e delete
*/
SET DATEFORMAT YMD
GO
USE master
go
IF EXISTS (SELECT * FROM SYS.databases WHERE NAME = 'MinhaCaixa2')
drop database MinhaCaixa2
go
CREATE DATABASE MinhaCaixa2
GO
USE MinhaCaixa2
GO
CREATE TABLE Grupo
(
GrupoCodigo INT IDENTITY(1,1) CONSTRAINT PK_Grupo PRIMARY KEY,
GrupoNome VARCHAR(50),
GrupoRazaoSocial VARCHAR(50),
GrupoCNPJ varchar(20),
)
INSERT Grupo
        (
          GrupoNome ,
          GrupoRazaoSocial ,
          GrupoCNPJ
        )
VALUES  (
          'Minha Caixa Finanças Pessoais',
          'Minha Caixa SA' ,
          '11.111.111/0001-11'
        )
CREATE TABLE Filial
(
FilialCodigo INT IDENTITY(1,1) CONSTRAINT PK_Filial PRIMARY KEY,
GrupoCodigo INT,
FilialNome VARCHAR(50),
FilialRazaoSocial VARCHAR(50),
FilialCNPJ varchar(20),
)
INSERT dbo.Filial
        (GrupoCodigo
        ,FilialNome
        ,FilialRazaoSocial
        ,FilialCNPJ
        )
VALUES  (1,
		 'Minha Caixa Serviços Bancários',
          'Banco Minha Caixa' ,
          '22.222.222/0001-22'
        ),
		(1,
		 'Minha Caixa Cartões de Crédito',
          'Cartões Minha Caixa' ,
          '22.222.222/0001-22'
        )
GO
CREATE table Clientes
(
ClienteCodigo int IDENTITY CONSTRAINT PK_CLIENTES PRIMARY KEY,
ClienteCPF varchar (50),
ClienteNome varchar (50),
ClienteSobrenome varchar (50),
ClienteSexo CHAR(1),
ClienteNascimento DATETIME,
ClienteEstadoCivil CHAR(1),
ClienteRua varchar(1000),
ClienteNumero INT,
ClienteBairro VARCHAR(50),
ClienteCEP VARCHAR(25),
ClienteCidade VARCHAR(50),
ClienteEstado CHAR(2),
ClientePais VARCHAR(50),
ClienteRendaAnual MONEY,
ClienteTelefone VARCHAR(50),
ClienteEmail VARCHAR(80)
) 
