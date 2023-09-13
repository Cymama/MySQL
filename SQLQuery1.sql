-- Criando o banco de dados
create database gerenciament_padaria;
-- Usando o gerenciament_padaria
use gerenciament_padaria;
create table tbl_padaria(
   id_da_padaria int primary key,
   nome varchar(30),
   telefone char(15)

);

create table tbl_reserva_de_mesa(
     id_de_mesa int primary key,
	 preferencia char (20),
	 data_ date,
	 num_de_pessoa int, 
	 hora time

);

create table tbl_pedido(
    id_do_pedido int primary key,
	data_de_pedido date,
	hora_do_pedido time,
	quantidade int

);

create table tbl_endereco(
    id_endereco int primary key,
	rua varchar (20),
	numero varchar (10),
	bairro varchar (20),
	complemento char (10),
	cep char (8),
	cidade varchar (20),
	uf char (2)

);

create table tbl_cliente(
    id_cliente int primary key,
	cpf varchar (11),


);

create table tbl_produto(
    id_produto int primary key,
	nome varchar (30),
	preco float

);

create table pedido(
    id int primary key,
	id_cliente int,
	id_produto int,
	foreign key (id_cliente) references tbl_cliente(id_cliente),
	foreign key (id_produto) references tbl_produto(id_produto)

);

create table tbl_loja(
    id_produto int primary key,
	nome varchar (30),
	preco float

);