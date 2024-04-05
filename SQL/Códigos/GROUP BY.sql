-- SERVE PARA AGRUPAR REGISTROS SEMELHANTES DE UMA COLUNA
-- USADO EM CONJUNTO COM FUNÇÕES DE AGREGAÇÃO


-- EX 1: Contagem agrupada de uma coluna, calcule o numero de clientes da tabela customers por estado

select state, count(*) as num_clientes from sales.customers group by state order by num_clientes desc

-- EX 2: Contagem agrupada de varias colunas, calcule o numero de clientes por estado e status profissional

select * from sales.customers
select state, professional_status, count(*) as num_clientes from sales.customers group by state, professional_status order by num_clientes desc

-- EX 3: Seleção de valores distintos, selecione os estados distintos na tabela customers utilizando o group by


