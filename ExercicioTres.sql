create database db_escola;

use  db_escola;

create table tb_alunos (
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR (100) NOT NULL,
	nota_portugues DECIMAL(4,2) NOT NULL ,
	nota_matematica DECIMAL(4,2) NOT NULL ,
    serie VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
    );

INSERT INTO tb_alunos (nome, nota_portugues, nota_matematica, serie) VALUES ('João da Silva', 7.50, 8.25, '9º ano');
INSERT INTO tb_alunos (nome, nota_portugues, nota_matematica, serie) VALUES ('Maria Oliveira', 9.00, 7.75, '8º ano');
INSERT INTO tb_alunos (nome, nota_portugues, nota_matematica, serie) VALUES ('Pedro Santos', 6.75, 6.50, '7º ano');
INSERT INTO tb_alunos (nome, nota_portugues, nota_matematica, serie) VALUES ('Ana Souza', 8.25, 9.50, '9º ano');
INSERT INTO tb_alunos (nome, nota_portugues, nota_matematica, serie) VALUES ('Lucas Pereira', 7.00, 8.00, '8º ano');
INSERT INTO tb_alunos (nome, nota_portugues, nota_matematica, serie) VALUES ('Juliana Lima', 6.50, 7.25, '7º ano');
INSERT INTO tb_alunos (nome, nota_portugues, nota_matematica, serie) VALUES ('Mariana Costa', 8.75, 9.25, '9º ano');
INSERT INTO tb_alunos (nome, nota_portugues, nota_matematica, serie) VALUES ('Felipe Martins', 9.50, 8.75, '8º ano');


SELECT * from tb_alunos where nota_portugues > 7.0;
SELECT * from tb_alunos where nota_portugues < 7.0;
SELECT * from tb_alunos where nota_matematica > 7.0;
SELECT * from tb_alunos where nota_matematica < 7.0;


UPDATE tb_alunos SET nota_portugues = 10.0  WHERE id = 4;

