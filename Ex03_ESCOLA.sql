CREATE DATABASE escola;
USE escola;

CREATE TABLE estudantes(
   matricula BIGINT AUTO_INCREMENT,
   nome VARCHAR(255),
   data_nascimento VARCHAR(255),
   nota DECIMAL(10,1),
   periodo VARCHAR(255),  
   PRIMARY KEY(matricula)
);

INSERT INTO estudantes(nome, data_nascimento, nota, periodo)
VALUES("Joaquim", "25/09/2000", 8.0, "Matutino"),
      ("João", "24/05/2000", 7.5, "Vespertino"),
      ("Maria", "17/03/2001", 3, "Noturno"),
      ("Aline", "05/06/2002", 9, "Vespertino"),
      ("Jessica", "07/07/2002", 8, "Vespertino"),
      ("Renata", "02/05/2003", 2, "Matutino"),
      ("Paulo", "05/09/2004", 9, "Noturno"),
      ("Bruna", "09/09/2009", 4.5, "Noturno"),
      ("Lucas", "01/01/2001", 5.0, "Vespertino");

SELECT * FROM estudantes WHERE nota > 7.0;
SELECT * FROM estudantes WHERE nota < 7.0;

UPDATE estudantes SET nota = 8.5, periodo = "Noturno" WHERE matricula = 1; 