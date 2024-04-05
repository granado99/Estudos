-- Tipos
-- +,-,*,/,^,%,pipe

-- EX 1: criação de coluna calculada, crie uma coluna contendo a idade do cliente da tabela sales.costumers

select email, birth_date, first_name, (current_date - birth_date)/365 as idade from sales.customers 

-- EX 2: Utilização da coluna calculada nas queries, liste os 10 clientes mais novos da tabela costumers

select email, birth_date, first_name, (current_date - birth_date)/365 as idade from sales.customers order by idade limit 10

-- EX 3: Utilização da coluna calculada com string, crie uma coluna "nome_completo" contendo o nome completo do cliente
select first_name, last_name, (first_name ||' '|| last_name) as nome_completo from sales.customers order by nome_completo limit 10

