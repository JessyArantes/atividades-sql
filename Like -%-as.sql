select * from clientes;

-- Nomes que começam com 'Jo'
select * from clientes
where nome like 'Jo%';

-- Nomes que terminam com 'a'
select * from clientes
where nome like '%a';

-- Nomes que tenham 'an' em qualquer posição
select * from  clientes
where nome like '%an%';

-- Retorna apenas cidades únicas
select distinct  cidade
from clientes;

-- Contar quantas cidades distintas existem
select count(distinct cidade)
from clientes;

select nome as clientes_nome, cidade as cidade_residencia
from clientes;

select c.nome, p.cidade
from clientes as c 
join  cidade  as ci on c.cidade_id = ci.id;


