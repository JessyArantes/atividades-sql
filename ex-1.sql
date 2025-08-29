SELECT c.nome AS cliente, p.valor AS valor_pedido, p.data
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id;

SELECT c.nome AS cliente, COUNT(p.id) AS total_pedidos
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.cliente_id
GROUP BY c.nome;

SELECT c.nome AS cliente, SUM(p.valor) AS total_gasto
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.cliente_id
GROUP BY c.nome;

SELECT c.nome AS cliente, AVG(p.valor) AS media_valor
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.cliente_id
GROUP BY c.nome;

SELECT c.nome AS cliente, COUNT(p.id) AS total_pedidos
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.cliente_id
GROUP BY c.nome
HAVING COUNT(p.id) > 2;

SELECT c.nome AS cliente, SUM(p.valor) AS total_gasto
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
GROUP BY c.nome
HAVING SUM(p.valor) > 1000;

SELECT c.nome AS cliente, SUM(p.valor) AS total_gasto
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
GROUP BY c.nome
ORDER BY total_gasto DESC
LIMIT 3;

SELECT c.nome AS cliente, SUM(p.valor) AS total_gasto_recente
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
WHERE p.data > '2024-08-01'
GROUP BY c.nome;

