CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    nome_pai VARCHAR(100),
    nome_mae VARCHAR(100),
    endereco VARCHAR(150),
    telefone1 VARCHAR(15),
    telefone2 VARCHAR(15),
    fax VARCHAR(15),
    celular VARCHAR(15),
    telefone_trabalho VARCHAR(15),
    data_nasc DATE,
    naturalidade VARCHAR(50),
    nacionalidade VARCHAR(50),
    endereco_correspondencia VARCHAR(150),
    nome_conjuge VARCHAR(100),
    cpf VARCHAR(14),
    rg VARCHAR(20)
);

CREATE TABLE Filho (
    id_filho INT PRIMARY KEY,
    id_cliente INT,
    nome VARCHAR(100),
    idade INT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

INSERT INTO Cliente VALUES
(1, 'João Silva', 'Carlos Silva', 'Maria Silva', 'Rua A, 123', '1111-1111', '2222-2222', '3333-3333', '99999-9999', '8888-8888', '1980-01-01', 'São Paulo', 'Brasileira', 'Rua B, 456', 'Ana Silva', '123.456.789-00', 'MG-12.345.678'),
(2, 'Pedro Lima', 'Marcos Lima', 'Julia Lima', 'Rua C, 321', '3333-1111', NULL, NULL, '98888-8888', NULL, '1985-05-05', 'Campinas', 'Brasileira', 'Rua D, 777', 'Clara Lima', '987.654.321-00', 'SP-98.765.432'),
(3, 'Lucas Nogueira', 'Roberto Nogueira', 'Sandra Nogueira', 'Av. Central, 200', '4444-4444', '5555-5555', NULL, NULL, '9999-9999', '1990-02-20', 'Santos', 'Brasileira', 'Av. Nova, 100', 'Paula Nogueira', '456.789.123-00', 'RJ-45.678.912'),
(4, 'Renata Souza', 'Paulo Souza', 'Elaine Souza', 'Rua E, 789', '7777-7777', NULL, NULL, '97777-7777', NULL, '1992-12-12', 'Sorocaba', 'Brasileira', 'Rua F, 101', 'Eduardo Souza', '654.321.987-00', 'SP-76.543.219'),
(5, 'Carla Mendes', 'Francisco Mendes', 'Luciana Mendes', 'Rua G, 999', '8888-6666', '4444-3333', NULL, NULL, '96666-6666', '1988-07-07', 'Ribeirão Preto', 'Brasileira', 'Rua H, 202', 'Jorge Mendes', '321.987.654-00', 'SP-32.198.765');

INSERT INTO Filho VALUES
(1, 1, 'Gabriel Silva', 10),
(2, 1, 'Julia Silva', 8),
(3, 2, 'Mateus Lima', 12),
(4, 3, 'Lara Nogueira', 5),
(5, 5, 'Tiago Mendes', 3);

SELECT * FROM Cliente;
SELECT * FROM Filho;

