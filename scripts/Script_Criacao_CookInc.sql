DROP DATABASE IF EXISTS CookInc;

CREATE DATABASE CookInc;

USE CookInc;


#CRIAÇÃO DAS TABELAS

CREATE TABLE USUARIO (
    email VARCHAR(100) NOT NULL ,
    senha VARCHAR(30) NOT NULL,
    nome_completo VARCHAR(100) NOT NULL,
    telefone INT,
    id_usuario int  PRIMARY KEY,
    data_nascimento date,
    link_imagem varchar(100),
    FK_SEXO_id_sexo int,
    FK_ENDERECO_id_endereco int
);

CREATE TABLE RECEITA (
    imagem varchar(50) NOT NULL,
    modo_de_preparo VARCHAR(1000) NOT NULL,
    porcoes int NOT NULL,
    tempo_de_preparo VARCHAR(30) NOT NULL,
    votos_positivos INT NOT NULL,
    votos_negativos INT NOT NULL,
    id_rec INT PRIMARY KEY,
    video_tutorial VARCHAR(1000),
    nome varchar(50) NOT NULL,
    FK_USUARIO_id_usuario int ,
    FK_CATEGORIA_id_cat int
);

CREATE TABLE COMENTARIO (
    texto VARCHAR(1000)  NOT NULL,
    id_coment int PRIMARY KEY,
    FK_RECEITA_id_rec INT,
    FK_USUARIO_id_usuario int ,
    FK_ENVIA_RECEBE_id_en_re int,
    FK_DATA_id_data INT,
    FK_HORA_id_hora INT
);

CREATE TABLE CATEGORIA (
    id_cat int PRIMARY KEY,
    nome varchar(50) NOT NULL
);

CREATE TABLE SEXO (
    id_sexo int PRIMARY KEY,
    m_f char(1) NOT NULL
);

CREATE TABLE ENVIA_RECEBE (
    id_en_re int PRIMARY KEY,
    envia_recebe varchar(20) NOT NULL
);

CREATE TABLE COMENTARIO_SUB (
    FK_COMENTARIO_id_coment int,
    FK_DATA_id_data INT,
    FK_HORA_id_hora INT
);

CREATE TABLE ENDERECO (
    complemento varchar(50),
    numero varchar(50),
    id_endereco int PRIMARY KEY,
    FK_LOGADOURO_id_logadouro INT 
);

CREATE TABLE INGREDIENTE (
    id_ingrediente int PRIMARY KEY,
    nome varchar(100) NOT NULL,
    quantidade float NOT NULL
);

CREATE TABLE TAG (
    id_tag int PRIMARY KEY,
    nomeTag varchar(50)
);

CREATE TABLE DATA (
    id_data INT PRIMARY KEY,
    data date NOT NULL
);

CREATE TABLE HORA (
    id_hora INT PRIMARY KEY,
    hora TIME NOT NULL
);

CREATE TABLE FAVORITO (
    FK_RECEITA_id_rec INT,
    FK_USUARIO_id_usuario int 
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

CREATE TABLE CEP (
    id_cep INT  PRIMARY KEY,
    cep VARCHAR(30)
);

CREATE TABLE SEGUE (
    FK_USUARIO_id_usuario int ,
    FK_USUARIO_id_usuario_ int 
);

CREATE TABLE ID_COMENTARIO (
    FK_COMENTARIO_id_coment int
);

CREATE TABLE TEM (
    FK_INGREDIENTE_id_ingrediente int,
    FK_RECEITA_id_rec INT
);

CREATE TABLE POSSUI (
    FK_RECEITA_id_rec INT,
    FK_TAG_id_tag int
);

CREATE TABLE HA (
    FK_ESTADO_UF_id_estado INT,
    FK_MUNICIPIO_id_municipio INT 
);

CREATE TABLE PERTENCE (
    FK_CEP_id_cep INT ,
    FK_ENDERECO_id_endereco int
);
 


#ALTERS 

ALTER TABLE USUARIO ADD CONSTRAINT FK_USUARIO_1
    FOREIGN KEY (FK_SEXO_id_sexo)
    REFERENCES SEXO (id_sexo)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE USUARIO ADD CONSTRAINT FK_USUARIO_2
    FOREIGN KEY (FK_ENDERECO_id_endereco)
    REFERENCES ENDERECO (id_endereco)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE RECEITA ADD CONSTRAINT FK_RECEITA_1
    FOREIGN KEY (FK_USUARIO_id_usuario)
    REFERENCES USUARIO (id_usuario)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE RECEITA ADD CONSTRAINT FK_RECEITA_2
    FOREIGN KEY (FK_CATEGORIA_id_cat)
    REFERENCES CATEGORIA (id_cat)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE COMENTARIO ADD CONSTRAINT FK_COMENTARIO_1
    FOREIGN KEY (FK_RECEITA_id_rec)
    REFERENCES RECEITA (id_rec)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE COMENTARIO ADD CONSTRAINT FK_COMENTARIO_2
    FOREIGN KEY (FK_USUARIO_id_usuario)
    REFERENCES USUARIO (id_usuario)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE COMENTARIO ADD CONSTRAINT FK_COMENTARIO_3
    FOREIGN KEY (FK_ENVIA_RECEBE_id_en_re)
    REFERENCES ENVIA_RECEBE (id_en_re)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE COMENTARIO ADD CONSTRAINT FK_COMENTARIO_4
    FOREIGN KEY (FK_DATA_id_data)
    REFERENCES DATA (id_data)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE COMENTARIO ADD CONSTRAINT FK_COMENTARIO_5
    FOREIGN KEY (FK_HORA_id_hora)
    REFERENCES HORA (id_hora)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE COMENTARIO_SUB ADD CONSTRAINT FK_COMENTARIO_SUB_0
    FOREIGN KEY (FK_COMENTARIO_id_coment)
    REFERENCES COMENTARIO (id_coment)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE COMENTARIO_SUB ADD CONSTRAINT FK_COMENTARIO_SUB_1
    FOREIGN KEY (FK_DATA_id_data)
    REFERENCES DATA (id_data)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE COMENTARIO_SUB ADD CONSTRAINT FK_COMENTARIO_SUB_2
    FOREIGN KEY (FK_HORA_id_hora)
    REFERENCES HORA (id_hora)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_1
    FOREIGN KEY (FK_LOGADOURO_id_logadouro)
    REFERENCES LOGADOURO (id_logadouro)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE FAVORITO ADD CONSTRAINT FK_FAVORITO_0
    FOREIGN KEY (FK_RECEITA_id_rec)
    REFERENCES RECEITA (id_rec)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE FAVORITO ADD CONSTRAINT FK_FAVORITO_1
    FOREIGN KEY (FK_USUARIO_id_usuario)
    REFERENCES USUARIO (id_usuario)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE BAIRRO ADD CONSTRAINT FK_BAIRRO_1
    FOREIGN KEY (FK_MUNICIPIO_id_municipio)
    REFERENCES MUNICIPIO (id_municipio)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE LOGADOURO ADD CONSTRAINT FK_LOGADOURO_1
    FOREIGN KEY (FK_BAIRRO_id_bairro)
    REFERENCES BAIRRO (id_bairro)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE SEGUE ADD CONSTRAINT FK_SEGUE_0
    FOREIGN KEY (FK_USUARIO_id_usuario)
    REFERENCES USUARIO (id_usuario)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE SEGUE ADD CONSTRAINT FK_SEGUE_1
    FOREIGN KEY (FK_USUARIO_id_usuario_)
    REFERENCES USUARIO (id_usuario)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE ID_COMENTARIO ADD CONSTRAINT FK_ID_COMENTARIO_0
    FOREIGN KEY (FK_COMENTARIO_id_coment)
    REFERENCES COMENTARIO (id_coment)
    ON DELETE SET NULL ON UPDATE CASCADE;
 
ALTER TABLE TEM ADD CONSTRAINT FK_TEM_0
    FOREIGN KEY (FK_INGREDIENTE_id_ingrediente)
    REFERENCES INGREDIENTE (id_ingrediente)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE TEM ADD CONSTRAINT FK_TEM_1
    FOREIGN KEY (FK_RECEITA_id_rec)
    REFERENCES RECEITA (id_rec)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE POSSUI ADD CONSTRAINT FK_POSSUI_0
    FOREIGN KEY (FK_RECEITA_id_rec)
    REFERENCES RECEITA (id_rec)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE POSSUI ADD CONSTRAINT FK_POSSUI_1
    FOREIGN KEY (FK_TAG_id_tag)
    REFERENCES TAG (id_tag)
    ON DELETE SET NULL ON UPDATE CASCADE;
 
ALTER TABLE HA ADD CONSTRAINT FK_HA_0
    FOREIGN KEY (FK_ESTADO_UF_id_estado)
    REFERENCES ESTADO_UF (id_estado)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE HA ADD CONSTRAINT FK_HA_1
    FOREIGN KEY (FK_MUNICIPIO_id_municipio)
    REFERENCES MUNICIPIO (id_municipio)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE PERTENCE ADD CONSTRAINT FK_PERTENCE_0
    FOREIGN KEY (FK_CEP_id_cep)
    REFERENCES CEP (id_cep)
    ON DELETE SET NULL ON UPDATE CASCADE;
 
ALTER TABLE PERTENCE ADD CONSTRAINT FK_PERTENCE_1
    FOREIGN KEY (FK_ENDERECO_id_endereco)
    REFERENCES ENDERECO (id_endereco)
    ON DELETE SET NULL ON UPDATE CASCADE;
    
    
#----------------------------------------------------------------------------------------#

#INSERTS


insert into estado_uf(id_estado,uf) values
(0,'ES'),
(1,'RJ'),
(2,'SP'),
(3,'PR'),
(4,'MG'),
(5,'MT'),
(6,'MS'),
(7,'SC'),
(8,'RS'),
(9,'AC');

#-------------------------------------------------------

insert into municipio(id_municipio,nome) values
(0,'Vitória'),
(1,'Petrópolis'),
(2,'Catanduva'),
(3,'Cornélio Procópio'),
(4,'Belo Horizonte'),
(5,'Cuiabá'),
(6,'Três Lagoas'),
(7,'Blumenau'),
(8,'Pelotas'),
(9,null);

#-------------------------------------------------------

insert into MUNICIPIO_ESTADO(FK_ESTADO_UF_id_estado,FK_MUNICIPIO_id_municipio) values
(0,0),
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9);

#-------------------------------------------------------

insert into bairro(id_bairro,nome,FK_MUNICIPIO_id_municipio) values
(0,'Inhanguetá',0),
(1,'Copacabana',1),
(2,'Parque Glória',2),
(3,'Conjunto Vitória Régia',3),
(4,'Parque Leblon',4),
(5,'Goiabeiras',5),
(6,'Jardim Brasília',6),
(7,'Centro',7),
(8,'Laranjal',8),
(9,null,9);

#-------------------------------------------------------

insert into logadouro(id_logadouro,nome,FK_BAIRRO_id_bairro) values
(0,'Rua Mário Teixeira Nascimento',0),
(1,'Rua Siqueira Campos',1),
(2,'Rua Antonio Girol',2),
(3,'Rua Juscelino Kubitscheck Oliveira',3),
(4,'Rua Cônego Trindade',4),
(5,'Avenida Ipiranga',5),
(6,'Avenida Ranulpho Marques Leal',6),
(7,'Rua 15 de Novembro',7),
(8,'Rua Alegrete',8),
(9,null,9);

#-------------------------------------------------------

Insert into sexo (id_sexo, m_f) values 
(0,'F'),
(1,'M');

#-------------------------------------------------------

insert into endereco(id_endereco,complemento,numero,FK_LOGADOURO_id_logadouro) values 
(0,null,56,0),
(1,'Ap. 202',284,1),
(2,'casa',876,2),
(3,null,76,3),
(4,null,1395,4),
(5,'Apartamento 405',530,5),
(6,'Bl. 15, Ap. 504',293,6),
(7,'casa',552,7),
(8,null,69,8),
(9,null,null,9);

#-------------------------------------------------------

insert into data (id_data,data) values 
(0,'1980-08-22'),
(1,'1987-12-01'),
(2,'1989-02-22'),
(3,'1989-01-31'),
(4,'1990-09-12'),
(5,'2017-04-22'),
(6,'2017-04-22'),
(7,'2017-05-05'),
(8,'2017-09-29'),
(9,'2017-10-07'),
(10,'2017-06-27');

#-------------------------------------------------------

Insert into usuario(id_usuario,email, senha, nome_completo, telefone,link_imagem,FK_SEXO_id_sexo,FK_ENDERECO_id_endereco,FK_DATA_id_data) VALUES 
(0,'joana@gmail.com','banana25','Joana de Oliveira Santos',999290332,'imgur.com/joana',0,0,0),
(1,'maria@gmail.com','MP050699','Maria de Mello',998734561,'imgur.com/maria',0,1,1),
(2,'jose@gmail.com','Flamengo321','José Pereira Silva',993812549,'imgur.com/jose',1,2,2),
(3,'marcio@gmail.com','Saopaulo24','Marcio Gomes dos Santos',999372164,'imgur.com/marcio',1,3,3),
(4,'pedro@gmail.com','senha123','Pedro Batista dos Santos',999174920,'imgur.com/pedro',1,4,4),
(5,'bruno@gmail.com','eunaosei','Bruno de Assis',991030924,'imgur.com/bruno',1,5,0),
(6,'angelita@gmail.com','244466666','Angelita da Silva Pereira',992739645,'imgur.com/angelita',0,6,1),
(7,'ana_paula@gmail.com','434747742372Anap','Ana Paula Fernandes',992143756,'imgur.com/ana_paula',0,7,2),
(8,'uilson@gmail.com','UBS1965','Uilson Batista dos Santos',999963540,'imgur.com/uilson',1,8,3),
(9,'leticia@gmail.com','12345678','Letícia Soares Rodrigues',997495099,'imgur.com/leticia',0,9,4);

#-------------------------------------------------------

insert into categoria(id_cat,nome) values 
(0,'Refeições'),
(1,'Sobremesas'),
(2,'Massas'),
(3,'Lanches'),
(4,'Bebidas'),
(5,'Drinks'),
(6,'Petiscos'),
(7,'Fitness'),
(8,'Vegetariano'),
(9,'Vegano');

#-------------------------------------------------------

insert into tempo_de_preparo(id_tempo,tempo) values
(0,'40 minutos'),
(1,'45 minutos'),
(2,'30 segundos'),
(3,'1 hora'),
(4,'2 horas'),
(5,'10 minutos'),
(6,'1 minuto'),
(7,'15 minutos'),
(8,'50 minutos'),
(9,null);

#-------------------------------------------------------

insert into receita(id_rec,nome,imagem,video_tutorial,modo_de_preparo,porcoes,votos_positivos,votos_negativos,FK_USUARIO_id_usuario,FK_CATEGORIA_id_cat,FK_TEMPO_DE_PREPARO_id_tempo ) values 
(0,'papademilho','papademilho.jpeg','youtube.com/papademilho',' 1 – Retire o milho da espiga e bata no liquidificador;2 – Coe o milho batido em uma peneira;3 - Leve o suco do milho ao fogo médio e acrescente açúcar, o sal e o bicarbonato;4 – Mexa bem até engrossar, deixe por mais 5 minutos sem mexer;5 – Sirva em uma travessa, polvilhando em canela em pó;6 – Sirva geladinho. ',6, 27, 43,0,0,0),
(1,'arrozcarreteiro','arrozcarreteiro.jpeg','youtube.com/arrozcarreteiro',' 1 – Deixe a carne seca de molho de véspera, troque a água e cozinhe até ficar macia;2 – Desfie;3 – Frite em uma panela com azeite;4 – Quando a carne estiver dourada, coloque a cebola e o alho;5 – Junteo arroz e frite;6 – Acrescente água fervente e cozinhe em fogo baixo até o arroz ficar macio; 7 – Salpique o cheiro-verde e sirva em seguida;8 – Bom apetite. ',6 , 49, 130,1,1,1),
(2,'mousse de maracuja','moussedemaracuja.jpeg','youtube.com/moussedemaracuja',' 1 – Em um liquidificador bata o creme de leite, o leite condensado e o suco concentrado de maracujá:2 – Em uma tigela despeje a mistura e leve a geladeira por no mínimo 4 horas;3 – Sirva-se ',6, 302,43,2,2,2),
(3,'torresmo','torresmo.jpeg','youtube.com/torresmo',' 1 - Tempere os torresmos com o sal e deixe descansar por uns 15 minutos;2 - Coloque um pouco de óleo numa panela e quando estiver quente, coloque os cubos do torresmo;3 - Tampe a panela para não emporcalhar o fogão;4 - Com uma colher de pau vá mexendo de vez em quando para não grudar um torresmo no outro;5 - Eles vão soltar mais gordura ainda e quando estiverem opacos, com cara de que estão fritos, desligue o fogo, retire daquela gordura os torresmos e coloque-os na geladeira para esfriar;6 – Reserve a gordura;7 - Quando os mesmos estiverem frios (não gelados), esquente a gordura novamente e quando estiver frigindo, coloque de volta os torresmos e vá mexendo até eles pururucarem;8 – Retire após e coloquem em um recipiente com papel toalha. ',40, 190, 12,3,3,3),
(4,'lasanha de beringela','lasanhadeberingela.jpeg','youtube.com/lasanhadeberingela',' 1 – Corte as berinjelas em fatias finas, no sentido do comprimento;2 Em uma assadeira refrataria, coloque no fundo, as duas colheres de azeite e um pouco de molho de tomate;3 – Coloque então uma camda de berinjela;4 – Cubra com molho de tomate, salpique com azeitonas e coentro;5 – Em seguida, coloque uma camada de presunto;6 - Acrescente uma camada de berinjela, cubra com molho de tomate e por cima coloque uma camada de queijo mussarela;7 - Repita os passos 3, 4 e 5, para formar mais duas camadas;8 - Coloque por cima da última camada, queijo catupiry a gosto, e cubra a assadeira com papel alumínio;9 - Leve ao forno em temperatura de 180º C graus por cerca de 30 minutos, para cozinhar;10 - Após isso, retire o papel alumínio e deixe por mais 5 a 10 minutos para gratinar;11 – Sirva quente. ',8, 70, 41,4,4,4),
(5,'vitamina de banana','vitaminadebanana.jpeg','youtube.com/vitaminadebanana',' 1 – Em um liquidificador junte as bananas e o o leite;2 – Bata até as bananas ficarem picadas;3 – Despeje a água e o açúcar mascavo;4 – Bata a mistura até ficar homogênea;5 – Acrescente os cubos de gelo;6 – Volte a bater até que a mistura fique homogênea de novo;7 – Coloque em taças e sirva imediatamenteMassa',4, 35, 50,5,5,5),
(6,'bolo de abacaxi','bolodeabacaxi.jpeg','youtube.com/bolodeabacaxi',' 1 – Bata no liquidificador os ovos, açúcar, margarina e depois adicione a farinha aos poucos;2 – Por último o fermento, bata bem até ficar uma massa lisa sem bolinhas;3 – Na forma de bolo coloque o açúcar direto na forma e derreta até virar um caramelo;4 – Espere esfriar, coloque o abacaxi que cortou e acrescente toda a massa e coloque para assar;5 – No forno a 200 º asse por 50 minutos ',10,  200, 58,6,6,6),
(7,'pudim de leite condensado','pudimdeleitecondensado.jpeg','youtube.com/pudimdeleitecondensado',' Pudim: 1 – Primeiro, bata bem os ovos no liquidificador;2 – Acrescente o leite condensado e o leite e bata novamente. Calda: 1 – Derreta o açúcar até ficar moreno, acrescente a água e deixe engrossar;2 – Coloque em uma forma redonda e despeje a massa do pudim por cima;3 – Asse em forno médio por 45 minutos, com a Assadeira redonda dentro de uma maior com água;4 – Espete um garfo para ver se está bem assado;5 – Deixe esfriar e desenforme ',8 , 230, 76,7,7,7),
(8,'caipirinha','caipirinha.jpeg','youtube.com/caipirinha',' 1 – Corte as pontas do limão e em seguida corte-o ao meio;2 – Faça um corte em V e retire a parte central, pois ela faz a caipirinha adquirir um sabor amargo;3 – Corte o limão em pedaços menores;4 – Misture o limão e o açúcar em um copo;5 – Amasse a mistura suavemente com um pilão;6 – Complete com a cachaça. ',1,60,13,8,8,9),
(9,'biscoito de banana e aveia','biscootodebananaeaveia.jpeg','youtube.com/biscootodebananaeaveia',' 1 - Amasse a banana com um garfo e misture com a aveia, aqueça o forno em temperatura alta;2 - Coloque colheradas da massa em uma assadeira untada. Cada banana tem sua própria história, umas podem estar mais maduras, outras maiores, se achar que a massa está mole ainda, (quando caem a colherada se espalha demais) adicione um pouco mais de aveia;3 - Leve ao forno por 15-20 minutos ou até que esteja douradinho;4 – Retire da assadeira e deixe esfriar sobre uma grade;5 – Sirva em Seguida, após o resfriamento ou guarde em pote hermético por até 3 dias ',16, 70, 10,9,9,8);

#-------------------------------------------------------

insert into quantidade (id_quantidade,quantidade) values 
(0,'6 espigas'), 
(1,'1 pitada'),
(2,'1 litro'),
(3,'1 xícara'),
(4,'1 colher'),
(5,'1 Kg'),
(6,'2 xícaras de chá'),
(7,'2 dentes'),
(8,'8 colheres de sopa'),
(9,'1 copo');

#-------------------------------------------------------

insert into ingrediente (id_ingrediente, nome,FK_QUANTIDADE_id_quantidade) values 
(0,'milho verde médias',0),
(1,'bicabornato de sódio',1),
(2,'leite',2),
(3,'açúcar',3),
(4,'sal',4),
(5,'pó',5),
(6,'carne seca',6),
(7,'arroz',7),
(8,'alho picado',8),
(9,'azeite',9);

#-------------------------------------------------------

insert into hora (id_hora,hora) values 
(0,'13:45'),
(1,'16:55'),
(2,'08:23'),
(3,'17:30'),
(4,'10:12'),
(5,'00:30'),
(6,'14:19'),
(7,'09:27'),
(8,'19:47'),
(9,'11:31');

#-------------------------------------------------------

insert into tag (id_tag, nomeTag) values 
(0,'#milho'),
(1,'#arroz'),
(2,'#mousse'),
(3,'#torresmo'),
(4,'#lasanha'),
(5,'#vitamina'),
(6,'#bolo'),
(7,'#pudim'),
(8,'#caipirinha'),
(9,'#biscoito');

#-------------------------------------------------------

insert into cep(id_cep,cep) values
(0,'290230-35'),
(1,'389836-15'),
(2,'872548-02'),
(3,'748374-07'),
(4,'972309-17'),
(5,'875019-23'),
(6,'162533-80'),
(7,'243664-70'),
(8,'443520-09'),
(9,null);

#-------------------------------------------------------

insert into COMENTARIO(id_coment,texto,FK_RECEITA_id_rec,FK_USUARIO_id_usuario,FK_DATA_id_data,FK_HORA_id_hora) values 
(0,'Recomendo um pouquinho mais de açúcar na receita',0,0,5,0),
(1,'Muito bom!',1,1,6,1),
(2,'Pra quem acabou de arrancar os 4 sisos está ótimo e me salvando!',2,2,7,2),
(3,'Ficou super crocante, ameiii!!!',3,3,8,3),
(4,'Essa receita é uma delícia!Amo lasanha e encontrei um jeito de não engordar tanto comendo hehehe',4,4,9,4),
(5,'A receita ficou muito aguada',5,5,5,5),
(6,'Uwwwouuuwou',6,6,6,6),
(7,'Esse pudim é top! (8',7,7,7,7),
(8,'Essa receita salvou meu fds!',8,8,8,8),
(9,'Topíssimo',9,9,9,9);


#-------------------------------------------------------



insert into comentario_sub(FK_COMENTARIO_id_coment,FK_DATA_id_data,FK_HORA_id_hora) values
(5,5,5),
(6,6,6),
(7,7,7),
(8,8,8),
(9,9,9);

#-------------------------------------------------------

insert into FAVORITO(FK_RECEITA_id_rec,FK_USUARIO_id_usuario) values
(1,0),
(1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(1,6),
(1,7),
(1,8),
(1,9); 

#-------------------------------------------------------

insert into segue(FK_USUARIO_id_usuario,FK_USUARIO_id_usuario_) values
(1,0),
(1,2),
(1,3),
(1,4),
(2,1),
(3,7),
(7,8),
(8,0),
(9,1);

#-------------------------------------------------------

insert into ID_COMENTARIO(FK_COMENTARIO_id_coment) values
(0),
(1),
(2),
(3),
(4);

#-------------------------------------------------------

insert into RECEITA_INGREDIENTE(FK_INGREDIENTE_id_ingrediente,FK_RECEITA_id_rec) values
(0,0),
(1,1),
(2,5),
(3,3),
(4,9),
(5,2),
(6,6),
(7,7),
(8,8),
(9,4);

#-------------------------------------------------------

insert into RECEITA_TAG(FK_RECEITA_id_rec,FK_TAG_id_tag) values
(0,0),
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(5,6),
(5,7),
(7,8),
(9,9);

#-------------------------------------------------------

insert into ENDERECO_CEP(FK_CEP_id_cep,FK_ENDERECO_id_endereco) values
(0,0),
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9);

#-------------------------------------------------------

select * from categoria;
select * from comentario;
select * from comentario_sub;
select * from data;
select * from endereco;
select * from favorito;
select * from hora;
select * from id_comentario;
select * from ingrediente;
select * from receita;
select * from segue;
select * from sexo;
select * from tag;
select * from tem;
select * from usuario;