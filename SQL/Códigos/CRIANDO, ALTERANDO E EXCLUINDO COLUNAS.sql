-- INSERINDO, ATUALIZANDO E DELETANDO colunas

-- ex 1, INSERINDO
-- insira uma coluna com a idade do cliente

alter table sales.customers
add idade int

select * from sales.customers

-- pra inseir dados na coluna so usar update

--ex 2, ATUALIZANDO o tipo da coluna

alter table sales.customers
alter column idade type varchar

--ex 3, ALTERANDO nome da coluna
alter table sales.customers
rename column idade to age


-- ex 4, DELETAR colunas
alter table sales.customers
drop column age