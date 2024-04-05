-- Estrututa 
-- select coluna from TEMA(vendas).nomeTabela(clientes)


-- EX 1: Selecione uma coluna de uma tabela, e liste os emails dos clientes da tabela sales.customers

select email from sales.customers

-- EX 2: Selecione 2 colunas de uma tabela, liste os emails e nomes dos clientes da tabela sales.customers

select email, first_name from sales.customers

-- EX 3: Selecione todas as colunas de uma tabela, liste todas as informações dos clientes da tabela sales.costumers

select * from sales.customers