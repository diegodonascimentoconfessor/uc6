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

exec sp_listar_funconariobibliotecario
 
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
 
 exec  sp_listar_whorkshop
 
 -- 6 Procedure para exibir os nomes dos usuários que fizeram empréstimos de livros em janeiro de 2023
create procedure sp_emprestimo 
as
begin
    select usuario.nome, emprestimo.data_emprestimo
    from usuario
    join emprestimo on usuario.matricula = emprestimo.matricula
    where month(emprestimo.data_emprestimo) = 1 
    and year(emprestimo.data_emprestimo) = 2023;
end;
 exec sp_emprestimo
--7. Procedure para retornar os títulos dos livros de tecnologia que têm 'Python' no título.
  create procedure  sp_livro_python 
    @titulo nvarchar(100)
as
begin
select livro.titulo
from livro
join tecnologia on livro.numero_registro = tecnologia.numero_registro
where titulo like '%' + @titulo + '%';
end;
 exec sp_livro_python @ttulo = 'python';
-- 8  Procedure para listar os títulos dos periódicos disponíveis na biblioteca com CNPJ '12345678000123'
create procedure  sp_periodico_bibioteca
 @cnpj varchar(14)
as 
begin
    select PERIODICO.titulo
    from PERIODICO
    join PERIODICO_BIBLIOTECA ON PERIODICO.numero_registro = PERIODICO_BIBLIOTECA.numero_registro
    where  PERIODICO_BIBLIOTECA.cnpj = @cnpj;
end;
exec  sp_periodico_biblioteca @cnpj = '12345678000123';




-- 9Procedure para mostrar os nomes dos funcionários que não são técnicos de TI.
create procedure  sp_Funcionario_nao_ti
as 
begin 

select * from funcionario
where matricula not like 't%';



exec sp_Funcionario_nao_ti

--10Procedure para exibir o título e o autor dos livros emprestados pelo usuário com ID 'U0001'

create procedure sp_livros_emprestado
    @matricula nvarchar(50)
as
begin
select livro.titulo, livro.autor
from livro
join emprestimo on livro.numero_registro = emprestimo.numero_registro
where emprestimo.matricula = @matricula;
end;
exec sp_livro_emprestado @matricula = 'u0001';

--11Procedure para listar todas as palestras que custaram mais de R$ 100,00.

create procedure sp_palestra
as begin

select * from evento
join palestra on evento.id_evento = palestra.id_evento 
where custo > 100.00;

end 
exec sp_palestra 


12 --Procedure para retornar os títulos dos livros de ciência que foram publicados após 2010.

create procedure sp_livro_ciencia_2010
    @titulo nvarchar(100)
as
begin
    select livro.titulo, livro.ano_publicacao
    from livro
     join ciencia on livro.numero_registro = ciencia.numero_registro
    where livro.ano_publicacao > 2010 and livro.titulo like '%' + @titulo + '%';
end;
 exec  sp_livro_ciencia_2010 @titulo = 'ciência ';
--13  Procedure para exibir os nomes dos atendentes que têm 'Maria' no nome.
create procedure sp_consulta_por_nome
    @nome_consulta nvarchar(100)
as
begin
select  FUNCIONARIO.nome
from FUNCIONARIO
join ATENDENTE on FUNCIONARIO.matricula = ATENDENTE.matricula
where  FUNCIONARIO.nome like '%' + @nome_consulta+ '%';
end 
exec  sp_consulta_por_nome @nome_consulta = 'maria';


-- 14 Procedure para mostrar os títulos dos livros que foram emprestados mais de 5 vezes

create procedure sp_total_emprestimo_por_livro
as
begin
select livro.titulo, count(livro.titulo) as total_emprestimo
from livro
join emprestimo on livro.numero_registro = emprestimo.numero_registro
where(
select count(*) from emprestimo where livro.numero_registro = emprestimo.numero_registro
 ) > 5
    group by livro.titulo;
end;
exec sp_total_emprestimo_por_livro


--15.Procedure para listar os nomes dos usuários que emprestaram livros de tecnologia.
create procedure sp_emprestimo_usuario
as
begin
 select usuario.nome, livro.titulo
 from emprestimo
join livro on livro.numero_registro = emprestimo.numero_registro
join usuario on emprestimo.matricula = usuario.matricula
join tecnologia on livro.numero_registro = tecnologia.numero_registro;
end;


exec sp_emprestimo_usuario


--17. View para listar todos os livros com seus respectivos autores e ano de publicação.
create view Vw_livro
as
select LIVRO.titulo, LIVRO.autor, LIVRO.ano_publicacao
from LIVRO

select * from Vw_livro;

--
--18. View para exibir os detalhes dos funcionários que são gerentes.
create view Vw_funcionario_gerente
as
select FUNCIONARIO.* from FUNCIONARIO
join GERENTE on GERENTE.matricula = FUNCIONARIO.matricula

select * from Vw_funcionario_gerente;

--19 View para mostrar todos os eventos organizados por data.
create view Vw_evento_data
as
select EVENTO.* from EVENTO

select * from Vw_evento_data

--20View para listar os livros de cada categoria (Tecnologia, Sociologia, Ciência).
create view sp_listar_livro
as
select LIVRO.* from LIVRO
join SOCIOLOGIA on SOCIOLOGIA.numero_registro = LIVRO.numero_registro

select * from sp_listar_livro


--21Vi ew para exibir os títulos dos periódicos e suas datas de publicação.
create view Vw_titulo_periodico
as
select PERIODICO.titulo, PERIODICO.ano_publicacao from PERIODICO

select * from Vw_titulo_periodico