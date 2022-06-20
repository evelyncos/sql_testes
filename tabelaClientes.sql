
CREATE DATABASE dbClientes

USE dbClientes

create table clientes(

tel varchar (9) NOT NULL,
nome varchar(20) NOT NULL,
endereco varchar (30) NOT NULL,
num_pedidos int NOT NULL,
data_primeiro_pedido date NOT NULL,
PRIMARY KEY (tel)
)

CREATE PROCEDURE [dbo].[insereClientes]

@tel varchar (9),
@nome varchar(20),
@endereco varchar (30),
@num_pedidos int,
@data_primeiro_pedido date

AS
INSERT INTO clientes (tel, nome, endereco, num_pedidos, data_primeiro_pedido)
VALUE (@tel, @nome, @endereco, @num_pedidos, @data_primeiro_pedido)


CREATE PROCEDURE [dbo].[atualizaClientes]
@tel varchar (9),
@nome varchar(20),
@endereco varchar (30),
@num_pedidos int,
@data_primeiro_pedido date

AS

UPDATE clientes set nome = @nome,num_pedidos = @num_pedidos,data_primeiro_pedido = @data_primeiro_pedido WHERE tel = @tel

CREATE PROCEDURE [dbo].[pesquisaClientes]

@tel varchar (9)  = null
@nome varchar(20) = null
@opcao int

AS
IF @opcao = 1
BEGIN
  SELECT FROM * clientes WHERE tel = @tel
END
IF @opcao = 2
BEGIN 
  SELECT FROM * clientes WHERE nome LIKE @nome + '%'
END
