create database senac_bd;

 use senac_bd;

create table  SENAC (
    id_senac int primary key ,
    nome varchar (60) not null,
    endereco varchar (60) not null,
    telefone char (11) not null,
    email varchar (60) unique, 
    cnpj char (14) unique
);

 insert into SENAC (id_senac, nome, endereco, telefone, email, cnpj)
values 
(1234, 'SENAC ZN', 'Rua SENAC', '12345656577', 'senac@potengi.com.br', '1234567876544'),
(1235, 'SENAC Alecrim', 'Rua Alecrim', '32221187', 'senac@alecrim.br', '12345688766554');

create table FUNCIONARIO (
    id_funcionario int primary key , 
    nome_funcionario varchar(50) not null,
    idade_funcionario numeric (2) not null,
    endereco_funcionario varchar (80) not null,
    email_funcionario varchar (60) unique , 
    cpf_funcionario CHAR(11) unique ,
    cargo varchar (30) not null,
    telefone char (11) not null
);

insert into FUNCIONARIO (id_funcionario, nome_funcionario, idade_funcionario, endereco_funcionario, email_funcionario, cpf_funcionario, cargo, telefone)
values 
(4343, 'João', 40, 'Rua Brasil', 'joao@gmail.com', '09765443211', 'Instrutor', '54765454545'),
(4344, 'Pedro', 35, 'Rua das Rosas', 'pedro@hotmail.com', '0878776655', 'Recepcionista', '987876554'),
(4345, 'Danielle', 45, 'Rua Flor do Campo', 'danielle@gmail.com', '0909877668', 'Coordenadora', '8456544377'),
(4346, 'Henrique', 47, 'Rua Paraíso', 'henrique@gmail.com', '09977876767', 'Instrutor', '33553433232'),
(4347, 'Joana', 31, 'Rua das Flores', 'joana@hotmail.com', '097666655', 'Recepcionista', '86767766776'),
(4348, 'Emanuel', 49, 'Rua Doce', 'emanuel@gmail.com.br', '98977665555', 'Coordenador', '98776554443');

create table  CURSO (
id_curso int primary key , 
nome_curso varchar (50) not null,
periodo_curso varchar (20) not null, 
tipo_curso varchar (50) not null, 
unidade_senac varchar (50) not null,
vaga_curso int  not null,
valor decimal (10,2) not null,
carga_horaria varchar (50) not null
);

insert into CURSO (id_curso, nome_curso, periodo_curso, tipo_curso, unidade_senac, vaga_curso, valor, carga_horaria)
values 
(4545, 'Operador de Computador', '2 Meses', 'Técnico', 'SENAC ZN', 7, 1120.00, '120 horas'),
(4546, 'Desenvolvedor de Sistema', '12 meses', 'Técnico', 'SENAC Alecrim', 9, 10200.00, '1200 horas'),
(4547, 'Enfermagem', '13 meses', 'Técnico', 'SENAC ZN', 12, 14226.00, '1400 horas'),
(4548, 'Enfermagem', '13 meses', 'Técnico', 'SENAC Alecrim', 12, 14226.00, '1400 horas');
select * from CURSO
create table  DEPARTAMENTO (
id_departamento int primary key, 
funcionario varchar (50) not null,
setor varchar (50) not null, 
contrato date not null,
salario money not null,
data_nascimento date not null,
 unidade varchar (50) not null
);
insert into DEPARTAMENTO (id_departamento, funcionario, setor, contrato, salario, data_nascimento, unidade)
values
(8701, 'João', 'Setor Pedagógico', '2018-04-10', 3000.00, '1978-04-10', 'SENAC ZN'),
(8702, 'Pedro', 'Recepção', '2010-12-09', 3000.00, '1984-08-04', 'SENAC ZN'),
(8703, 'Danielle', 'Coordenação', '2019-07-09', 6000.00, '1975-09-15', 'SENAC ZN'),
(8704, 'Emanuel', 'Coordenação', '2007-05-08', 6000.00, '1978-12-20', 'SENAC Alecrim'),
(8705, 'Joana', 'Recepção', '2023-11-08', 2500.00, '1995-06-12', 'SENAC Alecrim'),
(8706, 'Henrique', 'Setor Pedagógico', '2019-06-23', 3000.00, '1980-03-28', 'SENAC Alecrim');


select *from DEPARTAMENTO

 create table RECEPCAO (
    id_recepcao int primary key , 
    nome_recepcionista varchar (60) not null, 
    informacao_curso varchar(250) not null
);

insert into RECEPCAO (id_recepcao, nome_recepcionista, informacao_curso)
values 
(4901, 'Joana', 'Todas as informações sobre cursos')

insert into RECEPCAO (id_recepcao, nome_recepcionista, informacao_curso)
values 
(4902, 'pedro',  'Todas as informações sobre cursos')
create table  TURMA (
    id_turma int primary key , 
    nome_turma varchar (50) not null, 
    tipo_curso varchar (50) not null,
    turno_curso varchar (40) not  null
);

insert TURMA (id_turma, nome_turma, tipo_curso, turno_curso)
values 
(8000, 'Operador de Computador', 'Técnico', 'Matutino'),
(8001, 'Desenvolvedor de Sistema', 'Técnico', 'Vespertino'),
(8002, 'Curso de Enfermagem', 'Técnico', 'Matutino'),
(8003, 'Curso de Enfermagem', 'Técnico', 'Vespertino');

 create table ALUNO (
    matricula_aluno int primary key , 
    nome_aluno varchar (50) not null,
    turma varchar (50) not null,
    turno varchar (20) not null,
    tipo_aluno varchar(25) not null,
    email_aluno varchar(60) unique,
    sexo Varchar (14) NOT NULL
);
 insert into  ALUNO (matricula_aluno, nome_aluno, turma, turno, tipo_aluno, email_aluno, sexo)
Values 
(9901, 'Joaquim', 'Desenvolvedor de Sistema', 'Matutino', 'PSG', 'joaquim@hotmail.com', 'Masculino'),
(9902, 'Paulo', 'Desenvolvedor de Sistema', 'Matutino', 'PSG', 'paulo@hotmail.com', 'Masculino'),
(9903, 'Igor', 'Desenvolvedor de Sistema', 'Matutino', 'PSG', 'igor@hotmail.com', 'Masculino'),
(9904, 'Mariana', 'Operador de Computador', 'Matutino', 'Bolsista', 'mariana@gmail.com', 'Feminino'),
(9905, 'Maria', 'Operador de Computador', 'Matutino', 'Bolsista', 'maria@gmail.com', 'Feminino'),
(9906, 'Madalena', 'Operador de Computador', 'Matutino', 'Bolsista', 'madalena@gmail.com', 'Feminino'),
(9907, 'Andre', 'Curso de Enfermagem', 'Matutino', 'Comercial', 'Andre@gmail.com', 'Masculino'),
(9908, 'Paula', 'Curso de Enfermagem', 'Matutino', 'Comercial', 'paula@gmail.com', 'Feminino'),
(9909, 'Flavia', 'Curso de Enfermagem', 'Matutino', 'Comercial', 'flavia@gmail.com', 'Feminino');

create table  ORGANIZACAO (
id_senac int, 
id_curso int,
nome_curso varchar(50) not null,
 tipo_curso varchar (50) not null,
 unidade_senac varchar (50) not null,
 foreign key  (id_senac) references  SENAC(id_senac),
  foreign key (id_curso) references CURSO(id_curso)
);

insert into ORGANIZACAO (id_senac, id_curso, nome_curso, tipo_curso, unidade_senac)
values 
    (1234, 4545, 'Operador de Computador', 'Técnico', 'SENAC ZN'),
    (1235, 4546, 'Desenvolvedor de Sistema', 'Técnico', 'SENAC Alecrim'),
    (1234, 4547, 'Enfermagem', 'Técnico', 'SENAC ZN'),
    (1234, 4548, 'Enfermagem', 'Técnico', 'SENAC Alecrim');

create table  SALA (
 id_turma int ,
 id_curso int , 
 nome_turma varchar (50) not null,
 tipo_curso varchar (50) not null,
 turno_curso VARCHAR(50) not null,
 foreign key (id_turma) references TURMA(id_turma),
  foreign key (id_curso) references CURSO(id_curso)
);

insert into SALA (id_curso, id_turma, nome_turma, tipo_curso, turno_curso)
values 
    (4545, 8000, 'Operador de Computador', 'Técnico', 'Matutino'),
    (4546, 8001, 'Desenvolvedor de Sistema', 'Técnico', 'Vespertino'),
    (4547, 8002, 'Enfermagem', 'Técnico', 'Matutino'),
    (4548, 8003, 'Enfermagem', 'Técnico', 'Vespertino');

create table  MATRICULA (
id_turma INT,
 matricula_aluno int ,
 nome_aluno varchar (50) not null ,
 nome_turma varchar (50) not null,
foreign key (id_turma) references TURMA(id_turma),
foreign key (matricula_aluno) references  ALUNO(matricula_aluno)
);

insert into  MATRICULA (id_turma, matricula_aluno, nome_aluno, nome_turma)
values 
(8001, 9901, 'Joaquim', 'Desenvolvedor de Sistema'),
(8001, 9902, 'Paulo', 'Desenvolvedor de Sistema'),
(8001, 9903, 'Igor', 'Desenvolvedor de Sistema'),
(8000, 9904, 'Mariana', 'Operador de Computador'),
(8000, 9905, 'Maria', 'Operador de Computador'),
(8000, 9906, 'Madalena', 'Operador de Computador'),
 (8003, 9907, 'Andre', 'Enfermagem'),
 (8003, 9908, 'Paula', 'Enfermagem'),
 (8003, 9909, 'Flavia', 'Enfermagem');

create table  ATENDIMENTO (
id_recepcao int primary key,
 id_funcionario int  ,
 nome_funcionario VARCHAR(50),
 foreign key (id_recepcao) references  RECEPCAO(id_recepcao),
foreign key (id_funcionario) references  FUNCIONARIO(id_funcionario)
);

insert into  ATENDIMENTO (id_recepcao, id_funcionario, nome_funcionario)
values 
    (4901, 4344, 'Pedro'),
    (4902, 4347, 'Joana');

create table COORDENACAO (
id_departamento int ,
id_funcionario int ,
nome_funcionario varchar (50),
foreign key (id_funcionario) references  FUNCIONARIO(id_funcionario),
foreign key (id_departamento) references  DEPARTAMENTO(id_departamento)
);

insert into COORDENACAO (id_departamento, id_funcionario, nome_funcionario)
values 
(8703, 4346, 'Daniele'),
(8704, 4348, 'Emanuel');

create table GESTAO(
 id_senac int,
 id_curso int , 
 nome_curso varchar (50) not null,
 tipo_curso varchar (50) not null ,
 unidade_senac varchar (50) not null
 foreign key (id_senac) references SENAC (id_senac),
 foreign key (id_curso) references CURSO (id_curso)
);

insert into  GESTAO (id_senac, id_curso, nome_curso, tipo_curso, unidade_senac)
values 
 (1234, 4545, 'Operador de Computador', 'Técnico', 'SENAC ZN'),
 (1235, 4546, 'Desenvolvedor de Sistema', 'Técnico', 'SENAC Alecrim'),
 (1234, 4547, 'Enfermagem', 'Técnico', 'SENAC ZN'),
 (1234, 4548, 'Enfermagem', 'Técnico', 'SENAC Alecrim');

create table  LABORATORIO (
 id_turma int ,
 id_curso int ,
 nome_turma varchar (50) not null,
 tipo_curso varchar (50) not null,
 turno_curso VARCHAR(50) not null,
 foreign key (id_turma) references  TURMA(id_turma),
 foreign key  (id_curso) references  CURSO(id_curso)
);

insert into  LABORATORIO (id_curso, id_turma, nome_turma, tipo_curso, turno_curso)
values
(4545, 8000, 'Operador de Computador', 'Técnico', 'Matutino'),
(4546, 8001, 'Desenvolvedor de Sistema', 'Técnico', 'Vespertino'),
(4547, 8002, 'Enfermagem', 'Técnico', 'Matutino'),
(4548, 8003, 'Enfermagem', 'Técnico', 'Vespertino');

create table  MATRICULA (
id_turma int ,
matricula_aluno int ,
nome_aluno varchar (50) not null ,
nome_turma varchar (50) not null,
foreign key (id_turma) references TURMA(id_turma),
Foreign key  (matricula_aluno) references ALUNO(matricula_aluno)
);
 insert MATRICULA (id_turma, matricula_aluno, nome_aluno, nome_turma)
values 
    (8001, 9901, 'Joaquim', 'Desenvolvedor de Sistema'),
    (8001, 9902, 'Paulo', 'Desenvolvedor de Sistema'),
    (8001, 9903, 'Igor', 'Desenvolvedor de Sistema'),
    (8000, 9904, 'Mariana', 'Operador de Computador'),
    (8000, 9905, 'Maria', 'Operador de Computador'),
    (8000, 9906, 'Madalena', 'Operador de Computador'),
    (8003, 9907, 'Andre', 'Enfermagem'),
    (8003, 9908, 'Paula', 'Enfermagem'),
    (8003, 9909, 'Flavia', 'Enfermagem');

create table  ATENDIMENTO (
 id_recepcao int ,
 id_funcionario int ,
 nome_funcionario varchar (50)not null
foreign key (id_recepcao) references RECEPCAO(id_recepcao),
foreign key (id_funcionario) references  FUNCIONARIO(id_funcionario)
);

 insert into ATENDIMENTO (id_recepcao, id_funcionario, nome_funcionario)
values 
(4909, 4344, 'Pedro'),
(4902, 4347, 'Joana');

create table  COORDENACAO (
 id_departamento int ,
 id_funcionario int ,
  nome_funcionario varchar (50),
  foreign key  (id_funcionario) references FUNCIONARIO(id_funcionario),
  foreign key  (id_departamento) references DEPARTAMENTO(id_departamento)
);

insert into COORDENACAO (id_departamento, id_funcionario, nome_funcionario)
values 
 (8703, 4346, 'Daniele'),
(8704, 4348, 'Emanuel');

create table SETOR_PEDAGOGICO (
id_departamento int ,
id_turma int ,
nome_funcionario varchar (50) not null,
foreign key  (id_departamento) references DEPARTAMENTO(id_departamento),
foreign key (id_turma) references TURMA (id_turma)
);

insert into  SETOR_PEDAGOGICO (id_departamento, id_turma, nome_funcionario)    
values 
(8701, 8000, 'João'),
(8710, 8001, 'João'),
(8707, 8002, 'Henrique'),
 (8717, 8003, 'Henrique');

	select  *from SETOR_PEDAGOGICO

create table INSTRUTOR (
id_funcionario int primary key ,
nome_funcionario varchar (50),

);

insert into  INSTRUTOR (id_funcionario, nome_funcionario)
values
 (4343, 'João'),
 (4346, 'Henrique');
 select *from INSTRUTOR

create table  RECEPCIONISTA (
id_funcionario int primary key ,
 nome_funcionario varchar (50) not null,
);

insert into   RECEPCIONISTA (id_funcionario, nome_funcionario)
values 
(4344, 'Pedro'),
(4347, 'Joana');
	select *from RECEPCIONISTA
create table  COORDENADOR (
id_funcionario int primary key ,
nome_funcionario varchar (50) not null,
foreign key  (id_funcionario) references FUNCIONARIO(id_funcionario)
);

 insert into  COORDENADOR (id_funcionario, nome_funcionario)
values 
(4346, 'Daniele'),
(4348, 'Emanuel');

create table  TECNICO (
id_curso int primary key ,
nome_curso varchar(50),
foreign key (id_curso) references CURSO (id_curso)
);

insert into  TECNICO (id_curso, nome_curso)
values 
    (4545, 'Operador de Computador'),
    (4546, 'Desenvolvedor de Sistema'), 
    (4547, 'Enfermagem'),
    (4548, 'Enfermagem');

create table LIVRE (
    id_curso int primary key ,
    nome_curso varchar(50),
    FOREIGN KEY (id_curso) REFERENCES CURSO(id_curso)
);

insert  LIVRE (id_curso, nome_curso)
values 
    (4549, 'LGPD');

create table PSG (
    matricula_aluno int primary key ,
    nome_aluno varchar (50) not null,
foreign key (matricula_aluno) references  ALUNO  ( matricula_aluno)
);

insert into PSG (matricula_aluno, nome_aluno)
values 
    (9901, 'Joaquim'),
    (9902, 'Paulo'), 
    (9903, 'Igor');

create table COMERCIAL (
matricula_aluno int primary key ,
nome_aluno VARCHAR(50)not null,
foreign key (matricula_aluno) references ALUNO (matricula_aluno)

);

insert into COMERCIAL (matricula_aluno, nome_aluno)
values 
(9907, 'Andre'),
(9908, 'Paula'),
(9909, 'Flavia');

create table BOLSISTA (
matricula_aluno int primary key,
nome_aluno varchar (50) not null,
foreign key (matricula_aluno) references ALUNO (matricula_aluno)
);

insert into BOLSISTA (matricula_aluno, nome_aluno)
values  
 (9904, 'Mariana'),
(9905, 'Maria'),
 (9906, 'Madalena');



-- 1 questão 
select*from FUNCIONARIO
-- Seleciona todos os funcionários

--Encontre o total de alunos matriculados em cada curso
--2 questão 

-- 3  questão 
select funcionario, salario
 from DEPARTAMENTO
order by salario desc;
--seleciona o nome do funcionário e seu salário, ordenado pelo salário em ordem decrescente
-- 4 questão 

select  count(*) 
from  CURSO
group by tipo_curso
--Conta o número de cursos agrupados por tipo de curso


-- 9 questão 
--seleciona o nome do curso, carga horária e valor de todos os cursos


SELECT nome_curso, carga_horaria, valor
 from CURSO;
 select * from DEPARTAMENTO

-- 10 questão 
select *
from ALUNO
where  nome_aluno like '%a%';
 --Selecionar todos os alunos cujo nome contenha a letra a

--13 questão 
select c.nome_curso, count (m.matricula_aluno) -c.vaga_curso   as vagas_disponiveis
from  CURSO c
join  MATRICULA m on c.id_curso =  id_curso
group by c.id_curso, c.nome_curso, vaga_curso
order by  vagas_disponiveis desc;
--seleciona o nome do curso e o número de vagas disponíveis

--Encontre os funcionários que foram contratados nos últimos 12 meses
select  *
from  FUNCIONARIO f
 join DEPARTAMENTO d on f. id_funcionario= id_departamento
where contrato >= dateadd  (month, 12, getdate())

-- seleciona todos os funcionários que foram contratados nos últimos 12 meses





