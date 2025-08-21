-- 1) Liste todos os clientes em ordem decrescente do nome.

SELECT * FROM clientes
ORDER BY nome DESC;

-- 2) Mostre apenas os 5 primeiros clientes mais novos (menor idade).
SELECT * FROM clientes
ORDER BY idade ASC
LIMIT 5;

-- 3) Liste os clientes mais velhos de cada cidade.
SELECT c1.* 
FROM clientes c1
WHERE idade = (
    SELECT MAX(c2.idade) 
    FROM clientes c2 
    WHERE c2.cidade = c1.cidade
)
ORDER BY cidade;

-- 4) Mostre os registros do 6º ao 10º cliente, em ordem crescente de id.
SELECT * FROM clientes
ORDER BY id ASC
LIMIT 5 OFFSET 5;

-- 5) Liste os clientes em ordem de cidade (A-Z) e, dentro da cidade, por nome (A-Z).
SELECT * FROM clientes
ORDER BY cidade ASC, nome ASC;

-- 6) Mostre os 3 clientes mais velhos, exibindo apenas nome e idade.
SELECT nome, idade FROM clientes
ORDER BY idade DESC
LIMIT 3;

-- 7) Mostre o cliente que ocupa a posição do meio na lista quando ordenada por idade.
SELECT * FROM clientes
ORDER BY idade ASC
LIMIT 1 OFFSET 4; 

-- 8) Liste o primeiro cliente cadastrado em cada cidade, ordenado por id.
SELECT c1.*
FROM clientes c1
WHERE id = (
    SELECT MIN(c2.id) 
    FROM clientes c2 
    WHERE c2.cidade = c1.cidade
)
ORDER BY cidade;

-- 9) Liste o cliente mais velho e o cliente mais novo da tabela.
-- Cliente mais velho
SELECT * FROM clientes
ORDER BY idade DESC
LIMIT 1;

-- Cliente mais novo
SELECT * FROM clientes
ORDER BY idade ASC
LIMIT 1;

-- 10) Liste todos os clientes, mas ordenando primeiro os de Lisboa, depois os de outras cidades.
SELECT * FROM clientes
ORDER BY (cidade = 'Lisboa') DESC, nome ASC;

