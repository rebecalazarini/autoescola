CREATE DATABASE autoescola;
USE autoescola;
-- Criação das tabelas

-- Tabela: Alunos
CREATE TABLE Alunos (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    telefone VARCHAR(15),
    data_nascimento DATE NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela: Instrutores
CREATE TABLE Instrutores (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    telefone VARCHAR(15),
    categoria_cnh VARCHAR(50) NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela: Aulas
CREATE TABLE Aulas (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    data_aula DATETIME NOT NULL,
    aluno_id INTEGER NOT NULL,
    instrutor_id INTEGER NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    observacoes TEXT,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(id),
    FOREIGN KEY (instrutor_id) REFERENCES Instrutores(id)
);

-- Inserts para a tabela Alunos
INSERT INTO Alunos (nome, email, telefone, data_nascimento) VALUES
('Maria Oliveira', 'maria.oliveira@example.com', '11987654321', '2000-05-15'),
('João Silva', 'joao.silva@example.com', '11923456789', '1995-08-25'),
('Ana Costa', 'ana.costa@example.com', '11934567890', '1990-12-10');

-- Inserts para a tabela Instrutores
INSERT INTO Instrutores (nome, email, telefone, categoria_cnh) VALUES
('Carlos Santos', 'carlos.santos@example.com', '11912345678', 'Categoria B'),
('Fernanda Lima', 'fernanda.lima@example.com', '11987654321', 'Categoria A'),
('Roberto Almeida', 'roberto.almeida@example.com', '11911223344', 'Categoria C');

-- Inserts para a tabela Aulas
INSERT INTO Aulas (data_aula, aluno_id, instrutor_id, tipo, observacoes) VALUES
('2024-09-05 10:00:00', 1, 1, 'prática', 'Iniciar com manobras básicas.'),
('2024-09-06 14:00:00', 2, 2, 'teórica', 'Revisão das regras de trânsito.'),
('2024-09-07 09:00:00', 3, 3, 'prática', 'Aula de estacionamento e baliza.');