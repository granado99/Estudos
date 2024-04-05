-- LEFT JOIN, INNER JOIN, RIGHT JOIN, FULL JOIN

-- EX 1: Usando LEFT JOIN
-- ESTRUTURA: SELECT colunas desejadas das tabelas, FROM tema.tabela LEFT JOIN tema.outratabela ON tabela.chave de ligação = tabela2.chave de ligação

select * from temp_tables.tabela_1
select * from temp_tables.tabela_2

select temp_tables.tabela_1.cpf, temp_tables.tabela_1.name, temp_tables.tabela_2.state from temp_tables.tabela_1 left join temp_tables.tabela_2 on temp_tables.tabela_1.cpf = temp_tables.tabela_2.cpf

select temp_tables.tabela_1.cpf, temp_tables.tabela_1.name, temp_tables.tabela_2.state from temp_tables.tabela_1 inner join temp_tables.tabela_2 on temp_tables.tabela_1.cpf = temp_tables.tabela_2.cpf


-- EX 2: identifique qual é o status profissional mais frequente nos clientes que compraram automovies no site

select * from sales.funnel
select * from sales.customers
select * from sales.products

select t2.professional_status, count (t1.paid_date) as pagamentos
from sales.funnel as t1 left join sales.customers as t2 on t1.customer_id = t2.customer_id group by t2.professional_status order by pagamentos desc

-- EX 3: identifique qual é o genero mais frequente nos clientes que compraram automoveis no site, obs: utilizar a tabela tamp_tables.ibge_genders


select * from temp_tables.ibge_genders
select * from sales.customers
select * from sales.funnel

select ibge.gender, count (fun.paid_date)
from sales.funnel as fun 
left join sales.customers as cus
	on fun.customer_id = cus.customer_id
left join temp_tables.ibge_genders as ibge
	on lower(cus.first_name) = lower(ibge.first_name)
	group by ibge.gender


-- EX 4: identifique de quais regioes sao os clientes que mais visitam o site

select reg.region, count (fun.visit_page_date) as visitas
from sales.funnel as fun
left join sales.customers as cus
	on fun.customer_id = cus.customer_id
left join temp_tables.regions as reg
	on lower(cus.city) = lower(reg.city)
	and lower(cus.state) = lower(reg.state)
group by reg.region
order by visitas desc









