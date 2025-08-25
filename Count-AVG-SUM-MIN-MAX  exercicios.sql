-- 1) Contar quantos clientes existem
SELECT COUNT(*) AS total_clientes
FROM clientes;

-- 2) Somar o valor total de todos os pedidos
SELECT SUM(valor) AS total_vendas
FROM pedidos;

-- 3) Calcular a média do valor dos pedidos
SELECT AVG(valor) AS media_pedidos
FROM pedidos;

-- 4) Encontrar o menor e maior valor de pedido
SELECT MIN(valor) AS menor_pedido,
       MAX(valor) AS maior_pedido
FROM pedidos;

-- 5) Contar quantos clientes existem por cidade
SELECT cidade, COUNT(*) AS qtd_clientes
FROM clientes
GROUP BY cidade;

-- 6) Valor total de pedidos por cliente
SELECT c.nome, SUM(p.valor) AS total_gasto
FROM clientes AS c
JOIN pedidos AS p ON c.id = p.cliente_id
GROUP BY c.nome;

-- 7) Valor médio de pedidos por cidade (clientes e pedidos)
SELECT c.cidade, AVG(p.valor) AS media_pedidos_cidade
FROM clientes AS c
JOIN pedidos AS p ON c.id = p.cliente_id
GROUP BY c.cidade;

-- 8) Maior e menor salário dos funcionários
SELECT MIN(salario) AS menor_salario,
       MAX(salario) AS maior_salario,
       AVG(salario) AS media_salarial
FROM funcionarios;
