USE lojaday;

CREATE TABLE IF NOT EXISTS clientes (
	id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    telefone VARCHAR(11) NOT NULL,
    PRIMARY KEY(id)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS produtos (
	id INT(11) AUTO_INCREMENT NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    preco REAL NOT NULL,
    qtde INT NOT NULL,
    PRIMARY KEY(id)
)ENGINE=INNODB;

-- 1) Insira os seguintes registros na tabela produtos:

INSERT INTO produtos (descricao,preco,qtde) VALUES ('Coca - Cola 2l',6,30);
INSERT INTO produtos (descricao,preco,qtde) VALUES ('Arroz 5KG',10,20);
INSERT INTO produtos (descricao,preco,qtde) VALUES ('Leite UHT',3,50);
INSERT INTO produtos (descricao,preco,qtde) VALUES ('Macarrão Parafuso',2,80);
INSERT INTO produtos (descricao,preco,qtde) VALUES ('Feijão Carioca',4,10);
INSERT INTO produtos (descricao,preco,qtde) VALUES ('Bolacha Negresco',2.2,20);
INSERT INTO produtos (descricao,preco,qtde) VALUES ('Sabão em pó OMO',12.5,10);
INSERT INTO produtos (descricao,preco,qtde) VALUES ('Detergente Limpol',1.5,20);
INSERT INTO produtos (descricao,preco,qtde) VALUES ('Esponja aço Bombril',3.2,100);

-- 2) Faça uma consulta que retorne apenas descrição e preço, ordenado pelo preço.

SELECT descricao,preco FROM produtos ORDER BY preco ASC;

-- 3) Faça uma consulta que retorne todos os campos, ordenados pela descrição.

SELECT * FROM produtos ORDER BY descricao ASC;

-- 4) Faça uma consulta que retorne todos os registros que contém as características ‘UHT’ em algum lugar da descrição.

SELECT * FROM produtos WHERE descricao LIKE '%UHT%';

-- 5) Faça uma consulta que retorne descrição e qtde para todos os registros que possuírem o preço 2,00.

SELECT descricao,qtde FROM produtos WHERE preco = 2;

-- 6) Faça uma consulta que retorne que a descrição e preço, ordenado pelo preço, do mais caro para o mais barato.

SELECT descricao,preco FROM produtos ORDER BY preco DESC;

-- 7) Altere o preço do produto cuja descrição é sabão em pó omo para 9,99. 

UPDATE produtos SET preco = 9.99 WHERE descricao = 'Sabão em pó OMO';

-- 8) Altere a descrição do produto coca cola 2l para Pepsi 2l.

UPDATE produtos SET descricao = 'Pepsi 2l' WHERE descricao = 'Coca - Cola 2l';

-- 9) Altere o preço e a quantidade, para o registro cuja descrição é detergente limpol, para 1,60 e 45.

UPDATE produtos SET preco = 1.6, qtde = 45 WHERE descricao = 'Detergente Limpol';

-- 10) Apague o registro cujo preço é 2.20.

DELETE FROM produtos WHERE preco = 2.2;

-- 11) Apague o produto cuja descrição é feijão carioca.

DELETE FROM produtos WHERE descricao = 'Feijão Carioca';

-- 12) Altere todas as qtdes para 0.

UPDATE produtos SET qtde = 0;

--
--  Exercicios do dia 10/09/2019
--

-- 13) Crie esta tabela no banco de dados

CREATE TABLE empregado (
        codEmp INTEGER NOT NULL,
        nome VARCHAR(45),
        dataNasc DATE,
        endereco VARCHAR(90),
        sexo CHAR(1),
        salario NUMERIC(10,2),
        codSuperv INTEGER,
        codDepto INTEGER,
        PRIMARY KEY (codEmp)
);

-- 14) Insira os registros na tabela empregado

INSERT INTO empregado VALUES (1,'Joao da Silva','1955-01-09','Rua dos Camelos, 23','M',30000,2,5);
INSERT INTO empregado VALUES (2,'Horacio Bagual','1970-10-10','Av. dos Tapejaras, 90','M',40000,7,5);
INSERT INTO empregado VALUES (3,'Ana Bacana','1980-06-20','Av. Atacama, 10 apto 22','F',25000,4,4);
INSERT INTO empregado VALUES (4,'Antonio Pestana','1990-04-13','Rod. Imigrantes, 1940','M',45000,7,4);
INSERT INTO empregado VALUES (5,'Maria Antonia Real','1982-11-14','Rua Petropolis, 13','F',38000,2,5);
INSERT INTO empregado VALUES (6,'Ada Maria Lovelace','1965-10-15','Rua dos Ingleses, 1020','F',25000,2,5);
INSERT INTO empregado VALUES (8,'Joaquina Pasqualini','1968-08-17','Rua dos Ingleses, 1010','F',25000,4,4);
INSERT INTO empregado VALUES (7,'Jaime Bonde','1958-01-01','Rua dos Ingleses, 1010','M',70000,null,1);

-- 15) Alterar o salário do empregado de código 3 para 28000

UPDATE empregado SET salario = 28000.00 WHERE codEmp = 3;

-- 16) Obter nomes de empregados com salario > 30000

SELECT * FROM empregado WHERE salario > 30000;

-- 17) Obter nomes de empregados que começam com a letra 'A'. Dica: use LIKE.

SELECT nome FROM empregado WHERE nome LIKE 'A%';

-- 18) Obter os nomes e datas de nascimento dos empregados que fazem aniversário no mês de outubro. Dica: use %

SELECT nome, dataNasc FROM empregado WHERE dataNasc '%10%';

-- 19) Listar os empregados em ordem alfabética. Dica: use ORDER BY. 

SELECT * FROM empregado ORDER BY nome ASC;
