-- EXECUTAR CALCULOS EM UMA COLUNA
-- COUNT(), SUM(), MIN(), MAX(), AVG()

--EX 1: CONTAGEM DE TODAS AS LINHAS DE UMA TABELA, CONTE TODAS AS VISITAS REALIZADAS AO SITE DA EMPRESA
select * from sales.funnel
select count(*) from sales.funnel

--EX 2: CONTAGEM DE TODAS AS LINHAS DE UMA TABELA, CONTE todos os pagamentos registrados na tabela sales.funnel

select count(paid_date) from sales.funnel

--EX 3: CONTAGEM distinta de uma coluna, conte todos os produtos distintos visitados em jan/21


select count (distinct product_id) from sales.funnel where visit_page_date between '2021-01-01' and '2021-01-31'

--EX 4: calculo o preço minimo, max, e medio dos produtos da tabela products

select min (price) as preco_min, max (price) as preco_max, avg(price) as preco_medio from sales.products
