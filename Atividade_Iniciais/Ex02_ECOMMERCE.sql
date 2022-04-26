CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE produtos(
   id BIGINT AUTO_INCREMENT,
   nome VARCHAR(255),
   marca VARCHAR(255),
   preco FLOAT,
   modelo VARCHAR(255),  
   PRIMARY KEY(id)
);

INSERT INTO produtos(nome, marca, preco, modelo)
VALUES("Smartphone", "Xiaomi", 1500, "Redmi Note 7"),
      ("Smartphone", "Xiaomi", 1850, "Redmi Note 8 Azul"),
      ("Smartphone", "Xiaomi", 1379, "Poco Phone"),
      ("Smartphone", "Xiaomi", 4999, "Shark"),
      ("Smartphone", "Xiaomi", 1200, "Redmi Note 5"),
      ("Smartphone", "Xiaomi", 1219, "Redmi Note 6"),
      ("Smartphone", "Xiaomi", 1179, "Redmi 8A"),
      ("Borracha", "Faber Castel", 1.50, "Smart"),
      ("Lápis", "Faber Castel", 475.25, "Foguete");
      
SELECT * FROM produtos WHERE preco > 500;
SELECT * FROM produtos WHERE preco < 500;

UPDATE produtos SET preco = 15500, marca = "Iphone", modelo = "XR 13 PRO" WHERE id = 2; 