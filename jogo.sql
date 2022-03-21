CREATE DATABASE db_game_online;
USE db_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT NOT NULL,
nome varchar(255) NOT NULL,
habilidade varchar(255),
arma varchar(255),
PRIMARY KEY (id)
);

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Atirador", "flecha de fogo", "arco e flecha");

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Feiticeira", "magia", "cajado");

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Mago", "feitiços", "varinha");

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Mestre", "comando", "grimório");

INSERT INTO tb_classes (nome, habilidade, arma)
VALUES ("Fada", "voar", "voz");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT NOT NULL,
nome varchar(255) NOT NULL,
nivel int,
ataque int,
defesa int,
classe_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes (id)
);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Akasha", 3, 2000, 1500, 2);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Luryan", 5, 3000, 2000, 3);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Zafira", 7, 5000, 9000, 5);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Elya", 1, 400, 200, 1);

INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES ("Onyx", 6, 4500, 4000, 5);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classes_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classes_id = tb_classes.id 
WHERE tb_classes.nome = "Magia"; 
















