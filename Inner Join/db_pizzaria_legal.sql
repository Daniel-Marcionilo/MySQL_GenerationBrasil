CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

/*Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas.*/
CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    qtdePizzas INT,
    PRIMARY KEY(id)
);

/*Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.*/
CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    tamanho VARCHAR(255),
    ingredientes VARCHAR(255),
    preco DECIMAL(10,2),
	fk_categoria BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY(fk_categoria) REFERENCES tb_categorias(id)
);

-- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias(nome, qtdePizzas) VALUES("DOCE",24);
INSERT INTO tb_categorias(nome, qtdePizzas) VALUES("SALGADAS",15);
INSERT INTO tb_categorias(nome, qtdePizzas) VALUES("ESPECIAIS",3);
INSERT INTO tb_categorias(nome, qtdePizzas) VALUES("VEGANAS",2);
INSERT INTO tb_categorias(nome, qtdePizzas) VALUES("A MODA DA CASA",1);

-- Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
INSERT INTO tb_pizzas(nome, tamanho, ingredientes, preco, fk_categoria) VALUES("Mussarela", "Grande", "Queijo, Tomate, Orégano", 25.99, 2);
INSERT INTO tb_pizzas(nome, tamanho, ingredientes, preco, fk_categoria) VALUES("Calabresa", "Meio a Meio", "Calabresa, Tomate, Cebola", 30.25, 2);
INSERT INTO tb_pizzas(nome, tamanho, ingredientes, preco, fk_categoria) VALUES("BanaChoco", "Grande", "Banana e Chocolate", 35, 1);
INSERT INTO tb_pizzas(nome, tamanho, ingredientes, preco, fk_categoria) VALUES("MixSalada", "Calzone", "Alface,Tomate, Orégano, Cebola", 20, 4);
INSERT INTO tb_pizzas(nome, tamanho, ingredientes, preco, fk_categoria) VALUES("4 Queijos", "Grande", "Provolone, Minas, Gorgonzola, Mussarela", 55);
INSERT INTO tb_pizzas(nome, tamanho, ingredientes, preco, fk_categoria) VALUES("X-Infarto", "Grande", "Bacon, Ovo, Queijo, Calabresa, Presunto, Hambúrguer, Alface, Cheddar, Catupiry", 75.50, 3);
INSERT INTO tb_pizzas(nome, tamanho, ingredientes, preco, fk_categoria) VALUES("Frango c/ Catupiry", "Pequena", "Catupiry e Frango", 45.50, 2);
INSERT INTO tb_pizzas(nome, tamanho, ingredientes, preco, fk_categoria) VALUES("Morango c/ Nutela", "Grande", "Morango e Nutela", 40, 1);

-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE preco > 45;

-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE preco > 50 and preco < 100;

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
SELECT * FROM tb_pizzas INNER JOIN tb_categorias on tb_pizzas.fk_categoria = tb_categorias.id;

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias,
onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).*/
SELECT * FROM tb_pizzas INNER JOIN tb_categorias on tb_pizzas.fk_categoria = tb_categorias.id WHERE tb_categorias.nome = "ESPECIAIS";



