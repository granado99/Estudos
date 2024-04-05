-- Query dentro de query

-- EX 1: SUBQUERY NO WHERE, INFORME QUAL É O VEICULO MAIS BARATO DA TABELA PRODUCTS

select * from sales.products where price = (select min(price) from sales.products)

select min(price) from sales.products

-- EX 2: SUBQUERY COM WITH, calcule idade media dos clientes por status profissional 

with alguma_tabela as (
select professional_Status, (current_date - birth_date)/365 as idade 
from sales.customers)

select professional_status, avg(idade) as idade_media from alguma_tabela 
group by professional_status


-- EX 3: SUBQUERY COM FROM , calcule a media das idades dos clientes por status profissional

select professional_status, avg(idade) as idade_media 
from (select professional_Status, (current_date - birth_date)/365 as idade 
from sales.customers) 
group by professional_status

-- EX 4: SUBQUERY com WITH, analise de recorrencia dos leads, calcule o volume de visitas por dia ao site separado  por 1 visita e demais visitas

with primeira_visita as (

	select customer_id, min(visit_page_date) as visita_1 
	from sales.funnel
	group by customer_id
)

select fun.visit_page_date, (fun.visit_page_date <> primeira_visita.visita_1) as lead_recorrente, count (*) 
from sales.funnel as fun
left join primeira_visita on fun.customer_id = primeira_visita.customer_id
group by fun.visit_page_date, lead_recorrente
order by lead_recorrente desc, lead_recorrente













