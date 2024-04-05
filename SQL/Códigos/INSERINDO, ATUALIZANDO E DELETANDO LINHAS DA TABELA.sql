-- INSERIR, ATUALIZAR E DELETAR LINHAS 

--EX 1, inserindo linhas

create table temp_tables.profissoes(
	professional_status varchar,
	status_profissional varchar
)

select * from temp_tables.profissoes

insert into temp_tables.profissoes
(professional_status, status_profissional)
values
('unemployed','desempregado'),
('trainee','estagiario')
 

--ex 2, mude de trainee para intern
 update temp_tables.profissoes
 set professional_status = 'intern' where status_profissional = 'estagiario'
 
select * from temp_tables.profissoes


-- ex 3, deletar linhas 
delete from temp_tables.profissoes
where status_profissional = 'desempregado' or status_profissional = 'estagiario'