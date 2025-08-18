create database oficina_mecanica;

-- Tabela Cliente
CREATE TABLE IF NOT EXISTS Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200),
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100)
);

-- Tabela Veiculo
CREATE TABLE IF NOT EXISTS Veiculo (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(50) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    ano INT,
    placa VARCHAR(10) UNIQUE NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

-- Tabela Mecanico
CREATE TABLE IF NOT EXISTS Mecanico (
    id_mecanico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200),
    especialidade VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)
);

-- Tabela OrdemServico
CREATE TABLE IF NOT EXISTS OrdemServico (
    id_os INT AUTO_INCREMENT PRIMARY KEY,
    data_emissao DATE NOT NULL,
    valor_total DECIMAL(10, 2),
    status ENUM('Pendente', 'Em Andamento', 'Concluída', 'Cancelada') DEFAULT 'Pendente',
    data_conclusao DATE,
    id_veiculo INT NOT NULL,
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id_veiculo)
);

-- Tabela de relacionamento entre OS e Mecânico (N:M)
CREATE TABLE IF NOT EXISTS OSMecanico (
    id_os_mecanico INT AUTO_INCREMENT PRIMARY KEY,
    id_os INT NOT NULL,
    id_mecanico INT NOT NULL,
    FOREIGN KEY (id_os) REFERENCES OrdemServico(id_os),
    FOREIGN KEY (id_mecanico) REFERENCES Mecanico(id_mecanico),
    UNIQUE KEY (id_os, id_mecanico)
);

-- Tabela Servico
CREATE TABLE IF NOT EXISTS Servico (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(200) NOT NULL,
    valor_mao_obra DECIMAL(10, 2) NOT NULL,
    id_os INT NOT NULL,
    FOREIGN KEY (id_os) REFERENCES OrdemServico(id_os)
);

-- Tabela Peca
CREATE TABLE IF NOT EXISTS Peca (
    id_peca INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    quantidade INT DEFAULT 1,
    id_os INT NOT NULL,
    FOREIGN KEY (id_os) REFERENCES OrdemServico(id_os)
);