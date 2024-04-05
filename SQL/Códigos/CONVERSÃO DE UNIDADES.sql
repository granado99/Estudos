-- CONVERTENDO UNIDADES
-- OPERADOR :: E CAST

--EX 1: TEXTO > DATA
SELECT '2021-10-01'::date - '2021-02-01'::date

select coluna::date from nome tabela


--EX2: TEXTO > NUMERO
select '100'::numeric - '10'::numeric


--EX3: NUMERO > TEXTO
select replace(112122::text,'1','A')

--EX4: TEXTO > DATA
SELECT cast('2021-10-01') as date - cast('2021-02-01') as date