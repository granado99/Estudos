-- criação de TABELAS
-- deletar TABELAS


--ex 1, Criação de tabelas a partir de um query
-- crie uma tabela chamada customers_age com id e a idade dos clientes
-- chame-a de temp_tables.customers_age


select customer_id, datediff('years', birth_date, current_date) as idade_cliente into tem_tables.customers_age from sales.customers


--ex 2, crie uma tabela do zero

create table temp_tables.profissoes(
	professional_status varchar,
	status_profissional varchar
)


--ex 3, deletando tabelas
drop table temp_tables.profissoes