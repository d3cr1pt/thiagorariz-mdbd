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