CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

-- Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar
-- os personagens do Game Online.

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255),
    item VARCHAR(255),
	PRIMARY KEY(id)
);

-- Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, relevantes aos personagens do Game Online.

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    forca DECIMAL(10,2),
    ataque DECIMAL(10,2),
    defesa DECIMAL(10,2),
    fk_classe BIGINT,
    PRIMARY KEY(id),
	FOREIGN KEY(fk_classe) REFERENCES tb_classes(id)
); 

-- Insira 5 registros na tabela tb_classes.
INSERT INTO tb_classes(nome, item) VALUES("Gladiador","Machado"),
										 ("Arqueiro","Arco e Flecha"),
										 ("Lutador","Taco de Baseball"),
                                         ("Mago","Anel de Dóran"),
                                         ("Feiticeiro","Poção Corrupta");
                                         
-- Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.
INSERT INTO tb_personagens(nome, forca, ataque, defesa, fk_classe) 
VALUES("DevJr", 15.55, 2500.55, 1500.75, 3);

INSERT INTO tb_personagens(nome, forca, ataque, defesa, fk_classe) 
VALUES("Kymioni",75.55,3500.55, 1750.25, 1);

INSERT INTO tb_personagens(nome, forca, ataque, defesa, fk_classe) 
VALUES("Pingunto", 35.99, 3500.25, 750.37, 5);                                      

INSERT INTO tb_personagens(nome, forca, ataque, defesa, fk_classe) 
VALUES("AaZT", 98.15, 1000.85, 1000.25, 4);

INSERT INTO tb_personagens(nome, forca, ataque, defesa, fk_classe) 
VALUES("TinkerDO", 76.45, 1535.29, 1227, 4);

INSERT INTO tb_personagens(nome, forca, ataque, defesa, fk_classe) 
VALUES("PokerFace", 28.82, 2900.88, 9999, 2);

INSERT INTO tb_personagens(nome, forca, ataque, defesa, fk_classe) 
VALUES("Zoro", 92.2, 1715.56, 2876.25, 2);

INSERT INTO tb_personagens(nome, forca, ataque, defesa, fk_classe) 
VALUES("Runan", 78.78, 2535.85, 2022.22, 4);

INSERT INTO tb_personagens(nome, forca, ataque, defesa, fk_classe) 
VALUES("Patolino", 99999.99, 99999.99, 99999.99, 4);

/*Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.*/
SELECT * FROM tb_personagens WHERE ataque > 2000;

-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
SELECT * FROM tb_personagens WHERE defesa > 1000 AND defesa < 2000;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
SELECT * FROM tb_personagens INNER JOIN tb_classes ON fk_classe = tb_classes.id;

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes,
onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
*/
SELECT * FROM tb_personagens INNER JOIN tb_classes ON fk_classe = tb_classes.id WHERE tb_classes.nome = "Mago";




