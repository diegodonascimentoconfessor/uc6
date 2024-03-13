 
 create database app99
 use app99
 
 
 create  table aplicativo(
  nome nvarchar(25),
  telefone char (10),
  site_aplicativo varchar (150),
  endereco varchar(80),
  cnpj char (14),
  email varchar(60)
);

create table endereco (
  cep_endereco varchar(150),
  rua_endereco_destino varchar,
  numero_endereco int,
  endereco_embarque varchar,
  bairro_endereco varchar  (100),
  cidade_endereco varchar(100),
  id_endereco int primary key 
);

create table carteira (
  id_carteira int primary key ,
  saldo int,
  transacoes INT,
  associado_cartao varchar
);

create table veiculo (
  placa_veiculo char (10),
  cor_veiculo varchar(50),
  modelo_veiculo varchar (15),
  ano_veiculo date,
  id_veiculo int primary key 
);

create table conta (
  nome varchar (50),
  telefone char(10),
  cpf char(11) ,
  email VARCHAR(60),
  id_conta int, 
  foto binary ,  
  historico_corridas nvarchar 
);

create table motorista(
  cnh char (11),
  antecedentes_criminais text,
  localizacao_atual varchar (150),
  id_motorista int primary key 
);

create table passageiro (
  atual_localizacao_passageiro varchar ,
  score_passageiro int,
  id_passageiro int primary key 


);

create table carro(
  numero_passageiro int ,
  placa_veiculo char(10) 
);

CREATE TABLE MOTO (
  tipo_moto varchar (50)
);

create table corrida(
  distancia_corrida varchar (150),
  valor_corrida int ,
  id_corrida int  primary key ,
  horario_corrida time,
  tipo_corrida varchar (60)
);

create table pagamento (
  id_pagamento  int primary key ,
  valor_pagamento int,
  horario_pagamento timestamp,
  id_conta int
);

CREATE TABLE VALOR (
  id_pagamento int,
  id_corrida int,
  foreign key (id_pagamento) references pagamento (id_pagamento),
  foreign key (id_corrida) references corrida(id_corrida)
);

create table cartao (
  id_cartao int primary key,
  bandeira_cartao varchar(20),
  cvc_cartao char(3),
  vencimento_cartao date,
  titular_cartao varchar (50)
);

create table dinheiro(
  id_pagamento int primary key,
  valor_dinheiro int ,
   foreign key (id_pagamento) references pagamento (id_pagamento)
);

create table pix (
  id_pix int primary key,
  chave_pix varchar (70)
);


create table corrida_pagamento (
  id_corrida int,
  id_pagamento int,
  foreign key (id_corrida) references corrida(id_corrida),
  foreign key (id_pagamento) references pagamento(id_pagamento)
);



 


