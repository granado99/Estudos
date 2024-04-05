-- Serve para remover as duplicatas e mostrar apenas linhas distintas

-- Estrutura:
-- Select distinct coluna from tema.nomeTabela

-- EX 1: Selecione uma coluna sem distinct, liste as marcas de carros que estao na tabela produtos
-- Agora sem repetir as marcas

select brand from sales.products
select distinct brand from sales.products

-- EX 2: Selecione mais de uma coluna sem distinct, liste as marcas e anos de carros que estao na tabela produtos

select distinct brand, model_year from sales.products