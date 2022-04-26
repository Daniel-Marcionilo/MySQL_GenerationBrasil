CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias(
	id_categoria BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    tipo VARCHAR(255)
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

INSERT INTO tb_categorias(nome, tipo) VALUES("Marcenaria", "Armários");
INSERT INTO tb_categorias(nome, tipo) VALUES("Civil", "Casas");
INSERT INTO tb_categorias(nome, tipo) VALUES("Tubulações", "Pesado");
INSERT INTO tb_categorias(nome, tipo) VALUES("Vidraçaria", "Rígidas");
INSERT INTO tb_categorias(nome, tipo) VALUES("Coberturas", "Leve");

INSERT INTO tb_produtos(nome, marca, modelo, preco, fk_categoria)
VALUES("Madeira", "WorldWord", "Móveis", 75.50, 1);

INSERT INTO tb_produtos(nome, marca, modelo, preco, fk_categoria)
VALUES("Cimento", "Tigre", "Civil", 45.25, 2);

INSERT INTO tb_produtos(nome, marca, modelo, preco, fk_categoria)
VALUES("Tubo", "Tigre", "Geral", 85.75, 3);

INSERT INTO tb_produtos(nome, marca, modelo, preco, fk_categoria)
VALUES("Telhas", "Amanco", "Geral", 115.75, 4);

INSERT INTO tb_produtos(nome, marca, modelo, preco, fk_categoria)
VALUES("Vidro Temperado", "View", "Geral", 45.15, 5);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco > 70.00 and preco < 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias on fk_categoria = id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias on fk_categoria = id_categoria WHERE id_categoria = 4;



