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
 
ALTER TABLE RECEITA ADD CONSTRAINT FK_RECEITA_3
    FOREIGN KEY (FK_TEMPO_DE_PREPARO_id_tempo)
    REFERENCES TEMPO_DE_PREPARO (id_tempo)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE COMENTARIO ADD CONSTRAINT FK_COMENTARIO_1
    FOREIGN KEY (FK_RECEITA_id_rec)
    REFERENCES RECEITA (id_rec)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE COMENTARIO ADD CONSTRAINT FK_COMENTARIO_2
    FOREIGN KEY (FK_USUARIO_id_usuario)
    REFERENCES USUARIO (id_usuario)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE SUB_COMENTARIO ADD CONSTRAINT FK_SUB_COMENTARIO_1
    FOREIGN KEY (FK_COMENTARIO_id_coment)
    REFERENCES COMENTARIO (id_coment)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE SUB_COMENTARIO ADD CONSTRAINT FK_SUB_COMENTARIO_2
    FOREIGN KEY (FK_USUARIO_id_usuario)
    REFERENCES USUARIO (id_usuario)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_1
    FOREIGN KEY (FK_LOGADOURO_id_logadouro)
    REFERENCES LOGADOURO (id_logadouro)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE INGREDIENTE ADD CONSTRAINT FK_INGREDIENTE_1
    FOREIGN KEY (FK_MEDIDA_id_medida)
    REFERENCES MEDIDA (id_medida)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE BAIRRO ADD CONSTRAINT FK_BAIRRO_1
    FOREIGN KEY (FK_MUNICIPIO_id_municipio)
    REFERENCES MUNICIPIO (id_municipio)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE LOGADOURO ADD CONSTRAINT FK_LOGADOURO_1
    FOREIGN KEY (FK_BAIRRO_id_bairro)
    REFERENCES BAIRRO (id_bairro)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE CONTATO ADD CONSTRAINT FK_CONTATO_0
    FOREIGN KEY (FK_USUARIO_id_usuario)
    REFERENCES USUARIO (id_usuario)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE CONTATO ADD CONSTRAINT FK_CONTATO_1
    FOREIGN KEY (FK_TIPO_CONTATO_id_tipo)
    REFERENCES TIPO_CONTATO (id_tipo)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE VOTOS ADD CONSTRAINT FK_VOTOS_0
    FOREIGN KEY (FK_USUARIO_id_usuario)
    REFERENCES USUARIO (id_usuario)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE VOTOS ADD CONSTRAINT FK_VOTOS_1
    FOREIGN KEY (FK_RECEITA_id_rec)
    REFERENCES RECEITA (id_rec)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE VOTOS ADD CONSTRAINT FK_VOTOS_2
    FOREIGN KEY (FK_TIPO_VOTO_id)
    REFERENCES TIPO_VOTO (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE SEGUE ADD CONSTRAINT FK_SEGUE_0
    FOREIGN KEY (FK_USUARIO_id_usuario)
    REFERENCES USUARIO (id_usuario)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE SEGUE ADD CONSTRAINT FK_SEGUE_1
    FOREIGN KEY (FK_USUARIO_id_usuario_)
    REFERENCES USUARIO (id_usuario)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE RECEITA_INGREDIENTE ADD CONSTRAINT FK_RECEITA_INGREDIENTE_0
    FOREIGN KEY (FK_INGREDIENTE_id_ingrediente)
    REFERENCES INGREDIENTE (id_ingrediente)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE RECEITA_INGREDIENTE ADD CONSTRAINT FK_RECEITA_INGREDIENTE_1
    FOREIGN KEY (FK_RECEITA_id_rec)
    REFERENCES RECEITA (id_rec)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE RECEITA_TAG ADD CONSTRAINT FK_RECEITA_TAG_0
    FOREIGN KEY (FK_RECEITA_id_rec)
    REFERENCES RECEITA (id_rec)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE RECEITA_TAG ADD CONSTRAINT FK_RECEITA_TAG_1
    FOREIGN KEY (FK_TAG_id_tag)
    REFERENCES TAG (id_tag)
    ON DELETE SET NULL ON UPDATE CASCADE;
 
ALTER TABLE MUNICIPIO_ESTADO ADD CONSTRAINT FK_MUNICIPIO_ESTADO_0
    FOREIGN KEY (FK_MUNICIPIO_id_municipio)
    REFERENCES MUNICIPIO (id_municipio)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE MUNICIPIO_ESTADO ADD CONSTRAINT FK_MUNICIPIO_ESTADO_1
    FOREIGN KEY (FK_ESTADO_UF_id_estado)
    REFERENCES ESTADO_UF (id_estado)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE FAVORITO ADD CONSTRAINT FK_FAVORITO_0
    FOREIGN KEY (FK_RECEITA_id_rec)
    REFERENCES RECEITA (id_rec)
    ON DELETE SET NULL ON UPDATE CASCADE;
 
ALTER TABLE FAVORITO ADD CONSTRAINT FK_FAVORITO_1
    FOREIGN KEY (FK_USUARIO_id_usuario)
    REFERENCES USUARIO (id_usuario)
    ON DELETE SET NULL ON UPDATE CASCADE;
    
#----------------------------------------------------------------------------------------#


#INSERTS

insert into tipo_voto values 
(0,'negativo'),
(1,'postivo');

#-------------------------------------------------------

insert into tipo_contato values 
(0,'Hotmail'),
(1,'Facebook'),
(2,'Instagram'),
(3,'LinkedIn'),
(4,'Tumblr'),
(5,'Twitter'),
(6,'Google +'),
(7,'Gmail'),
(8,'Numero Celular'),
(9,'Telefone Residencial');

#-------------------------------------------------------

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
(9,'vazio');

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
(9,'vazio',9);

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
(9,'vazio',9);

#-------------------------------------------------------

Insert into sexo (id_sexo, tipo) values 
(0,'Feminino'),
(1,'Masculino'),
(2,'Outros');

#-------------------------------------------------------

insert into endereco(id_endereco,complemento,numero,cep,FK_LOGADOURO_id_logadouro) values 
(0,'vazio',56,29023035,0),
(1,'Ap. 202',284,38983615,1),
(2,'casa',876,87254802,2),
(3,'vazio',76,748374-07,3),
(4,'vazio',1395,972309-17,4),
(5,'Apartamento 405',530,875019-23,5),
(6,'Bl. 15, Ap. 504',293,162533-80,6),
(7,'casa',552,243664-70,7),
(8,'vazio',69,443520-09,8),
(9,'vazio',0,0,9);

#-------------------------------------------------------

Insert into usuario(id_usuario, senha, nome_completo,link_imagem,data_nasc,FK_SEXO_id_sexo,FK_ENDERECO_id_endereco) VALUES 
(0,'banana25','Joana de Oliveira Santos','imgur.com/joana','1990-01-01',0,0),
(1,'MP050699','Maria de Mello','imgur.com/maria','1990-01-02',0,1),
(2,'Flamengo321','José Pereira Silva','imgur.com/jose','1990-01-03',1,2),
(3,'Saopaulo24','Marcio Gomes dos Santos','imgur.com/marcio','1990-01-04',1,3),
(4,'senha123','Pedro Batista dos Santos','imgur.com/pedro','1990-01-05',1,4),
(5,'eunaosei','Bruno de Assis','imgur.com/bruno','1990-01-06',1,5),
(6,'244466666','Angelita da Silva Pereira','imgur.com/angelita','1990-01-07',0,6),
(7,'434747742372Anap','Ana Paula Fernandes','imgur.com/ana_paula','1990-01-08',0,7),
(8,'UBS1965','Uilson Batista dos Santos','imgur.com/uilson','1990-01-09',1,8),
(9,'12345678','Letícia Soares Rodrigues','imgur.com/leticia','1990-01-10',0,9);

#-------------------------------------------------------

insert into contato values 
('joana@gmail.com',0,0),
(999290332,0,8),
('maria@gmail.com',1,0),
(998734561,1,8),
('jose@gmail.com',2,0),
(993812549,2,8),
('marcio@gmail.com',3,0),
(999372164,3,8),
('pedro@gmail.com',4,0),
(999174920,4,8);


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
(9,'indeterminado');

#-------------------------------------------------------

insert into receita(id_rec,nome,imagem,video_tutorial,modo_de_preparo,porcoes,FK_USUARIO_id_usuario,FK_CATEGORIA_id_cat,FK_TEMPO_DE_PREPARO_id_tempo ) values 
(0,'papademilho','papademilho.jpeg','youtube.com/papademilho',' 1 – Retire o milho da espiga e bata no liquidificador;2 – Coe o milho batido em uma peneira;3 - Leve o suco do milho ao fogo médio e acrescente açúcar, o sal e o bicarbonato;4 – Mexa bem até engrossar, deixe por mais 5 minutos sem mexer;5 – Sirva em uma travessa, polvilhando em canela em pó;6 – Sirva geladinho. ',6,0,0,0),
(1,'arrozcarreteiro','arrozcarreteiro.jpeg','youtube.com/arrozcarreteiro',' 1 – Deixe a carne seca de molho de véspera, troque a água e cozinhe até ficar macia;2 – Desfie;3 – Frite em uma panela com azeite;4 – Quando a carne estiver dourada, coloque a cebola e o alho;5 – Junteo arroz e frite;6 – Acrescente água fervente e cozinhe em fogo baixo até o arroz ficar macio; 7 – Salpique o cheiro-verde e sirva em seguida;8 – Bom apetite. ',6,1,1,1),
(2,'mousse de maracuja','moussedemaracuja.jpeg','youtube.com/moussedemaracuja',' 1 – Em um liquidificador bata o creme de leite, o leite condensado e o suco concentrado de maracujá:2 – Em uma tigela despeje a mistura e leve a geladeira por no mínimo 4 horas;3 – Sirva-se ',6,2,2,2),
(3,'torresmo','torresmo.jpeg','youtube.com/torresmo',' 1 - Tempere os torresmos com o sal e deixe descansar por uns 15 minutos;2 - Coloque um pouco de óleo numa panela e quando estiver quente, coloque os cubos do torresmo;3 - Tampe a panela para não emporcalhar o fogão;4 - Com uma colher de pau vá mexendo de vez em quando para não grudar um torresmo no outro;5 - Eles vão soltar mais gordura ainda e quando estiverem opacos, com cara de que estão fritos, desligue o fogo, retire daquela gordura os torresmos e coloque-os na geladeira para esfriar;6 – Reserve a gordura;7 - Quando os mesmos estiverem frios (não gelados), esquente a gordura novamente e quando estiver frigindo, coloque de volta os torresmos e vá mexendo até eles pururucarem;8 – Retire após e coloquem em um recipiente com papel toalha. ',40,3,3,3),
(4,'lasanha de beringela','lasanhadeberingela.jpeg','youtube.com/lasanhadeberingela',' 1 – Corte as berinjelas em fatias finas, no sentido do comprimento;2 Em uma assadeira refrataria, coloque no fundo, as duas colheres de azeite e um pouco de molho de tomate;3 – Coloque então uma camda de berinjela;4 – Cubra com molho de tomate, salpique com azeitonas e coentro;5 – Em seguida, coloque uma camada de presunto;6 - Acrescente uma camada de berinjela, cubra com molho de tomate e por cima coloque uma camada de queijo mussarela;7 - Repita os passos 3, 4 e 5, para formar mais duas camadas;8 - Coloque por cima da última camada, queijo catupiry a gosto, e cubra a assadeira com papel alumínio;9 - Leve ao forno em temperatura de 180º C graus por cerca de 30 minutos, para cozinhar;10 - Após isso, retire o papel alumínio e deixe por mais 5 a 10 minutos para gratinar;11 – Sirva quente. ',8,4,4,4),
(5,'vitamina de banana','vitaminadebanana.jpeg','youtube.com/vitaminadebanana',' 1 – Em um liquidificador junte as bananas e o o leite;2 – Bata até as bananas ficarem picadas;3 – Despeje a água e o açúcar mascavo;4 – Bata a mistura até ficar homogênea;5 – Acrescente os cubos de gelo;6 – Volte a bater até que a mistura fique homogênea de novo;7 – Coloque em taças e sirva imediatamenteMassa',4,5,5,5),
(6,'bolo de abacaxi','bolodeabacaxi.jpeg','youtube.com/bolodeabacaxi',' 1 – Bata no liquidificador os ovos, açúcar, margarina e depois adicione a farinha aos poucos;2 – Por último o fermento, bata bem até ficar uma massa lisa sem bolinhas;3 – Na forma de bolo coloque o açúcar direto na forma e derreta até virar um caramelo;4 – Espere esfriar, coloque o abacaxi que cortou e acrescente toda a massa e coloque para assar;5 – No forno a 200 º asse por 50 minutos ',10,6,6,6),
(7,'pudim de leite condensado','pudimdeleitecondensado.jpeg','youtube.com/pudimdeleitecondensado',' Pudim: 1 – Primeiro, bata bem os ovos no liquidificador;2 – Acrescente o leite condensado e o leite e bata novamente. Calda: 1 – Derreta o açúcar até ficar moreno, acrescente a água e deixe engrossar;2 – Coloque em uma forma redonda e despeje a massa do pudim por cima;3 – Asse em forno médio por 45 minutos, com a Assadeira redonda dentro de uma maior com água;4 – Espete um garfo para ver se está bem assado;5 – Deixe esfriar e desenforme ',8,7,7,7),
(8,'caipirinha','caipirinha.jpeg','youtube.com/caipirinha',' 1 – Corte as pontas do limão e em seguida corte-o ao meio;2 – Faça um corte em V e retire a parte central, pois ela faz a caipirinha adquirir um sabor amargo;3 – Corte o limão em pedaços menores;4 – Misture o limão e o açúcar em um copo;5 – Amasse a mistura suavemente com um pilão;6 – Complete com a cachaça. ',1,8,8,9),
(9,'biscoito de banana e aveia','biscootodebananaeaveia.jpeg','youtube.com/biscootodebananaeaveia',' 1 - Amasse a banana com um garfo e misture com a aveia, aqueça o forno em temperatura alta;2 - Coloque colheradas da massa em uma assadeira untada. Cada banana tem sua própria história, umas podem estar mais maduras, outras maiores, se achar que a massa está mole ainda, (quando caem a colherada se espalha demais) adicione um pouco mais de aveia;3 - Leve ao forno por 15-20 minutos ou até que esteja douradinho;4 – Retire da assadeira e deixe esfriar sobre uma grade;5 – Sirva em Seguida, após o resfriamento ou guarde em pote hermético por até 3 dias ',16,9,9,8);

#-------------------------------------------------------

insert into votos(FK_USUARIO_id_usuario, FK_RECEITA_id_rec, FK_TIPO_VOTO_id) values 
(0,0,0),
(0,1,1),
(0,2,1),
(0,3,0),
(0,4,0),
(0,5,0),
(0,6,0),
(0,7,1),
(0,8,1),
(0,9,1);

#-------------------------------------------------------

insert into medida values 
(0, 'espiga'),
(1, 'pitada'),
(2, 'litro'),
(3, 'xícara'),
(4, 'colher'),
(5, 'copo'),
(6, 'Kg'),
(7, 'xícara de chá'),
(8, 'dentes'),
(9, 'colheres de sopa');


#-------------------------------------------------------


insert into ingrediente values 
(0,'milho verde médias',6,0),
(1,'bicabornato de sódio',1,1),
(2,'leite',1,2),
(3,'açúcar',1,3),
(4,'sal',1,4),
(5,'pó',1,5),
(6,'carne seca',1,6),
(7,'arroz',2,7),
(8,'alho picado',2,8),
(9,'azeite',8,9);


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



#-------------------------------------------------------

insert into COMENTARIO(id_coment,texto,FK_RECEITA_id_rec,FK_USUARIO_id_usuario) values 
(0,'Recomendo um pouquinho mais de açúcar na receita',0,0),
(1,'Muito bom!',1,1),
(2,'Pra quem acabou de arrancar os 4 sisos está ótimo e me salvando!',2,2),
(3,'Ficou super crocante, ameiii!!!',3,3),
(4,'Essa receita é uma delícia! Amo lasanha e encontrei um jeito de não engordar tanto comendo hehehe',4,4),
(5,'A receita ficou muito aguada',5,5),
(6,'Uwwwouuuwou',6,6),
(7,'Esse pudim é top! (8',7,7),
(8,'Essa receita salvou meu fds!',8,8),
(9,'Topíssimo',9,9);


#-------------------------------------------------------

insert into sub_comentario values
(0,'Concordo!',0,0),
(1,'Discordo!',0,1),
(2,'Verdade!',1,2),
(3,'Mentira!',1,3),
(4,'Realmente!!!',2,4),
(5,'Também amei miga!',3,5),
(6,'Porém a minha não ficou tão crocante',3,5),
(7,'A minha também :(',4,6),
(8,'Topzeira',9,1),
(9,'TOP haha',9,8);


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




