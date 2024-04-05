-- =, >, <, <>

-- EX 1: uso como flag, crie uma coluna que retorne TRUE sempre que um cliente for um profissional clt

select * from sales.customers
select first_name, professional_status, (professional_status = 'clt') as cliente_clt from sales.customers