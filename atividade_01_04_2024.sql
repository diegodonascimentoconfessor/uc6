





















use sistema_biblioteca
-- quest�o 1 
select titulo, autor from LIVRO
join  SOCIOLOGIA on 
SOCIOLOGIA.numero_registro = livro.numero_registro 



 -- quest�o 2 n�mero de funcionario biblioteracrio select * from BIBLIOTECARIO
 select * from BIBLIOTECARIO

 -- quest�o 3
SELECT * FROM LIVRO WHERE ano_publicacao =  2000;

-- quest�o 4 

select cnpj, count (*) as  total_livros
from LIVRO_BIBLIOTECA
group by cnpj 

select titulo, autor from LIVRO
join  TECNOLOGIA on 
tecnologia.numero_registro = livro.numero_registro 




-- quest�o 6
-- select *from evento 
select * from evento 
where month (data) = 1 and year (data) =2023

--quest�o 7 
SELECT * FROM LIVRO WHERE Titulo LIKE '%Python%';

-- quest�o 8 
select count(*) as  cnpj from PERIODICO_BIBLIOTECA
where cnpj = '12345678000123';

 -- quest�o 11 
select * from EVENTO
where tipo = 'palestra' and custo > 100;

-- quest�o 12

select livro.titulo, livro.ano_publicacao
from livro
join CIENCIA on livro.numero_registro = ciencia.numero_registro
and ano_publicacao ='2010';

 --quest�o 13
  select * from ATENDENTE where nome like '%Maria%'

 -- quest�o 16
 select evento.data, evento.tipo
from evento
where tipo='palestra' and data < '2022';

 

 -- quest�o 17 
select periodico.titulo
from periodico
where titulo like '%sa�de%';


-- quest�o 18 Listar os nomes dos estagi�rios que come�am com a letra 'L
select * from ESTAGIARIO where nome like '% L%'   --quest�o 19
 select livro.titulo, livro.ano_publicacao
from livro
join  SOCIOLOGIA on livro.numero_registro = SOCIOLOGIA.numero_registro
 where ano_publicacao > '1990' and ano_publicacao < '1999';
 
 


