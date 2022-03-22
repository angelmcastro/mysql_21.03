CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
categoria varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (categoria)
VALUES ("Medicamentos");

INSERT INTO tb_categoria (categoria)
VALUES ("Perfumaria");

INSERT INTO tb_categoria (categoria)
VALUES ("Eletrônicos");

CREATE TABLE tb_produto(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
valor decimal(8,2),
quantidade int,
validade date NULL,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_produto(id)
);

INSERT INTO tb_produto (nome, valor, quantidade, validade, categoria_id)
VALUES ("Minoxidil", 17.99, 1, "2024-02-07", 1);

INSERT INTO tb_produto (nome, valor, quantidade, validade, categoria_id)
VALUES ("Dipirona", 5.90, 1, "2025-06-22", 1);

INSERT INTO tb_produto (nome, valor, quantidade, validade, categoria_id)
VALUES ("Hidratante", 59.99, 1, "2026-05-17", 2);

INSERT INTO tb_produto (nome, valor, quantidade, validade, categoria_id)
VALUES ("Medidor de pressão", 129.99, 1, "0000-00-00", 3);

INSERT INTO tb_produto (nome, valor, quantidade, validade, categoria_id)
VALUES ("Ibrupufeno", 2.00, 1, "2024-03-23", 1);

SELECT * FROM tb_produto WHERE valor > 50.00;

SELECT * FROM tb_produto WHERE valor > 3.00 AND valor < 60.00;

SELECT * FROM tb_produto WHERE nome LIKE "%b%";

SELECT nome, quantidade, valor, validade
 FROM tb_produto INNER JOIN tb_categoria
 ON tb_produto.categoria_id = tb_categoria.id;










