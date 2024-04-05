--  Serve para filtras as querys

-- Estrutura:
-- select coluna from tema.tabela where x=tal coisa

-- Ex 1: filtro com uma condição, liste os emails dos clientes que moram no estado de santa catarina

select * from sales.customers
select email, state from sales.customers where state = 'SC'

-- Ex 2: filtro com mais de uma condição, liste os emails dos clientes que moram no estado de santa catarina
-- ou mato grosso do  sul

select email, state from sales.customers where state = 'SC' or state = 'MS'

-- Ex 3: filtro de data, liste os emails dos clientes que moram no estado de santa catarina
-- ou mato grosso do  sul e que tem mais de 30 anos

select email, state, birth_date from sales.customers where (state = 'SC' or state = 'MS') and birth_date < '1994-01-01'

-- data = ano/mes/dia