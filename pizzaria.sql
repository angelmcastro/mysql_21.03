CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
categoria varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (categoria)
VALUES ("Salgadas");

INSERT INTO tb_categoria (categoria)
VALUES ("Doces");

INSERT INTO tb_categoria (categoria)
VALUES ("Especiais");

CREATE TABLE tb_pizza(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
valor decimal(8,2),
sabor varchar(255) NOT NULL,
borda_recheada varchar(255) NOT NULL,
cobertura_extra varchar(255) NOT NULL,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_pizza(id)
);

INSERT INTO tb_pizza (nome, valor, sabor, borda_recheada, cobertura_extra, categoria_id)
VALUES ("Mussarela", 25.99, "mussarela e molho de tomate", "catupiry", "não", 1);

INSERT INTO tb_pizza (nome, valor, sabor, borda_recheada, cobertura_extra, categoria_id)
VALUES ("Calabresa", 25.99, "calabresa fatiada e molho de tomate", "catupiry", "não", 1);

INSERT INTO tb_pizza (nome, valor, sabor, borda_recheada, cobertura_extra, categoria_id)
VALUES ("Bauru", 30.00, "mussarela, presunto, tomate e molho", "catupiry", "não", 1);

INSERT INTO tb_pizza (nome, valor, sabor, borda_recheada, cobertura_extra, categoria_id)
VALUES ("Camarão", 50.99, "camarão, mussarela e molho", "catupiry", "sim", 3);

INSERT INTO tb_pizza (nome, valor, sabor, borda_recheada, cobertura_extra, categoria_id)
VALUES ("Banana com canela", 32.99, "banana, leite condensado e canela", "doce de leite", "não", 2);

INSERT INTO tb_pizza (nome, valor, sabor, borda_recheada, cobertura_extra, categoria_id)
VALUES ("Morango", 40.00, "morango com chocolate", "não", "sim", 2);

SELECT * FROM tb_pizza WHERE valor > 45;
SELECT * FROM tb_pizza WHERE valor BETWEEN 29 AND 60;
SELECT * FROM tb_pizza WHERE nome LIKE "%c%";

SELECT nome, valor, sabor, borda_recheada, cobertura_extra 
FROM tb_pizza INNER JOIN tb_categoria 
ON tb_pizza.categoria_id = tb_categoria.id;

SELECT nome, valor, sabor, borda_recheada, cobertura_extra
FROM tb_pizza INNER JOIN tb_categoria
ON tb_pizza.categoria_id = tb_categoria.id
WHERE tb_categoria.categoria = "Salgadas";






