create database livraria;
use livraria;

create table cliente(
 
cod_cliente int primary key, 
 nome varchar(50),
  email varchar(60), 
  telefone_1 char(10),
 telefone_2 char(10),
  rua nvarchar(80),
  bairro varchar(40),
  cidade nvarchar(10),
  estado nvarchar(20)
);

create table pessoa_fisica(
  cod_cliente int primary key, 
  rg char(06),
  cpf char(11),
  foreign key (cod_cliente) references cliente (cod_cliente)
);

insert into pessoa_fisica (cod_cliente, rg, cpf)
values 
(09808777,'0102001', '09988777');

create table pessoa_juridica(
  cod_cliente int primary key,
  cnpj char(14),
  ie char(09),
  foreign key (cod_cliente) references cliente (cod_cliente)
);

create table pedido(
  cod_pedido int primary key ,
  codigo_cliente int ,
  data_pedido date , 
  foreign key (cod_pedido) references pedido (cod_pedido)
);

create table livro (
  cod_livro int primary key, 
  cod_editora int, 
  valor decimal (10,2), 
  ano_publicacao date, 
  categoria varchar(15),
  titulo nvarchar(60),
  autor varchar(30)
);

insert into livro (cod_livro, valor)
values 
(0102033,80);

create table item_pedido(
  cod_pedido int, 
  cod_item_pedido int primary key, 
  cod_livro int,  
  quantidade_pedido decimal, 
  foreign key (cod_pedido) references pedido(cod_pedido),
  foreign key (cod_livro) references livro(cod_livro)
);

create table editora( 

  cod_editora int primary key, 
  telefone_1 char(10), 
  telefone_2 char(10),
  nome_contrato varchar(60),
  email varchar(50),
  foreign key (cod_editora) references editora (cod_editora) 
);

create table estoque (
  cod_estoque int primary key ,
  cod_livro int,
  quantidade_estoque int,
  foreign key (cod_livro) references livro(cod_livro)
);

create table livro_item_pedido (
  cod_livro int,
  cod_pedido int,
  foreign key (cod_livro) references livro(cod_livro),
  foreign key (cod_pedido) references pedido(cod_pedido)
);

create table estoque_livro (
  cod_estoque int ,
  cod_livro int,
  foreign key (cod_estoque) references estoque (cod_estoque),
  foreign key (cod_livro) references livro(cod_livro)
);

create table editora_livro(
  cod_editora int,
  cod_livro int,
  foreign key (cod_editora) references editora (cod_editora),
  foreign key (cod_livro)  references  livro (cod_livro)
);

create table item_pedido_pedido(
  cod_pedido int,
  cod_item_pedido int,
  foreign key (cod_pedido) references pedido(cod_pedido),
  foreign key (cod_item_pedido) references item_pedido(cod_item_pedido)
);
--cliente
--1:1 com Pessoa Física  cod_cliente
--1:1 com Pessoa Jurídica cod_cliente
---1:n com Pedido cod_cliente
--Livro

--1:n com Estoque cod_livro
--1:n com Item_Pedido cod_livro

--editora

--1:n com Livro cod_editora

--Pedido

--1:n com Item_Pedido cod_pedido