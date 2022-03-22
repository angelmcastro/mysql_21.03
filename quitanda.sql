CREATE DATABASE db_cidade_das_frutas;
USE db_cidade_das_frutas;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
categoria varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (categoria)
VALUES ("Frutas");

INSERT INTO tb_categoria (categoria)
VALUES ("Verduras");

INSERT INTO tb_categoria (categoria)
VALUES ("Legumes");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
valor decimal(8,2),
quantidade int
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_produto(id)
);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES ("Morango", 9.00, 3, 1);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES ("Limão", 5.00, 10, 1);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES ("Alface", 2.99, 1, 2);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES ("Batata", 3.50, 5, 3);

INSERT INTO tb_produto (nome, valor, quantidade, categoria_id)
VALUES ("Cenoura", 2.55, 2, 3);

SELECT * FROM tb_produto WHERE valor > 50.00;

SELECT * FROM tb_produto WHERE valor > 3.00 AND valor < 60.00;

SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT nome, quantidade, valor, validade
 FROM tb_produto INNER JOIN tb_categoria
 ON tb_produto.categoria_id = tb_categoria.id; 
 
 SELECT nome, quantidade, valor, validade
 FROM tb_produto INNER JOIN tb_categoria
 ON tb_produto.categoria_id = tb_categoria.id
 WHERE tb_categoria.categoria= "verdura" ; 




