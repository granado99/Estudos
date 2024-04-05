-- CASE WHEN e COALESE


--EX 1: AGRUPANDO DADOS COM CASE WHEN
-- CALCULE O NUMERO DE CLIENTES QUE GANHAM ABAIXO DE 5K, ENTRE 5K E 1OK, ENTRE 10K E 15K E ACIMA DE 15K

select * from sales.customers limit 10

with faixa_de_renda as (
	select
	  income, 
	  case 
		when income<5000 then '0-5000'
		when income>=5000  and income < 10000 then '5000-10000'
		when income>= 10000 and income < 15000 then	'1000-15000'
		else '15000+'
		end as faixa_renda
	from sales.customers
)


select faixa_renda, count(*)
from faixa_de_renda
group by faixa_renda



--EX 2: COALESE, tratando dados nulos
-- Crie uma coluna chamada populacao_ajustada na tabela temp_tables.regions e preencha com os dados da coluna population, mas caso esse campo estiver nulo
-- preencha com a populacao média (geral) das cidades do Brasil.



-- opcao 1
select * from temp_tables.regions limit 10

select *,
	case
		when population is not null then population
		else (select avg(population) from temp_tables.regions)
		end as populacao_ajustada
from temp_tables.regions

-- opcao 2
select *,
	coalesce(population, (select avg(population) from temp_tables.regions)) as populacao_ajustada
from temp_tables.regions where population is null











