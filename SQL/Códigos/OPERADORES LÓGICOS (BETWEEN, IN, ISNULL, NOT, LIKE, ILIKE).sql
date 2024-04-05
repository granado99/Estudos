-- AND, OR, NOT, BETWEEN, IN, LIKE, ILIKE, IS NULL

-- EX 1: usando 'BETWEEN', Selecione veiculos que custam entre 100k e 200k na tabela products

select * from sales.products where price between 100000 and 200000 order by price desc limit 10

-- EX 2: usando 'NOT', Selecione veiculos que custam abaixo de  100k ou acima de 200k na tabela products

select * from sales.products where price not between 100000 and 200000 order by price desc limit 10

-- EX 3: usando 'IN', Selecione produtos que sejam da marca HONDA, TOYOTA OU RENAULT

select brand, model from sales.products where brand = 'HONDA' or brand = 'TOYOTA' or brand = 'RENAULT'
select brand, model from sales.products where brand in ('HONDA','TOYOTA','RENAULT')
select brand, model from sales.products where brand not in ('HONDA','TOYOTA','RENAULT')


-- EX 4: usando 'LIKE', Selecione os primeiros nomes distintos da tabela customers que começam com ANA
select distinct first_name from sales.customers where first_name = 'ANA'
select distinct first_name from sales.customers where first_name like 'ANA%'

-- EX 5: usando 'ILIKE', Selecione os primeiros nomes distintos da tabela customers que começam com ANA
-- ele ignora o tamanho da letra, melhor de usar
select distinct first_name from sales.customers where first_name ilike 'ana%'

-- EX 6: usando 'IS NULL', Selecione apenas as linhas que contem nulo no campo "population" na tabela temp_tabbles.regions

select * from temp_tables.regions where population is null



