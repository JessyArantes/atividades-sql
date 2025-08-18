create database firstexample;

use firstexample;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    email VARCHAR(100) UNIQUE,
    cidade VARCHAR(50)
);

INSERT INTO clientes (nome, idade, email, cidade)
VALUES ('Carlos Almeida', 30, 'carlos@email.com', 'Coimbra');

-- Ver todos os clientes
SELECT * FROM clientes;

-- Buscar clientes de Coimbra
SELECT nome FROM clientes WHERE cidade = 'Coimbra';

-- Contar quantos clientes estão cadastrados
SELECT COUNT(*) AS total_clientes FROM clientes;

-- Inserir 1 cliente
INSERT INTO clientes (nome, idade, email, cidade)
VALUES ('Maria Silva', 28, 'maria@email.com', 'Lisboa');

-- Inserir vários clientes de uma vez
INSERT INTO clientes (nome, idade, email, cidade)
VALUES 
('João Pereira', 35, 'joao@email.com', 'Porto'),
('Ana Costa', 22, 'ana@email.com', 'Faro');

-- Seleciona todas as colunas da tabela clientes
SELECT * FROM clientes;

-- Seleciona apenas nome e email dos clientes
SELECT nome, email FROM clientes;

-- Seleciona clientes maiores de 18 anos
SELECT nome, idade FROM clientes
WHERE idade >= 18;

-- Ordena os clientes por nome
SELECT nome, idade FROM clientes
ORDER BY nome ASC;

-- Agrupa por cidade e mostra a quantidade de clientes em cada uma
SELECT cidade, COUNT(*) AS total_clientes
FROM clientes
GROUP BY cidade;




