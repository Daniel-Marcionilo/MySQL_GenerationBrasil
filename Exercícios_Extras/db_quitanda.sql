/*1. Crie um banco de dados para um serviço de uma quitanda, onde o sistema
trabalhará com as informações dos produtos desta empresa.*/

CREATE DATABASE db_quitanda;

USE db_quitanda;

/*2. Crie uma tabela de produtos e determine 5 atributos relevantes para se trabalhar com
o serviço desta quitanda.
3. Crie uma tabela de categorias para esses produtos.
4. Faça o relacionamento de categorias na tabela de produto através da foreign key
(id_categoria)*/

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)    
);

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
	id_categoria BIGINT,
    nome VARCHAR(255) NOT NULL,
    validade DATE,
    preco DECIMAL(10,2),
    PRIMARY KEY(id),
    FOREIGN KEY(id_categoria) REFERENCES tb_categorias(id)
);

/*5. Insira nestas tabelas no mínimo 5 dados (registros).*/

INSERT INTO tb_categorias(nome) VALUES("HORTIFRUTI");
INSERT INTO tb_categorias(nome) VALUES("BEBIDAS");
INSERT INTO tb_categorias(nome) VALUES("LATICÍNIOS");
INSERT INTO tb_categorias(nome) VALUES("PADARIA");
INSERT INTO tb_categorias(nome) VALUES("HIGIENE");

INSERT INTO tb_produtos(id_categoria, nome, validade, preco) 
VALUES(1, "Maçã", "2022-04-25", 5.50),
      (2, "Refrigerante", "2030-04-25", 10.52),
	  (3, "Queijo Minas", "2025-03-15", 65.75),
	  (4, "Pão de Queijo", "2021-05-17", 3.50),
      (5, "Escova de Dente", "2022-12-22", 4.50);

/*6. Faça um SELECT que retorne todos os produtos.*/
SELECT * FROM tb_produtos;

/*7. Faça um SELECT que retorne todas as categorias.*/
SELECT * FROM tb_categorias;

/*8. Faça um SELECT que retorne todas as com o valor maior do que 50*/
SELECT * FROM tb_categorias INNER JOIN tb_produtos ON tb_produtos.id_categoria = tb_categorias.id WHERE preco > 50.00;

/*9. Faça um SELECT que retorne todos os produtos que contém a letra %a%.*/
SELECT * FROM tb_produtos WHERE nome LIKE "%a%";
/*10.Ao término atualize um registro desta tabela através de uma query de atualização.*/
UPDATE tb_produtos SET preco = 115.75 where tb_produtos.id = 3;
