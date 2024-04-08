--1. Procedure para retornar todos os livros de sociologia
create procedure sp_livro_sociologia
as 
begin 
select *from LIVRO
join sociologia on
sociologia.numero_registro = livro.numero_registro;
end
exec sp_livro_sociologia
--2 .Procedure para listar os nomes dos funcionários que são bibliotecários.
create procedure  sp_listar_funconariobibliotecario
as 
begin 
select funcionario.nome from funcionario
join bibliotecario on 
funcionario.matricula = bibliotecario.matricula;
end 
 
--3 Procedure para exibir os títulos dos livros publicados antes de 2000.

 create  procedure sp_listar_livro_publicado
 as 
 begin 
select titulo,ano_publicacao from LIVRO
where ano_publicacao < '2000';
end 
exec sp_listar_livro_publicado
--4 Procedure para mostrar o número total de livros em cada biblioteca.

create procedure sp_total_livro
as
begin
select cnpj,count(numero_registro) as total_livro 
from LIVRO_BIBLIOTECA
group by cnpj ;
end 
exec sp_total_livro
-- 5 Procedure para listar os eventos do tipo 'Workshop' que ocorreram após 2020

create procedure sp_listar_whorkshop
as 
begin select *
from EVENTO
where tipo = 'workshop' and year(data) >'2020';
end 
 -- 6 Procedure para exibir os nomes dos usuários que fizeram empréstimos de livros em janeiro de 2023
 create procedure sp_emprestimo 
 as
 begin 
 select * from evento 
where month (data) = 1 and year (data) =2023
end 

exec sp_emprestimo

