-- Serve para ordenas a query de acordo com oque o usuario quiser

-- Estrutura:
-- select coluna1 from tema.tabela where x = talcoisa order by coluna1

-- EX 1: ordenação de numeros, liste os produtos da tabela products na ordem cresscente com base no preço

select product_id, brand, model, price from sales.products order by price desc

-- EX 2: ordenação de texto, liste os estados distintos da tabela customers na ordem crescente

select distinct state from sales.customers order by state 