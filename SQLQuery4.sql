
create table  promocao(
    id_promocao int PRIMARY KEY, 
    codigo_promocao int ,
    desconto int,
    data_validade date 
);

create table corrida (
    distancia_corria varchar (100),
    valor_corrida int,
    id_corrida int ,
    pagamento_corrida INT,
    horario_corrida DATE,
    tipo_corrida VARCHAR(50)
	primary key (id_corrida)
);

INSERT INTO promocao (id_promocao, codigo_promocao, desconto, data_validade)
VALUES 
(1, 214411, 102200, '2022-01-02');

SELECT * FROM promocao;

CREATE TABLE pagamento(
    id_pagamento INT ,
    horario_pagamento DATE, 
    valor_pagamento INT,
    Data_pagamento DATE
	primary key (id_pagamento)
);

insert  into  pagamento (id_pagamento, valor_pagamento, Data_pagamento)
values  (10200, 30, '2024-12-03');

select  * from pagamento;

create table  valor(
 id_valor char (11) ,
 valor_base int, 
 taxa_quilometro varchar (60),
  taxa_servico int 
  primary key (id_valor)
);

create table  pasageiro(
 id_passageiro char (11),
 localizacao_atual varchar(150)
);

create table  veiculo (
    id_veiculo int, 
    placa char(11),
    modelo varchar(55),
    cor varchar(55),
    ano date
	primary key (id_veiculo)
);

insert into veiculo (id_veiculo, ano)
values  (10011, 2010);

select *from  veiculo;

create table  corrida_pagamento (
    id_corrida int,
    id_pagamento int,
    foreign key (id_corrida) references corrida(id_corrida),
    foreign key  (id_pagamento) references pagamento(id_pagamento)
);

CREATE TABLE corrida_promocao (
    id_corrida int,
    id_promocao int,
    foreign key (id_corrida) references  corrida(id_corrida),
    foreign key (id_promocao) references  promocao(id_promocao)
);

