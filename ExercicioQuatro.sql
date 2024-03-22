create database db_farmacia_bem_estar;

use  db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao VARCHAR(200) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    valor DECIMAL(5, 2) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    estoque INT NOT NULL,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Medicamentos genéricos', 'Categoria voltada para medicamentos genéricos');

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Higiene Pessoal', 'Categoria voltada para produtos de higiene pessoal');

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Suplementos', 'Categoria voltada para  os suplementos alimentares');

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Bebidas', 'Categoria voltada para as bebidas vendidas na farmacia');

INSERT INTO tb_produtos (nome, valor, marca, estoque, categoria_id) VALUES
('Paracetamol', 10.50, 'neo quimica', 100, 1);

INSERT INTO tb_produtos (nome, valor, marca, estoque, categoria_id) VALUES
('Shampoo', 24.85, 'Pantene', 50, 2);

INSERT INTO tb_produtos (nome, valor, marca, estoque, categoria_id) VALUES
('Whey Protein', 180.00, 'Dux', 15, 3);

INSERT INTO tb_produtos (nome, valor, marca, estoque, categoria_id) VALUES
('Água Mineral', 2.00, 'Crystal', 200, 4);

INSERT INTO tb_produtos (nome, valor, marca, estoque, categoria_id) VALUES
('butilbrometo de escopolamina 10mg/mL', 7.25, 'Buscopan', 75, 1);

INSERT INTO tb_produtos (nome, valor, marca, estoque, categoria_id) VALUES
('Pasta de dente', 5.50, 'Colgate', 40, 2);

INSERT INTO tb_produtos (nome, valor, marca, estoque, categoria_id) VALUES
('Creatina', 90.00, 'Max', 15, 3);

INSERT INTO tb_produtos (nome, valor, marca, estoque, categoria_id) VALUES
('Refrigerante', 6.50, 'Coca-Cola', 100, 4);

SELECT * from tb_produtos where valor > 50.00;


SELECT * FROM tb_produtos WHERE valor BETWEEN 5 AND 60;

SELECT * FROM tb_produtos where nome LIKE '%c%' ;


SELECT tb_produtos.nome,tb_produtos.marca,tb_produtos.valor,tb_categorias.nome_categoria,tb_categorias.descricao 
from tb_produtos 
inner join tb_categorias 
on tb_produtos.id = tb_categorias.id;


SELECT tb_produtos.nome, tb_produtos.marca, tb_produtos.valor, tb_categorias.nome_categoria, tb_categorias.descricao 
FROM tb_produtos 
INNER JOIN  tb_categorias 
ON  tb_produtos.categoria_id = tb_categorias.id 
WHERE  tb_categorias.nome_categoria = 'Higiene Pessoal';
