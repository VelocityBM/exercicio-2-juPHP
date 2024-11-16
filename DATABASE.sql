CREATE DATABASE walmartUSA;

USE walmartUSA;

CREATE TABLE produtos (
id INT AUTO_INCREMENT PRIMARY KEY, nome VARCHAR(100) NOT NULL,
descricao TEXT,
preco DECIMAL(10, 2),
quantidade INT,
data_adicao DATE
);

INSERT INTO produtos (nome, descricao, preco, quantidade, data_adicao) VALUES
('F-22 Raptor', 'Caça furtivo de quinta geração.', 900.00, 154, '1997-09-18'),
('B-2 Spirit', 'Bombardeiro estratégico de longo alcance.', 12.00, 1, '1992-12-25'),
('C-130 Hercules', 'Avião de transporte militar versátil.', 450.99, 32, '1994-07-13'),
('F-35 Lightning II', 'Caça multifunção com capacidade furtiva.', 940.00, 41, '2015-04-04'),
('MQ-9 Reaper', 'Drone de ataque para missões de vigilância.', 50.00, 5, '2001-10-05');

