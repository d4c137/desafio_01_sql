-- ============================================
-- BANCO DE DADOS: RP Petshop
-- Autor: Guilherme Fernandes (d4c137)
-- ============================================

CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(50),
    estado CHAR(2),
    data_cadastro DATE
);

CREATE TABLE pets (
    id INT PRIMARY KEY,
    cliente_id INT,
    nome VARCHAR(50),
    especie VARCHAR(30),
    raca VARCHAR(50),
    idade INT,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10,2),
    estoque INT
);

CREATE TABLE vendas (
    id INT PRIMARY KEY,
    cliente_id INT,
    produto_id INT,
    quantidade INT,
    valor_total DECIMAL(10,2),
    data_venda DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- ============================================
-- DADOS DE EXEMPLO
-- ============================================

INSERT INTO clientes VALUES
(1, 'Guilherme Fernandes', 'Recife', 'PE', '2024-01-15'),
(2, 'Ana Souza', 'São Paulo', 'SP', '2024-02-20'),
(3, 'Carlos Lima', 'Recife', 'PE', '2024-03-10'),
(4, 'Marina Alves', 'Rio de Janeiro', 'RJ', '2024-04-05'),
(5, 'Pedro Santos', 'São Paulo', 'SP', '2024-05-12'),
(6, 'Juliana Costa', 'Belo Horizonte', 'MG', '2024-06-18'),
(7, 'Rafael Oliveira', 'Recife', 'PE', '2024-07-22'),
(8, 'Beatriz Rocha', 'Curitiba', 'PR', '2024-08-30');

INSERT INTO pets VALUES
(1, 1, 'Thor', 'Cachorro', 'Golden Retriever', 3),
(2, 1, 'Luna', 'Gato', 'Siamês', 2),
(3, 2, 'Bolinha', 'Cachorro', 'Poodle', 5),
(4, 3, 'Mia', 'Gato', 'Persa', 1),
(5, 4, 'Rex', 'Cachorro', 'Bulldog', 4),
(6, 5, 'Nina', 'Ave', 'Calopsita', 2),
(7, 6, 'Bob', 'Cachorro', 'Labrador', 6),
(8, 7, 'Fifi', 'Gato', 'Angorá', 3),
(9, 8, 'Max', 'Cachorro', 'Beagle', 2),
(10, 1, 'Mel', 'Cachorro', 'Shih Tzu', 1);

INSERT INTO produtos VALUES
(1, 'Ração Premium Cães', 'Ração', 120.00, 50),
(2, 'Ração Gatos Castrados', 'Ração', 95.00, 30),
(3, 'Brinquedo Osso', 'Brinquedo', 25.00, 100),
(4, 'Vermífugo', 'Medicamento', 45.00, 20),
(5, 'Shampoo Pet', 'Higiene', 35.00, 60),
(6, 'Ração Filhotes', 'Ração', 135.00, 40),
(7, 'Coleira Antipulgas', 'Medicamento', 80.00, 15),
(8, 'Arranhador Gato', 'Brinquedo', 150.00, 10);

INSERT INTO vendas VALUES
(1, 1, 1, 2, 240.00, '2026-01-10'),
(2, 1, 3, 1, 25.00, '2026-01-10'),
(3, 2, 2, 3, 285.00, '2026-01-15'),
(4, 3, 4, 2, 90.00, '2026-01-20'),
(5, 4, 1, 1, 120.00, '2026-02-05'),
(6, 5, 6, 2, 270.00, '2026-02-10'),
(7, 6, 7, 1, 80.00, '2026-02-15'),
(8, 7, 5, 3, 105.00, '2026-03-01'),
(9, 8, 8, 1, 150.00, '2026-03-05'),
(10, 1, 2, 2, 190.00, '2026-03-10'),
(11, 2, 5, 1, 35.00, '2026-03-15'),
(12, 3, 1, 2, 240.00, '2026-03-20'),
(13, 4, 3, 4, 100.00, '2026-04-01'),
(14, 5, 4, 1, 45.00, '2026-04-05'),
(15, 7, 6, 1, 135.00, '2026-04-10');
