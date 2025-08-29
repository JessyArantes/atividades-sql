SELECT c.nome, p.valor
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id;

SELECT c.nome, p.valor
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
ORDER BY p.valor DESC;

SELECT COUNT(*) AS total_pedidos
FROM pedidos;

SELECT SUM(valor) AS total_vendas
FROM pedidos;

SELECT AVG(valor) AS media_pedidos
FROM pedidos;

SELECT c.nome, SUM(p.valor) AS total_gasto
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
GROUP BY c.nome;

SELECT cidade, COUNT(*) AS total_clientes
FROM clientes
GROUP BY cidade;

SELECT c.nome, SUM(p.valor) AS total_gasto
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
GROUP BY c.nome
ORDER BY total_gasto DESC
LIMIT 5;

