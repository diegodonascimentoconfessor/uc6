USE senac_bd

create table SENAC(
id_senac int  primary key,
nome varchar (60)not null,
endereco varchar (60)not null,
telefone char (11)not null,
email varchar  (60) unique, 
);
create table FUNCIONARIO (
id_funcionario int primary key, 
nome_funcionario varchar (50)not null,
idade_funcionario numeric (2)not null,
endereco_funcionario  varchar (80)not null,
email_funcionario varchar (60) unique, 
);

create table CURSO (
id_curso int primary key, 
nome_curso varchar (50)not null,
periodo_curso Date  not null, 
tipo_curso varchar (50) not null, 
);

create table DEPARTAMENTO(
id_departamento Int primary key, 
funcionario varchar (50) not null,
setor  varchar (50)not null, 

);

create table RECEPCAO (
id_recepcao int  primary key, 
nome_recepcionista varchar (60)not null,
tipo_curso  varchar (60)not null, 
informacao_curso varchar (250)not null,
pagamento decimal (10,2)not null,

);

create table TURMA(
id_turma int primary key, 
nome_turma varchar (50)not null, 
tipo_curso varchar (50)not null,
turno_curso varchar (40)not null,

);

create table ALUNO(
matricula_aluno int primary key, 
nome_aluno varchar (50)not null,
turma  varchar (50)not null,
turno  varchar (20)not null,
tipo_aluno varchar (25)not null,
email_aluno varchar (60) not null,

);
create table CONTRATACAO(
 id_senac int , 
 id_funcionario int,
  foreign key (id_senac) references SENAC (id_senac),
  foreign key  (id_funcionario) references FUNCIONARIO (id_funcionario),

); 

create table ORGANIZACAO(
id_senac int,
id_curso int,
foreign key (id_senac) references SENAC (id_senac),
foreign key (id_curso) references CURSO( id_curso),

);

create table SALA (
id_turma int,
id_curso int,
foreign key(id_turma) references TURMA (id_turma), 
foreign key (id_curso) references CURSO (id_curso),

);

create table MATRICULA (
id_turma int ,
matricula_aluno int, 
foreign key (id_turma) references TURMA (id_turma),
foreign key (matricula_aluno) references ALUNO(matricula_aluno),
);

create table ATENDIMENTO(
id_recepcao int, 
id_funcionario int, 
foreign key (id_recepcao) references RECEPCAO, 
foreign key (id_funcionario) references FUNCIONARIO(id_funcionario),


);

create TABLE  COODERNACAO (
id_departamento int,
id_funcionario int ,
foreign key ( 



)