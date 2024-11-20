USE OficinaDB;

-- Inserindo dados na tabela OS
INSERT INTO OS (numeroOS, data_emissao, valor_total, status, data_conclusao) VALUES
(1001, '2024-11-01', 1500.50, 'Em andamento', NULL),
(1002, '2024-11-10', 2300.00, 'Concluído', '2024-11-15'),
(1003, '2024-11-12', 900.00, 'Aguardando peças', NULL);

-- Inserindo dados na tabela Veiculo
INSERT INTO Veiculo (modelo, placa, ano, OS_idOS) VALUES
('Toyota Corolla', 'ABC1234', 2020, 1),
('Honda Civic', 'XYZ5678', 2018, 2),
('Ford Ranger', 'LMN4321', 2022, 3);

-- Inserindo dados na tabela Cliente
INSERT INTO Cliente (nome, endereco, telefone, veiculo_idveiculo) VALUES
('João Silva', 'Rua A, 123', 999888777, 1),
('Maria Oliveira', 'Rua B, 456', 999777666, 2),
('Carlos Souza', 'Rua C, 789', 999666555, 3);

-- Inserindo dados na tabela Serviços da OS
INSERT INTO ServicosOS (Quantidade, valor, Subtotal, OS_idOS) VALUES
(2, 500.00, 1000.00, 1),
(1, 2300.00, 2300.00, 2),
(1, 900.00, 900.00, 3);

-- Inserindo dados na tabela Peca
INSERT INTO Peca (nome, valor) VALUES
('Filtro de óleo', 80.00),
('Pneu', 400.00),
('Pastilha de freio', 150.00);

-- Inserindo dados na tabela Peças da OS
INSERT INTO PecasOS (Quantidade, Subtotal, OS_idOS, Peca_idpeca) VALUES
(2, 160.00, 1, 1),
(4, 1600.00, 2, 2),
(1, 150.00, 3, 3);

-- Inserindo dados na tabela Equipe
INSERT INTO Equipe (nome, OS_idOS) VALUES
('Equipe A', 1),
('Equipe B', 2),
('Equipe C', 3);

-- Inserindo dados na tabela Mecanico
INSERT INTO Mecanico (nome, endereco, especialidade, equipe_idequipe) VALUES
('Pedro Almeida', 'Rua D, 123', 'Suspensão', 1),
('Ana Pereira', 'Rua E, 456', 'Freios', 2),
('José Lima', 'Rua F, 789', 'Motor', 3);

-- Inserindo dados na tabela de Referência de Mão de Obra
INSERT INTO MaoDeObra (descricao, valor, OS_idOS) VALUES
('Troca de óleo', 200.00, 1),
('Alinhamento', 150.00, 2),
('Troca de pastilhas', 250.00, 3);
