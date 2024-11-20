CREATE DATABASE IF NOT EXISTS OficinaDB;
USE OficinaDB;

-- Tabela OS (Ordem de Serviço)
CREATE TABLE IF NOT EXISTS OS (
    idOS INT PRIMARY KEY AUTO_INCREMENT,
    numeroOS INT NOT NULL,
    data_emissao DATE,
    valor_total FLOAT,
    status VARCHAR(45),
    data_conclusao DATE
);

-- Tabela Veiculo
CREATE TABLE IF NOT EXISTS Veiculo (
    idveiculo INT PRIMARY KEY AUTO_INCREMENT,
    modelo VARCHAR(45) NOT NULL,
    placa VARCHAR(45),
    ano INT,
    OS_idOS INT,
    FOREIGN KEY (OS_idOS) REFERENCES OS(idOS)
);

-- Tabela Cliente
CREATE TABLE IF NOT EXISTS Cliente (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(45),
    telefone INT,
    veiculo_idveiculo INT,
    FOREIGN KEY (veiculo_idveiculo) REFERENCES Veiculo(idveiculo)
);

-- Tabela Serviços da OS
CREATE TABLE IF NOT EXISTS ServicosOS (
    idServicosOS INT PRIMARY KEY AUTO_INCREMENT,
    Quantidade INT,
    valor FLOAT,
    Subtotal FLOAT,
    OS_idOS INT,
    FOREIGN KEY (OS_idOS) REFERENCES OS(idOS)
);

-- Tabela Peça
CREATE TABLE IF NOT EXISTS Peca (
    idpeca INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    valor FLOAT
);

-- Tabela Peças da OS
CREATE TABLE IF NOT EXISTS PecasOS (
    idPecasOS INT PRIMARY KEY AUTO_INCREMENT,
    Quantidade INT,
    Subtotal FLOAT,
    OS_idOS INT,
    FOREIGN KEY (OS_idOS) REFERENCES OS(idOS),
    Peca_idpeca INT,
    FOREIGN KEY (Peca_idpeca) REFERENCES Peca(idpeca)
);

-- Tabela Equipe
CREATE TABLE IF NOT EXISTS Equipe (
    idequipe INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    OS_idOS INT,
    FOREIGN KEY (OS_idOS) REFERENCES OS(idOS)
);

-- Tabela Mecanico
CREATE TABLE IF NOT EXISTS Mecanico (
    idmecanico INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    endereco VARCHAR(45),
    especialidade VARCHAR(45),
    equipe_idequipe INT,
    FOREIGN KEY (equipe_idequipe) REFERENCES Equipe(idequipe)
);

-- Tabela de Referência de Mão de Obra
CREATE TABLE IF NOT EXISTS MaoDeObra (
    idservico INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(45),
    valor FLOAT,
    OS_idOS INT,
    FOREIGN KEY (OS_idOS) REFERENCES OS(idOS)
);
