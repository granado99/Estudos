-- TRATAMENTO DE DATAS

-- INTERVAL
-- DATE_TRUNC
-- EXTRACT
-- DATEDIFF

-- EX 1, SOMA DE DATAS UTILIZANDO INTERVALL
-- CALCULE A DATA DE HOJE MAIS 10 (DIAS, SEMNAS, MESES, HORAS)


select current_date
select current_date + interval '10 weeks'
select current_date + interval '10 months'

--ex 2, truncagem de datas utilizando DATE_TRUNC
-- calcule quantas visitas ocorreram por mes no site da empresa
select 
	date_trunc('month', visit_page_date)::date as visit_page_month,
	count(*)
from sales.funnel
group by visit_page_month
order by visit_page_month desc


-- ex 3, extração de unidades de uma data utilizando EXTRACT
-- calcule qual é o dia da semana que mais recebe visitas ao site

select current_date, extract('dow' from current_Date) as dia_semana


-- ex4, diferença entre datas
select (current_date - '2018-06-01')
select (current_date - '2018-06-01')/365


select datediff('weeks', '2018-06-01', current_date)





