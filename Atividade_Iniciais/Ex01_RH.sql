CREATE DATABASE RH;
USE RH;

CREATE TABLE funcionarios(
   matricula BIGINT AUTO_INCREMENT,
   nome VARCHAR(255),
   data_aniversario VARCHAR(255),
   salario INT,
   cargo VARCHAR(255),  
   PRIMARY KEY(matricula)
);

INSERT INTO funcionarios(nome, data_aniversario, salario, cargo)
VALUES("Daniel", "05/08/2002", 4000, "Desenvolvedor Java Jr");

INSERT INTO funcionarios(nome, data_aniversario, salario, cargo)
VALUES("Douglas", "03/10/1999", 8000, "Diretor de TI");

INSERT INTO funcionarios(nome, data_aniversario, salario, cargo)
VALUES("Leonardo", "03/01/2000", 5000, "Engenheiro de Software");

INSERT INTO funcionarios(nome, data_aniversario, salario, cargo)
VALUES("Lucas", "05/05/1989", 1500, "Analista de BI");

INSERT INTO funcionarios(nome, data_aniversario, salario, cargo)
VALUES("Ana Julia Silva", "02/02/2001", 10000, "CEO");

SELECT * FROM funcionarios WHERE salario > 2000;
SELECT * FROM funcionarios WHERE salario < 2000;

UPDATE funcionarios SET cargo = "CTO" where matricula = 5; 