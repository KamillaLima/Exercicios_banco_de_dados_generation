create database db_construindo_vidas;

use  db_construindo_vidas;

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
('Eletricidade', 'Categoria voltada para aparelhos relacionados a eletricidade');

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Janelas', 'Categoria voltada para janelas');

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Material de construção', 'Categoria voltada para  os materiais de construção');

INSERT INTO tb_categorias (nome_categoria, descricao) VALUES
('Segurança', 'Categoria voltada para itens de segurança');

INSERT INTO tb_produtos (nome,valor,marca,estoque,categoria_id) values ("Lâmpada Led Bulbo E27 9w Bivolt 6500k Branca",6.00,"Casa nova",30,1);
INSERT INTO tb_produtos (nome,valor,marca,estoque,categoria_id) values ("Kit Fita Led 2835 5w/M 2700k 5m 12v 100-240v Amarela",169.99,"Black & Decker",12,1);

INSERT INTO tb_produtos (nome,valor,marca,estoque,categoria_id) values ("Vitrô Basculante com Vidro Plus em Alumínio 40x40cm Brilhante",106.99,"Brimak",50,2);
INSERT INTO tb_produtos (nome,valor,marca,estoque,categoria_id) values ("Vitrô Basculante com Vidro em Alumínio Master 80x80cm Brilhante",259.99,"Brimak",12,2);

INSERT INTO tb_produtos (nome,valor,marca,estoque,categoria_id) values ("Bloco Cerâmico de Vedação 8 Furos 9x19x19cm",0.99,"ceramica tatuí",500,3);
INSERT INTO tb_produtos (nome,valor,marca,estoque,categoria_id) values ("Vergalhão Ca60 Nervurado em Aço 5/32'' 4,2mm com 12 Metros",13.99,"ArcelorMittal",200,3);

INSERT INTO tb_produtos (nome,valor,marca,estoque,categoria_id) values ("Fechadura Externa com Roseta Quadratta Cromada",202.99,"Aliança",5,4);
INSERT INTO tb_produtos (nome,valor,marca,estoque,categoria_id) values ("Fechadura para Banheiro Roseta Redonda Home Bronze Latonado",110.99,"Aliança",12,4);


SELECT * from tb_produtos where valor > 100.00;

SELECT * FROM tb_produtos WHERE valor BETWEEN 70 AND 150;

SELECT * FROM tb_produtos where nome LIKE '%c%' ;


SELECT tb_produtos.nome,tb_produtos.marca,tb_produtos.valor,tb_categorias.nome_categoria,tb_categorias.descricao 
from tb_produtos 
inner join tb_categorias 
on tb_produtos.id = tb_categorias.id;


SELECT tb_produtos.nome, tb_produtos.marca, tb_produtos.valor, tb_categorias.nome_categoria, tb_categorias.descricao 
FROM tb_produtos 
INNER JOIN  tb_categorias 
ON  tb_produtos.categoria_id = tb_categorias.id 
WHERE  tb_categorias.nome_categoria = 'Seguranca';
