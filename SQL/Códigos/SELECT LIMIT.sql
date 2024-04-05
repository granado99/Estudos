-- Serve para limitar o numero de linhas que quero que aparece na query

-- estrutura:
-- select .... limit numerodelinhas

-- EX 1: seleção de n primeiras linhas usando limit, liste as 10 primeiras linhas da tabela funnel
select * from sales.funnel limit 10

-- EX 2: seleção de n primeiras linhas usando limit e order by,
--  liste as 10 produtos mais caros da tabela products

select * from sales.products order by price desc limit 10
