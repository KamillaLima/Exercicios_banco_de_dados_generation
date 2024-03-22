create database db_servico_rh;

use  db_servico_rh;

create table tb_funcionarios (
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR (100) NOT NULL,
	salario DECIMAL(6,2) NOT NULL ,
    idade INT NOT NULL,
    funcao VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
    );

INSERT INTO tb_funcionarios (nome, salario, idade, funcao) VALUES ("Maria Aparecida de Souza", 3400.00, 43, "recrutadora");
INSERT INTO tb_funcionarios (nome, salario, idade, funcao) VALUES ("Bruno Mendes Oliveira", 9000.00, 53, "diretor financeiro");
INSERT INTO tb_funcionarios (nome, salario, idade, funcao) VALUES ("Hisabele Adriana Da Rosa",2000.00,23,"auxilixar administrativo");
INSERT INTO tb_funcionarios (nome, salario, idade, funcao) VALUES ("Marcos Vinicius Oliveira Lima ",1800.00,20,"estagiário");
INSERT INTO tb_funcionarios (nome, salario, idade, funcao) VALUES ("Camila Cristina Pereira Costa",1300.00,15,"jovem aprendiz");

SELECT * from tb_funcionarios where salario > 2000.00;
SELECT * from tb_funcionarios where salario < 2000.00;

UPDATE tb_funcionarios SET salario = 3500.00  WHERE id = 3;

