-- Criação das tabelas

CREATE TABLE pais (
    nome VARCHAR(35) NOT NULL,
    continente VARCHAR(35) NOT NULL,
    pop REAL NOT NULL,
    pib REAL NOT NULL,
    expec_vida REAL NOT NULL
) ENGINE=InnoDB;

CREATE TABLE cidade (
    nome VARCHAR(35) NOT NULL,
    pais VARCHAR(35) NOT NULL,
    pop REAL NOT NULL,
    capital VARCHAR(1) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE rio (
    nome VARCHAR(35) NOT NULL,
    origem VARCHAR(35) NOT NULL,
    pais VARCHAR(35) NOT NULL,
    comprimento INT NOT NULL
) ENGINE=InnoDB;

-- Inserindo os registros

INSERT INTO pais 
(nome,continente,pop,pib,expec_vida)
VALUES
('Canada', 'América do Norte', 30.1, 658, 77.08),
('Mexico', 'América do Norte', 107.5, 694, 69.1),
('Brasil', 'América do Sul', 183.3, 10004, 65.2),
('USA', 'América do Norte', 270.0, 8003, 75.5)

INSERT INTO cidade 
(nome,pais,pop,capital)
VALUES
('Washington', 'USA', 3.3, 1),
('Monterey', 'México', 2.0, 0),
('Brasília', 'Brasil', 1.5, 1),
('São Paulo', 'Brasil', 15.0, 0)
('Ottawa', 'Canadá', 0.8, 1)
('Cidade do Mexico', 'México', 14.1, 1)

INSERT INTO rio
(nome,origem,pais,comprimento)
VALUES
('St.Lawrence', 'USA', "USA", 3.3),
('Grande', 'USA', "México", 2.0),
('Parana', 'Brasil', "Brasil", 1.5),
('Mississipi', 'USA', "USA", 15.0)

-- 1) Liste todas as cidades e os países aos quais pertencem.

SELECT nome, pais FROM cidade;

-- 2) Liste todas as cidades que são capitais.

SELECT nome FROM cidade WHERE capital = 1; 
 
-- 3) Liste todos os atributos dos países onde atributos dos países onde a expectativa de vida é menor que 70 anos.

SELECT * FROM pais WHERE expec_vida < 70;

-- 4) Liste todas as capitais e as populações dos países cujos PIB é maior que 1 trilhão de dólares.

SELECT pais.nome, pais.pop, cidade.nome INNER JOIN cidade ON cidade.pais=pais.nome WHERE pib > 1000;

-- 5) Quais é o nome e a populações da capital do país onde o rio St. Lawrence tem sua nascente.

SELECT cidade.nome, cidade.pop INNER JOIN pais ON cidade.pais=pais.nome INNER JOIN rio ON pais.nome=rio.nascente WHERE rio.nascente = pais.nome;  

-- 6) Qual é a média da população das cidades que não são capitais.

SELECT AVG(pop) FROM cidade WHERE capital = 0;

-- 7) Para cada continente retorne o PIB médio de seus países.

SELECT AVG(pais.pib)

-- 8) Para cada país onde pelo menos 2 rios tem nascente, encontre o comprimento do menor rio.

SELECT AVG(pais.pib) FROM pais GROUP BY pais.continente;

-- 9) Liste os países cujo PIB é maior que o PIB é do Canada.

SELECT pais.pib WHERE pais.pib > 658;