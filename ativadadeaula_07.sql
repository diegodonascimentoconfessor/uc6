create database livraria 
 use livraria 
  create table cliente(
  cod_cliente int primary key, 
  nome varchar (50),
  email varchar (60), 
  telefone_1 char (10),
  telefone_2 char (10),
  rua nvarchar (80),
  bairro varchar (40),
  cidade nvarchar (10),
  estado nvarchar (20)
);

create table pessoa_fisica(
cod_cliente int  primary key, 
rg char (08) ,
cpf char  (11) 
foreign key (cod_cliente) references cliente (cod_cliente) 

);
insert into pessoa_fisica ( rg, cpf)
values 
('0102001', '09988777')
 select * from pessoa_fisica 

create table pessoa_juridica(
cod_cliente int  primary key,
cnpj char(14),
ie  char (11)

foreign key (cod_cliente) references  cliente (cod_cliente) 

);

create table pedido(
cod_pedido int,
codigo_cliente int ,
 data_pedido date , 
 foreign key  (cod_pedido) references (cod_pedido)
);

create table livro (
cod_livro int primary key, 
cod_editora int, 
valor int , 
ano_publicacao date, 
categoria varchar (15),
titulo nvarchar (60),
autor varchar (30),


);
insert into livro (cod_livro, valor) 
values 
(0102033, 80)
select * from livro 

create table item_pedido(
cod_pedido int primary key ,
cod_livro int , 
quantidade_pedido decimal, 


);

create table editora( 
cod_editora int primary key, 
telefone_1 char (10), 
telefone_2 char (10),
nome_contrato varchar (60),
email varchar (50) 

foreign key (cod_editora) references editora (cod_editora) 
 );

 create table estoque (
 cod_estoque int,
 cod_livro int,
 quantidade_estoque int 
 );

