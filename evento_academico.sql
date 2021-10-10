CREATE DATABASE Evento_Academico;
USE Evento_Academico;

CREATE TABLE eventoacad(
id_evento INTEGER NOT NULL,
nome_evento VARCHAR(128) NOT NULL,
sigla_evento VARCHAR(20),
tema_evento VARCHAR(128) NOT NULL,
edicao_evento INTEGER(6) NOT NULL,
uni_promove INTEGER(14),
PRIMARY KEY(id_evento), 
FOREIGN KEY(uni_promove) REFERENCES universidade(id_uni)   
);

CREATE TABLE universidade(
id_uni INTEGER NOT NULL,
cnpj_uni INTEGER(14) NOT NULL,
nome_uni VARCHAR(128) NOT NULL,
sigla_uni VARCHAR(20),
PRIMARY KEY (id_uni) 
);

CREATE TABLE artigo(
id_art INTEGER NOT NULL,
tituto_art VARCHAR(128) NOT NULL,
palavras_chave VARCHAR(200),
autor_art INTEGER(11),  
evento_recebe INTEGER, 
PRIMARY KEY (id_art),
FOREIGN KEY(evento_recebe) REFERENCES eventoacad(id_evento),
FOREIGN KEY(autor_art) REFERENCES autor(cpf_autor)
);

CREATE TABLE autor(
cpf_autor INTEGER(11) NOT NULL,
nome_autor VARCHAR(152) NOT NULL,
email_autor VARCHAR(100),
titulo_acad_autor VARCHAR(100) NOT NULL
);