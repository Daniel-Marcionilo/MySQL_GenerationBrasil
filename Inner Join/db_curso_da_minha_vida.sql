CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
	id_categoria BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    periodo VARCHAR(255)
);

CREATE TABLE tb_cursos (
	id_produto BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    qtde_Vagas INT,
    modelo VARCHAR(255),
    preco DECIMAL(10,2),
    fk_categoria BIGINT,
    FOREIGN KEY(fk_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias(nome, periodo) VALUES("Tecnologia", "Matutino");
INSERT INTO tb_categorias(nome, periodo) VALUES("Técnico", "Vespertino");
INSERT INTO tb_categorias(nome, periodo) VALUES("Linux", "Noturno");
INSERT INTO tb_categorias(nome, periodo) VALUES("Programação WEB", "Noturno");
INSERT INTO tb_categorias(nome, periodo) VALUES("Banco de Dados", "Matutino");

INSERT INTO tb_cursos(nome, qtde_Vagas, modelo, preco, fk_categoria)
VALUES("Java - Criando um ChatBot", 20, "EAD", 715.50, 1);

INSERT INTO tb_cursos(nome, qtde_Vagas, modelo, preco, fk_categoria)
VALUES("Inglês Técnico", 40, "EAD", 899, 2);

INSERT INTO tb_cursos(nome, qtde_Vagas, modelo, preco, fk_categoria)
VALUES("Linux - Primeiros comandos", 35, "Presencial", 199, 3);

INSERT INTO tb_cursos(nome, qtde_Vagas, modelo, preco, fk_categoria)
VALUES("HTML, CSS, JS - Criando um Site", 45, "Presencial", 379.95, 4);

INSERT INTO tb_cursos(nome, qtde_Vagas, modelo, preco, fk_categoria)
VALUES("MySQL WorkBench", 55, "EAD", 499.99, 5);


SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco > 600.00 and preco < 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias on fk_categoria = id_categoria;

SELECT * FROM tb_cursos INNER JOIN tb_categorias on fk_categoria = id_categoria WHERE id_categoria = 4;



