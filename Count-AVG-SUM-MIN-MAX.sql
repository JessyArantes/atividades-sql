select * from clientes;

SELECT COUNT(*) AS total_clientes
FROM clientes;

SELECT SUM(valor) AS total_vendas
FROM pedidos;

SELECT AVG(salario) AS media_salarial
FROM funcionarios;

SELECT MIN(preco) AS menor_preco
FROM produtos;

SELECT MAX(preco) AS maior_preco
FROM produtos;

SELECT c.nome, SUM(p.valor) AS total_gasto
FROM clientes AS c
JOIN pedidos AS p ON c.id = p.cliente_id
GROUP BY c.nome;
