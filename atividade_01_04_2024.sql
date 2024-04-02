

  create table unidade_biblioteca(
  id_unidade varchar (20) primary  key,
  nome_unidade varchar(30),
  cnpj char (14),
  quantidade_livro decimal (10,2)



  );
 
 insert into unidade_biblioteca (id_unidade, nome_unidade, cnpj, quantidade_livro)
values ('UN01', 'Unidade Norte', '34154385000163', '10.000');



 insert into unidade_biblioteca (id_unidade, nome_unidade, cnpj, quantidade_livro)
values ('UN02', 'Unidade sul', '32369494000172', '11.000');


insert into unidade_biblioteca (id_unidade, nome_unidade, cnpj, quantidade_livro)
values ('UN03', 'Unidade leste','19888833000169' , '12.000');



  create table  EMPRESTIMO (
    id_emprestimo char (10) primary key,
	nome_usuario varchar (30),
    data_emprestimo date ,
	data_devolucao date,
	id_usuraio char (11),
	nome_livro varchar (60),
	autor varchar (20)
);
 insert into EMPRESTIMO (id_emprestimo, nome_usuario, data_emprestimo, data_devolucao,id_usuraio, nome_livro, autor)
values ('EP090877', 'italo', '2023-01-20', '2023-04-20','U0001', ' a morenhinha ','Joaquim Manuel');


insert into  EMPRESTIMO (id_emprestimo, nome_usuario, data_emprestimo, data_devolucao,id_usuraio, nome_livro,autor)
values ('EP090878', 'pedro', '2023-02-20', '2023-05-20','U0002', ' a Origem  da biblia','Philip Wesley ')
insert into  EMPRESTIMO (id_emprestimo, nome_usuario, data_emprestimo, data_devolucao,id_usuraio, nome_livro,autor)
values  ('EP090879', 'joao', '2023-03-20', '2023-06-20','U0003','porque virei a Direita','João Pereira ');

insert into  EMPRESTIMO (id_emprestimo, nome_usuario, data_emprestimo, data_devolucao,id_usuraio,nome_livro,autor )
values ('EP090880', 'paulo', '2023-04-20', '2023-07-20','U0004', ' o lado negro do comunismo', 'Gustavo Henrique')
insert into  EMPRESTIMO (id_emprestimo, nome_usuario, data_emprestimo, data_devolucao,id_usuraio , nome_livro,autor)
VALUES ('EP090881', 'hugo', '2023-05-20', '2023-08-20','U0005',' o Brasil em perigo',' Eneas Carneiros' );


select  nome_usuario
from EMPRESTIMO
where month(data_emprestimo) = 1 and year (data_emprestimo) = 2023;

select  nome_usuario, nome_livro
from EMPRESTIMO
where id_usuraio = 'U0001';















use sistema_biblioteca
-- questão 1 
select titulo, autor from LIVRO
join  SOCIOLOGIA on 
SOCIOLOGIA.numero_registro = livro.numero_registro 



 -- questão 2 número de funcionario biblioteracrio select * from BIBLIOTECARIO
 select * from BIBLIOTECARIO

 -- questão 3
SELECT * FROM LIVRO WHERE ano_publicacao =  2000;

-- questão 4 

select id_unidade, nome_unidade, count(*) as total_livros
from unidade_biblioteca
group by  id_unidade, nome_unidade;



select titulo, autor from LIVRO
join  TECNOLOGIA on 
tecnologia.numero_registro = livro.numero_registro 


--  questão 5 
SELECT *FROM EVENTO
WHERE tipo = 'Workshop' AND data > '2020';


-- questão 6

select  nome_usuario
from EMPRESTIMO
where month(data_emprestimo) = 1 and year (data_emprestimo) = 2023;

--questão 7 
SELECT * FROM LIVRO WHERE Titulo LIKE '%Python%';

-- questão 8 
select count(*) as  cnpj from PERIODICO_BIBLIOTECA
where cnpj = '12345678000123';


--questão 10
 -- questão 11 
select * from EVENTO
where tipo = 'palestra' and custo > 100;

-- questão 12

select livro.titulo, livro.ano_publicacao
from livro
join CIENCIA on livro.numero_registro = ciencia.numero_registro
and ano_publicacao ='2010';

 --questão 13
  select * from ATENDENTE where nome like '%Maria%'

  
  -- questão 14 
 select nome_usuario
from  LIVRO
join  EMPRESTIMO on LIVRO.titulo =  EMPRESTIMO.id_usuraio  
where  EMPRESTIMO.id_emprestimo > 5  
group by  titulo;

  
  
  -- questão 15 SELECT nome_usuario
select nome_usuario
from EMPRESTIMO
where nome_livro like '%tecnologia%' or autor like '%tecnologia%'
group by nome_usuario;


 -- questão 16
 select evento.data, evento.tipo
from evento
where tipo='palestra' and data < '2022';

 

 -- questão 17 
select periodico.titulo
from periodico
where titulo like '%saúde%';


-- questão 18 Listar os nomes dos estagiários que começam com a letra 'L
select * from ESTAGIARIO where nome like '% L%'
 
 
 --questão 19

 select livro.titulo, livro.ano_publicacao
from livro
join  SOCIOLOGIA on livro.numero_registro = SOCIOLOGIA.numero_registro
 where ano_publicacao > '1990' and ano_publicacao < '1999';
 
 
 -- questão 20 

 select  nome_livro, autor
from EMPRESTIMO
where  month (data_emprestimo) = 2 and  year (data_emprestimo) = 2023;
