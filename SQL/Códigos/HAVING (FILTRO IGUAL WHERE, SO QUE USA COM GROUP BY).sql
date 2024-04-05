-- Filtro no GROUP BY, o where nao filtra em group by!

-- EX 1: HAVING, calcule o numero de clientes por estado filtrando apenas estados acima de 100 clientes.

select state, count (*) from sales.customers group by state having count (*) > 100 and state <> 'MG'