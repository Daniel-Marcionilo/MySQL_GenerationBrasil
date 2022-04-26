CREATE DATABASE db_famacia_bem_estar;
USE db_famacia_bem_estar;

CREATE TABLE tb_categorias(
	id_categoria BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    tarja VARCHAR(255)
);

CREATE TABLE tb_produtos(
	id_produto BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    marca VARCHAR(255),
    modelo VARCHAR(255),
    cor VARCHAR(100),
    preco DECIMAL(10,2),
    fk_categoria BIGINT,
    FOREIGN KEY(fk_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias(nome, tarja) VALUES("Dermatológico", "Vermelha");
INSERT INTO tb_categorias(nome, tarja) VALUES("Fisioterapeutico", "Preta");
INSERT INTO tb_categorias(nome, tarja) VALUES("Psicológico", "Preta");
INSERT INTO tb_categorias(nome, tarja) VALUES("Antibióticos", "Amarela");
INSERT INTO tb_categorias(nome, tarja) VALUES("Clínico", "Preta");

INSERT INTO tb_produtos(nome, marca, modelo, cor, preco, fk_categoria)
VALUES("Shampoo", "Kerium", "Uso tópico", "Branco", 75.50, 1);

INSERT INTO tb_produtos(nome, marca, modelo, cor, preco, fk_categoria)
VALUES("Sabonete", "Vihys", "DS", "Vermelho", 55.50, 2);

INSERT INTO tb_produtos(nome, marca, modelo, cor, preco, fk_categoria)
VALUES("Jolp", "Ters", "AioLpa", "Preta", 15.50, 3);

INSERT INTO tb_produtos(nome, marca, modelo, cor, preco, fk_categoria)
VALUES("Dipirona", "HyqUB", "PiqwE", "Amarelo", 25.50, 4);

INSERT INTO tb_produtos(nome, marca, modelo, cor, preco, fk_categoria)
VALUES("Benzetacil", "Kopq", "WOLW", "Cinza", 35.25, 5);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco > 5.00 and preco < 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias on fk_categoria = id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias on fk_categoria = id_categoria WHERE id_categoria = 4;



