CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
	id_categoria BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    ponto boolean
);

CREATE TABLE tb_produtos(
	id_produto BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    marca VARCHAR(255),
    modelo VARCHAR(255),
    preco DECIMAL(10,2),
    fk_categoria BIGINT,
    FOREIGN KEY(fk_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias(nome, ponto) VALUES("No ponto", true);
INSERT INTO tb_categorias(nome, ponto) VALUES("Muito Assada", true);
INSERT INTO tb_categorias(nome, ponto) VALUES("Mal passada", false);
INSERT INTO tb_categorias(nome, ponto) VALUES("A moda da casa", false);
INSERT INTO tb_categorias(nome, ponto) VALUES("Especial", true);


INSERT INTO tb_produtos(nome, marca, modelo, preco, fk_categoria)
VALUES("Picanha", "Friboi", "Churrascaria", 75.50, 1);

INSERT INTO tb_produtos(nome, marca, modelo, preco, fk_categoria)
VALUES("Patinho", "Tio João", "Selada", 55.50, 2);

INSERT INTO tb_produtos(nome, marca, modelo, preco, fk_categoria)
VALUES("Filé Mion", "Swift", "Cortada", 85.95, 3);

INSERT INTO tb_produtos(nome, marca, modelo, preco, fk_categoria)
VALUES("Alcatra", "Swift", "Moída", 33.95, 4);

INSERT INTO tb_produtos(nome, marca, modelo, preco, fk_categoria)
VALUES("Maminha", "Casa de Carne", "Moida", 115.95, 5);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco > 50.00 and preco < 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias on fk_categoria = id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias on fk_categoria = id_categoria WHERE id_categoria = 1;



