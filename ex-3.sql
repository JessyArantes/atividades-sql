SELECT * FROM clientes;

SELECT nome, cidade 
FROM clientes
WHERE cidade = 'Lisboa';

SELECT nome, idade, cidade
FROM clientes
WHERE idade > 30 AND cidade = 'Porto';

SELECT nome
FROM clientes
WHERE nome LIKE 'A%';

SELECT DISTINCT cidade
FROM clientes;

SELECT nome, idade
FROM clientes
ORDER BY idade ASC;

SELECT *
FROM clientes
LIMIT 3;

