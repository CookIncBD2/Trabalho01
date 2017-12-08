DROP DATABASE IF EXISTS CookInc;

CREATE DATABASE CookInc;

USE CookInc;


#CRIAÇÃO DAS TABELAS


CREATE TABLE USUARIO (
    senha VARCHAR(30) NOT NULL,
    nome_completo VARCHAR(100) NOT NULL,
    id_usuario INT PRIMARY KEY,
    link_imagem VARCHAR(100),
    data_nasc DATE NOT NULL,
    FK_SEXO_id_sexo INT,
    FK_ENDERECO_id_endereco INT
);

CREATE TABLE RECEITA (
    imagem varchar(50) NOT NULL,
    modo_de_preparo VARCHAR(1000) NOT NULL,
    porcoes int NOT NULL,
    id_rec INT PRIMARY KEY,
    video_tutorial VARCHAR(1000),
    nome varchar(50) NOT NULL,
    FK_USUARIO_id_usuario INT,
    FK_CATEGORIA_id_cat INT,
    FK_TEMPO_DE_PREPARO_id_tempo INT
);

CREATE TABLE COMENTARIO (
    texto VARCHAR(1000)  NOT NULL,
    id_coment INT PRIMARY KEY,
    data_hora TIMESTAMP,
    FK_RECEITA_id_rec INT,
    FK_USUARIO_id_usuario INT
);

CREATE TABLE CATEGORIA (
    id_cat INT PRIMARY KEY,
    nome varchar(50) NOT NULL
);

CREATE TABLE SEXO (
    id_sexo INT PRIMARY KEY,
    tipo VARCHAR(9) NOT NULL
);

CREATE TABLE SUB_COMENTARIO (
    id_sub_coment INT PRIMARY KEY,
    texto VARCHAR(1000),
    FK_COMENTARIO_id_coment INT,
    FK_USUARIO_id_usuario INT
);

CREATE TABLE ENDERECO (
    complemento VARCHAR(50),
    numero VARCHAR(50),
    id_endereco INT PRIMARY KEY,
    cep INT,
    FK_LOGADOURO_id_logadouro INT 
);

CREATE TABLE INGREDIENTE (
    id_ingrediente INT PRIMARY KEY,
    nome varchar(100) NOT NULL,
    quantidade INT,
    FK_MEDIDA_id_medida INT
);

CREATE TABLE TAG (
    id_tag INT PRIMARY KEY,
    nomeTag VARCHAR(50)
);

CREATE TABLE ESTADO_UF (
    id_estado INT PRIMARY KEY,
    uf CHAR(2) NOT NULL
);

CREATE TABLE MUNICIPIO (
    id_municipio INT  PRIMARY KEY,
    nome VARCHAR(50)
);

CREATE TABLE BAIRRO (
    id_bairro INT  PRIMARY KEY,
    nome VARCHAR(50),
    FK_MUNICIPIO_id_municipio INT 
);

CREATE TABLE LOGADOURO (
    id_logadouro INT  PRIMARY KEY,
    nome VARCHAR(50),
    FK_BAIRRO_id_bairro INT 
);

CREATE TABLE MEDIDA (
    id_medida INT PRIMARY KEY,
    medida VARCHAR(30) NOT NULL
);

CREATE TABLE TEMPO_DE_PREPARO (
    id_tempo INT PRIMARY KEY,
    tempo VARCHAR(30)
);

CREATE TABLE TIPO_CONTATO (
    id_tipo INT PRIMARY KEY,
    tipo VARCHAR(100) NOT NULL
);

CREATE TABLE CONTATO (
	texto VARCHAR(500),
    FK_USUARIO_id_usuario INT,
    FK_TIPO_CONTATO_id_tipo INT
);

CREATE TABLE VOTOS (
    data_hora timestamp,
    FK_USUARIO_id_usuario INT,
    FK_RECEITA_id_rec INT,
    FK_TIPO_VOTO_id int
);

CREATE TABLE TIPO_VOTO (
    id int PRIMARY KEY,
    tipo varchar(20)
);

CREATE TABLE SEGUE (
    FK_USUARIO_id_usuario INT,
    FK_USUARIO_id_usuario_ INT
);

CREATE TABLE RECEITA_INGREDIENTE (
    FK_INGREDIENTE_id_ingrediente INT,
    FK_RECEITA_id_rec INT
);

CREATE TABLE RECEITA_TAG (
    FK_RECEITA_id_rec INT,
    FK_TAG_id_tag INT
);

CREATE TABLE MUNICIPIO_ESTADO (
    FK_MUNICIPIO_id_municipio INT ,
    FK_ESTADO_UF_id_estado INT
);

CREATE TABLE FAVORITO (
    FK_RECEITA_id_rec INT,
    FK_USUARIO_id_usuario INT
);
