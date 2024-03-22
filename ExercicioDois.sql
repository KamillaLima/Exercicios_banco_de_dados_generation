create database db_ecommerce;

use  db_ecommerce;

create table tb_produtos (
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR (100) NOT NULL,
	valor DECIMAL(6,2) NOT NULL ,
	marca VARCHAR(100) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
    );

INSERT INTO tb_produtos (nome, valor, marca, categoria) VALUES ('Calça Jeans', 69.99, 'Levis', 'Roupa');
INSERT INTO tb_produtos (nome, valor, marca, categoria) VALUES ('Tênis Esportivo', 79.99, 'Nike', 'Calçado');
INSERT INTO tb_produtos (nome, valor, marca, categoria) VALUES ('Boné', 29.99, 'New Era', 'Acessório');
INSERT INTO tb_produtos (nome, valor, marca, categoria) VALUES ('Mochila', 59.99, 'JanSport', 'Acessório');
INSERT INTO tb_produtos (nome, valor, marca, categoria) VALUES ('Caneca', 9.99, 'Tupperware', 'Utensílio Doméstico');
INSERT INTO tb_produtos (nome, valor, marca, categoria) VALUES ('Óculos de Sol', 89.99, 'Ray-Ban', 'Acessório');
INSERT INTO tb_produtos (nome, valor, marca, categoria) VALUES ('Relógio de Pulso', 199.99, 'Casio', 'Acessório');
INSERT INTO tb_produtos (nome, valor, marca, categoria) VALUES ('Bolsa Feminina', 79.99, 'Michael Kors', 'Acessório');

SELECT * from tb_produtos where valor > 500.00;
SELECT * from tb_produtos where valor < 500.00;

UPDATE tb_produtos SET valor = 150.00  WHERE id = 4;

