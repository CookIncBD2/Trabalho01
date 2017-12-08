# TRABALHO 01 - Cook Inc
Trabalho desenvolvido durante a disciplina de BD

# Sumário
  
### 1.COMPONENTES<br>
Isabella de Assis: ifoxpoetic@gmail.com <br>
Sergio Vago: sergio.vago@hotmail.com <br>
  
### 2.INTRODUÇÃO E MOTIVAÇAO<br>
&nbsp;&nbsp;&nbsp;&nbsp;Este trabalho está sendo desenvolvido na disciplina de Banco de Dados junto as disciplinas de Análise de Projeto e Sistemas (APS) e Linguagem de Programação do curso Técnico de informática do IFES - Campus Serra. <br>
&nbsp;&nbsp;&nbsp;&nbsp;    Nossa ideia surgiu a partir de nosso contexto social, onde a Isabella, integrante do grupo, sugeriu a criação de um site onde haveria a busca por receitas de modo simples e prático. A partir disso, começamos a desenvolver nossa ideia e pensamos em um diferencial: a busca de receitas por palavras-chave e tags. <br>
&nbsp;&nbsp;&nbsp;&nbsp;    A nossa motivação, além da sede por aprendizado, é a obtenção de nota para aprovação na disciplina. O site basea-se, basicamente, em um sistema de cadastro e envio de receitas, uma interação simples entre os usuários e o sistema de busca de receitas por palavras-chave. <br>

  
### 3.MINI-MUNDO<br>
&nbsp;&nbsp;&nbsp;&nbsp;A Cook Inc. é um site de receitas com um gigante banco de dados capaz de guardar uma infinidade de possíveis combinações de ingredientes e receitas para que o usuário não fique restrito às costumeiras "receitas da vovó". <br>
&nbsp;&nbsp;&nbsp;&nbsp;Seu potencial e grande diferencial começa na filtragem de receitas por palavras-chave através da ferramenta de pesquisas buscando as que melhor atendem à busca do usuário. O site também dispõe de um ranking semanal que é exibido na página principal, propondo assim, à quem não tem nenhuma procura específica, uma proposta de receita que está em alta. <br>
 

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
PDF:https://github.com/CookIncBD2/Trabalho01/blob/master/mockup/mockup_cook_inc_finalizado.pdf <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/mockup/mockup_exemplo_cook_inc.png?raw=true "MOCKUP")


#### 4.1 TABELA DE DADOS DO SISTEMA:
Tabela: https://github.com/CookIncBD2/Trabalho01/blob/master/CookInc(Tabela)_Isabella_e_Sergio.ods

4.2. a) O sistema fornecerá os seguintes relatórios e informações com releção ao usuário: email, senha, apelido, sexo, nome completo, telefone e UF; com relação a receitas: nome da receita, votos positivios e negativos, imagem da receita, ingrediente, modo de preparo, prorções, tempo de preparo, video tutorial, categoria, posição no ranking, comentario sobre a pessoa e o número de seguidores da mesma.

b)
1- Quais receitas o usuário enviou</br>
2- Quantidade de votos positivos em uma receita</br>
3- Quantidade de votos negativos em uma receita</br>
4- Nome do usuário que enviou a receita</br>
5- Nome do usuário que comentou uma receita </br>
6- Nome do usuário que comentou outro usuário</br>
7- A qual categoria cada receita pertence</br>
8- As regiões onde os usuários se localizam</br>
9- O sexo predominante entre os usuários</br>
10- Número de seguidores de cada usuário</br>


### 5.MODELO CONCEITUAL<br>

![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/Modelos/Conceitual_CookInc.png?raw=true "Modelo Conceitual")


#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Ramom Matieli e Jean Carlos]
    [Grupo02]: [João Pedro e Lucas Calazans]

#### 5.2 DECISÕES DE PROJETO
    Tabela USUARIO:
      Campo id_usuario: optamos por utilizar como campo determinante para identificação do usuário.
      Campo email: optamos por utilizar um campo simples, que sera utilizado para realizar login em nosso sistema. 
      Campo senha: optamos por utilizar um campo simples, que sera utilizado para realizar login em nosso sistema. 
      Campo nome_completo: optamos por utilziar um campo composto, que servira para coleta de dados.
      Campo telefone: optamos por utilziar um campo simples, que servira para coleta de dados.
      Campo link_imagem: optamos por utilziar um campo simples, que recebera o link de uma imagem.
    
    Tabela RECEITA:
      Campo id_rec: optamos por utilizar como campo determinante para identificação da receita.
      Campo nome: optamos por utilziar um campo composto, que armazenara o nome da receita.
      Campo imagem: optamos por utilziar um campo simples, que recebera o link de uma imagem.
      Campo video_tutorial: optamos por utilziar um campo simples, que recebera o link de um video para tutorial da receita.
      Campo porcoes:  optamos por utilziar um campo composto, que armazena as pocoes de uma receita. Exemplo: "Serve duas pessoas".
      Campo votos_positivos: optamos por utilziar um campo simples, para armazenar a quantidade de votos positivos que a receita recebeu.
      Campo votos_negativos: optamos por utilziar um campo simples, para armazenar a quantidade de votos negativos que a receita recebeu.
      Campo modo_de_preparo: optamos por utilziar um campo composto, para armazenar o modo de preparo da receita.
    
    Tabela COMENTARIO:
      Campo id_coment: optamos por utilizar um campo determinante para identificação do comentario.
      Campo texto: optamos por utilizar um campo composto, pois ele irá armazenar todo o texto digitado pelo usuário.
    
    Tabela CATEGORIA:
       Campo id_cat: optamos por utilizar como campo determinante para identificação da categoria.
       Campo nome: optamos por utilizar um campo simples, pois salvara o nome da categoria, composto apenas por uma palavra.
    
    Tabela SEXO:
      Campo id_sexo: optamos por utilizar como campo determinante para identificação na hora de realizar algum tipo de consulta, pois será apenas 0 e 1, indicando 'M' ou 'F'.
      Campo m_f: optamos por utilizar um campo simples, para correlação com seu respectivo ID.
       
    Tabela ENDERECO:
      id_endereco: optamos por utilizar como campo determinante para identificação do endereco.
      numero: optamos por utilizar um campo simples que armazena o numero da residencia.
      complemento:  optamos por utilizar um campo composto, pois o complemento vem acompanhado de varias palavras .

    Tabela INGREDIENTE:
      id_ingrediente: optamos por utilizar como campo determinante para identificação do ingrediente.
      nome: optamos por utilizar como campo composto, pois o nome pode ser composto.
      
    Tabela TAG
      id_tag: optamos por utilziar como campo determinante para a identificação de uma tag.
      nomeTag: optamos por utilziar como um campo simples, pois as tags so podem possuir 1 valor.
      
    Tabela DATA:
      id_data: optamos por utilziar como campo determinante para a identificação de uma data.
      data: optamos por utilizar um campo simples do tipo date para armazenar data.
      
    Tabela HORA
      id_hora: optamos por utilziar como campo determinante para a identificação de uma data.
      hora: optamos por utilizar um campo simples do tipo date para armazenar horas "especificas".
      
    Tabela ESTADO_UF:
       id_estado: optamos por utilziar como campo determinante para a identificação de um Estado.
       uf: optamos por utilizar um campo simples, pois os estados serao representados apenas pelos seus respectivos UF's.
    
    Tabela MUNICIPIO:
      id_municipio: optamos por utilziar como campo determinante para a identificação de um Municipio.
      nome: optamos por utilizar um campo composto, pois alguns municipios possuem nomes compostos.
      
    Tabela BAIRRO:
      id_bairro: optamos por utilziar como campo determinante para a identificação de um Bairro.
      nome: optamos por utilizar um campo composto, pois alguns bairros possuem nomes compostos.
    
    Tabela LOGADOURO:
      id_logadouro: optamos por utilziar como campo determinante para a identificação de um Logadouro.
      nome: optamos por utilizar um campo composto, pois logadouros, na maioria, possuem nomes compostos.
    
    Tabela CEP:
      id_cep: optamos por utilziar como campo determinante para a identificação de um CEP.
      cep: optamos por utilziar como campo simples, pois CEP's são formados por numeros.
    
    Tabela QUANTIDADE:
      id_quantidade: optamos por utilziar como campo determinante para a identificação de certa quantidade.
      quantidade: optamos por utilziar como campo composto, pois vem com sua respectiva medida.
    
    Tabela TEMPO_DE_PREPARO:
    id_tempo: optamos por utilziar como campo determinante para a identificação de determinado tempo.
    tempo: optamos por utilziar como campo composto, pois acompanhado de sua respectiva medida de tempo (hora,minutos,segundos,etc.).
    
    
    
    

#### 5.3 DESCRIÇÃO DOS DADOS 


    USUARIO: Tabela que armazena as informações relativas ao usuário.
    RECEITA: Tabela que armazena as informações relativas a receita.
    COMENTARIO: Tabela que armazena as informações relativas ao comentario que o usuário fez.
    CATEGORIA Tabela que armazena as informações relativas às categorias.
    SEXO: Tabela que armazena as informações relativas ao sexo do usuário.
    COMENTARIO_SUB: Tabela que armazena as informações relativas ao comentario que o usuário fez em outro comentário.
    ENDERECO: Tabela que armazena as informações relativas ao endereco do usuário.
    INGREDIENTE: Tablela que armazena os ingredientes que fazer parte de uma receita ou não.
    TAG: Tabela que armazena a tag de uma receita.
    DATA: Tabela que armazena datas.
    HORA: Tabela que armazena horários
    FAVORITO: Tabela que armazena as receitas que um usuario favoritou.
    ESTADO_UF: Tabela que armazena UF's de Estado.
    MUNICIPIO: Tabela que armazena nomes de Municípios.
    BAIRRO: Tabela que armazena nomes de Bairros.
    LOGADOURO: Tabela que armazena Logadouros.
    CEP: Tabela que armazena CEP's
    QUANTIDADE: Tabela que armazena a quantidade de ingredientes de uma receita.
    TEMPO_DE_PREPARO: Tabela que armazena tempo de preparo de uma ou mais receitas.
    SEGUE: Tabela que armazena quais usuário outro usuário segue.
    ID_COMENTARIO: Tabela que armazena o id de um comentário.
    RECEITA_INGREDIENTE: Tabela que armazena qual receita está relacionada a qual ingrediente.
    RECEITA_TAG: Tabela que armazena qual taag está relacionada a qual receita.
    MUNICIPIO_ESTADO: Tabela que armazena qual município está relacionado a qual estado.
    ENDRECO_CEP: Tabela que armazena qual endreço está relacionado ao CEP.

    id_usuario: campo que armazena o id do usuário.
    email: campo que armazena o email do usuário.
    senha: campo que armazena a senha do usuário.
    nome_completo: campo que armazena o nome completo do usuário.
    telefone: campo que armazena o telefone do usuário.
    link_imagem: campo que armazena o link da imagem que será utilizada pelo usuário.
    
    id_rec: campo que armazena o ID da receita.
    nome: campo que armazena o nome da receita.
    imagem: campo que armazena o link da imagem da receita.
    video_tutorial: campo que armazena o link do video tutorial da receita.
    porcoes: campo que armazena a quantidade de porções da receita.
    votos_positivos: campo que armazena a quantidade de votos positivos que a receita recebeu.
    votos_negativos: campo que armazena a quantidade de votos negativos que a receita recebeu.
    modo_de_preparo: campo que armazena o modo de preparo da receita.
    
    id_coment: campo que armazena o id dos comentário.
    texto: campo que armazena o texto do comentário.
    
    id_cat: campo que armazena o id da categoria.
    nome: campo que armazena o nome da categoria.
    
    id_sexo: campo que armazena o número de id que cada sexo representa.
    m/f: campo que armazena o sexo do usuario.
    
    id_endereco: campo que armazena o id dos endrecos.
    numero: campo que armazena o umero da residencia
    complemento: campo que armazena o omplemento da residencia
    
    id_ingrediente: campo que armazena o id do ingrediente
    nome: campo que armazena o nome do ingrediente

    id_tag: campo que armazena o id da tag
    nomeTag: campo que armazena o texto da tag
    
    id_data: campo que armazena o id da data
    data: campo que armazena a data
    
    id_hora: campo que armazena o id da hora
    hora: campo que armazena a hora
    
    id_estado: campo que armazena o id do estado
    uf: campo que armazena o UF dos estados
    
    id_municipio: campo que armazena o id do municipio
    nome: campo que armazena o nome do municipio
    
    id_bairro: campo que armazeno o id do bairro
    nome: campo que armazena o nome do bairro
    
    id_logadouro: campo que armazena o id do logadouro
    nome: campo que armazena o nome do logadouro
    
    id_cep: campo que armazena o id do cep
    cep: campo que armazena o nome o cep
    
    id_quantidade: campo que armazena o id da quantidade
    quantidade: campo que armazena a qunatidade de um ingrediente
    
    id_tempo: campo que armazena o id do tempo
    tempo: campo que armazena o tempo de preparo de uma receita
    
    
### 6	MODELO LÓGICO<br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/Modelos/Logico_CookInc.png?raw=true "Modelo Lógico")

### 7	MODELO FÍSICO<br>
Modelo Físico: https://github.com/CookIncBD2/Trabalho01/blob/master/scripts/Script_Criacao_CookInc.sql
 
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>

#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados: Google Maps, Google Imagens, Site de Receita http://www.tudogostoso.com.br/ e Contatos Pessoais
        b) obtenção de códigos reutilizados - Não aplicado ao nosso projeto
        c) fontes de estudo para desenvolvimento do projeto - Aulas de BD, moodle de BD (arquivos em PDF) e https://pt.stackoverflow.com/
        
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS

https://github.com/CookIncBD2/Trabalho01/blob/master/scripts/Script_Criacao_CookInc.sql
<br>
<br>
### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS <br>
SCRIPT: https://github.com/CookIncBD2/Trabalho01/blob/master/scripts/9/SCRIPT%20-%209.1.sql <br><br>

select * from bairro; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/1.PNG?raw=true) <br><br>

select * from categoria; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/2.PNG?raw=true) <br><br>

select * from comentario; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/3.PNG?raw=true) <br><br>

select * from contato; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/4.PNG?raw=true) <br><br>

select * from endereco; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/5.PNG?raw=true) <br><br>

select * from estado_uf; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/6.PNG?raw=true) <br><br>

select * from favorito; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/7.PNG?raw=true) <br><br>

select * from ingrediente; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/8.PNG?raw=true) <br><br>

select * from logadouro; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/9.PNG?raw=true) <br><br>

select * from medida; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/10.PNG?raw=true) <br><br>

select * from municipio; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/11.PNG?raw=true) <br><br>

select * from municipio_estado; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/12.PNG?raw=true) <br><br>

select * from receita; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/13.png?raw=true) <br><br>

select * from receita_ingrediente; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/14.PNG?raw=true) <br><br>

select * from receita_tag; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/15.PNG?raw=true) <br><br>
  
select * from segue; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/16.PNG?raw=true) <br><br>
 
select * from sexo; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/17.PNG?raw=true) <br><br>
 
select * from sub_comentario; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/18.PNG?raw=true) <br><br>
 
select * from tag; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/19.PNG?raw=true) <br><br>
 
select * from tempo_de_preparo; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/20.PNG?raw=true) <br><br>
 
select * from tipo_contato; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/21.PNG?raw=true) <br><br>
 
select * from tipo_voto;<br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/22.PNG?raw=true) <br><br>
 
select * from usuario; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/23.PNG?raw=true) <br><br>
  
select * from votos; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.1/24.PNG?raw=true) <br><br>
<br>
<br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE <br>
SCRIPT:https://github.com/CookIncBD2/Trabalho01/blob/master/scripts/9/SCRIPT%20-%209.2.sql <br><br>

select id_rec,nome from receita
where porcoes > 10; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.2/1.PNG?raw=true) <br><br>

select id_usuario,nome_completo from usuario
where FK_SEXO_id_sexo=0; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.2/2.PNG?raw=true) <br><br>

select id_usuario,nome_completo from usuario
where FK_ENDERECO_id_endereco=5; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.2/3.PNG ?raw=true) <br><br>

<br>
<br>
<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS <br>
SCRIPT:https://github.com/CookIncBD2/Trabalho01/blob/master/scripts/9/SCRIPT%20-%209.3.sql <br>

select sum(porcoes) as 'Quantidade de porções que podem ser feitas com as receitas atuais' from receita; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.3/1.PNG?raw=true) <br><br>

select id_usuario,nome_completo as 'Nome(s) da(s) pessoa(s) buscada(s)' from usuario <br>
where id_usuario=0 OR FK_ENDERECO_id_endereco=8; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.3/2.PNG?raw=true) <br><br>
<br>
<br>
<br>
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE <br>
SCRIPT: https://github.com/CookIncBD2/Trabalho01/blob/master/scripts/9/SCRIPT%20-%209.4.sql <br>

select id_usuario,nome_completo from usuario 
where nome_completo like'a%'; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.4/1.PNG?raw=true) <br><br>

select * from tag 
where nomeTag like '#m%'; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.4/2.PNG?raw=true) <br><br>

select id_rec,nome from receita
where nome like '%z%'; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.4/3.PNG?raw=true) <br><br>

<br>
<br>
<br>
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS <br>
SCRIPT: https://github.com/CookIncBD2/Trabalho01/blob/master/scripts/9/SCRIPT%20-%209.5.sql <br>

select * from votos; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.5/1.PNG?raw=true) <br>
UPDATE votos SET FK_TIPO_VOTO_id=1	WHERE FK_RECEITA_id_rec=0 AND FK_USUARIO_id_usuario=0 AND FK_TIPO_VOTO_id=0; <br>
select * from votos; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.5/1.1.PNG?raw=true) <br><br>

select * from tipo_contato;
UPDATE tipo_contato SET tipo='Telefone Celular' WHERE id_tipo=8;
select * from tipo_contato;

select * from tipo_contato; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.5/2.PNG?raw=true) <br>
UPDATE tipo_contato SET tipo='Telefone Celular' WHERE id_tipo=8;<br>
select * from tipo_contato;<br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.5/2.1.PNG?raw=true) <br><br>

select nome from receita; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.5/3.PNG?raw=true) <br>
UPDATE receita SET nome='Arroz Carreteiro' WHERE id_rec=1; <br>
select nome from receita; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.5/3.1.PNG?raw=true) <br><br>




select * from sub_comentario; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.5/4.PNG?raw=true) <br>
UPDATE sub_comentario SET texto='Comentario Removido!' WHERE id_sub_coment=9; <br>
select * from sub_comentario; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.5/4.1.PNG?raw=true) <br><br>




select * from tag; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.5/5.PNG?raw=true) <br><br>
UPDATE tag SET nomeTag='#bolacha' WHERE id_tag=9; <br>
select * from tag;<br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.5/5.1.PNG?raw=true) <br><br>



select id_rec,nome,FK_TEMPO_DE_PREPARO_id_tempo from receita; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.5/6.PNG?raw=true) <br><br>
UPDATE receita SET FK_TEMPO_DE_PREPARO_id_tempo=5 WHERE id_rec=0; <br>
select id_rec,nome,FK_TEMPO_DE_PREPARO_id_tempo from receita; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.5/6.1.PNG?raw=true) <br><br>


<br>
<br>
<br>
#### 9.6	CONSULTAS COM JUNÇÃO <br>
SCRIPT: https://github.com/CookIncBD2/Trabalho01/blob/master/scripts/9/SCRIPT%20-%209.6.sql <br>

select * from usuario
left outer join contato ct on(ct.FK_USUARIO_id_usuario=id_usuario) <br>
left outer join tipo_contato tcont on(ct.FK_TIPO_CONTATO_id_tipo=id_tipo) <br>
left outer join segue se on(se.FK_USUARIO_id_usuario=id_usuario) <br>
inner join sexo on(FK_SEXO_id_sexo=id_sexo) <br>
inner join endereco ende on(FK_ENDERECO_id_endereco=id_endereco) <br>
inner join logadouro on(FK_LOGADOURO_id_logadouro=id_logadouro) <br>
inner join bairro on(FK_BAIRRO_id_bairro=id_bairro) <br>
inner join municipio mu on(FK_MUNICIPIO_id_municipio=id_municipio) <br>
inner join municipio_estado me on(me.FK_MUNICIPIO_id_municipio=mu.id_municipio) <br>
inner join estado_uf on(me.FK_ESTADO_UF_id_estado=id_estado) <br>
left outer join favorito f on(f.FK_USUARIO_id_usuario=id_usuario) <br>
inner join receita r on(r.FK_USUARIO_id_usuario=id_usuario) <br>
inner join categoria on(FK_CATEGORIA_id_cat=id_cat) <br>
inner join tempo_de_preparo on(FK_TEMPO_DE_PREPARO_id_tempo=id_tempo) <br>
left join  receita_ingrediente ri on(ri.FK_RECEITA_id_rec=id_rec) <br>
left join ingrediente ing on(ri.FK_INGREDIENTE_id_ingrediente=ing.id_ingrediente) <br>
left join medida  on(ing.FK_MEDIDA_id_medida=id_medida) <br>
left join receita_tag rt on(rt.FK_RECEITA_id_rec=id_rec) <br>
left join tag on(rt.FK_TAG_id_tag=id_tag) <br>
left outer join comentario c on (c.FK_USUARIO_id_usuario=id_usuario) <br>
left outer join sub_comentario sc on(sc.FK_COMENTARIO_id_coment=c.id_coment) <br>
inner join votos v  on(v.FK_USUARIO_id_usuario=id_usuario) <br>
left outer join tipo_voto tvoto on(v.FK_TIPO_VOTO_id = tvoto.id) <br>
left outer join favorito fav on(fav.FK_USUARIO_id_usuario = id_usuario); <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.6/1.PNG?raw=true) <br><br>

<br>
<br>
<br>
#### 9.7	CONSULTAS COM GROUP BY <br>
SCRIPT: https://github.com/CookIncBD2/Trabalho01/blob/master/scripts/9/SCRIPT%20-%209.7.sql <br>

select FK_SEXO_id_sexo,count(*) as 'Quantidade de pessoas deste sexo' from usuario <br>
group by FK_SEXO_id_sexo; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.7/1.PNG?raw=true) <br><br>

select porcoes,count(*) as qnt_receitas_com_mesma_qnt_porcoes from receita <br>
group by porcoes; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.7/2.PNG?raw=true) <br><br>

select FK_COMENTARIO_id_coment,count(*) as 'Quantidade de sub comentários de um comentário' from sub_comentario <br>
group by FK_COMENTARIO_id_coment; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.7/3.PNG?raw=true) <br><br>

select FK_USUARIO_id_usuario,count(*) as qnt_seguindo from segue <br>
group by FK_USUARIO_id_usuario; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.7/4.PNG?raw=true) <br><br>

select FK_USUARIO_id_usuario_,count(*) as qnt_seguidores from segue <br>
group by FK_USUARIO_id_usuario_; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.7/5.PNG?raw=true) <br><br>

<br>
<br>
<br>       
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN <br>
SCRIPT: https://github.com/CookIncBD2/Trabalho01/blob/master/scripts/9/SCRIPT%20-%209.8.sql <br>

select u.nome_completo,s.tipo from usuario u <br>
left outer join sexo s <br>
on(FK_SEXO_id_sexo=id_sexo); <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.8/1.PNG?raw=true) <br><br>

select u.nome_completo,e.complemento from usuario u  <br>
left outer join endereco e <br>
on(FK_ENDERECO_id_endereco=id_endereco); <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.8/2.PNG?raw=true) <br><br>

select c.id_coment, c.texto, sub.id_sub_coment, sub.texto as 'Sub-comentario' from comentario c <br>
right outer join sub_comentario sub <br>
on(FK_COMENTARIO_id_coment=id_coment); <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.8/3.PNG?raw=true) <br><br>

select c.id_coment, c.texto, sub.id_sub_coment, sub.texto as 'Sub-comentario' from comentario c <br>
left outer join sub_comentario sub <br>
on(FK_COMENTARIO_id_coment=id_coment);<br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.8/4.PNG?raw=true) <br><br>

<br>
<br>
<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW <br>
SCRIPT: https://github.com/CookIncBD2/Trabalho01/blob/master/scripts/9/SCRIPT%20-%209.9.sql <br>
create view seguidores as <br>
select u1.id_usuario,u1.nome_completo as Seguidor, u2.id_usuario,u2.nome_completo as Seguido from usuario u1 <br>
inner join segue <br>
on(FK_USUARIO_id_usuario=u1.id_usuario) <br>
inner join usuario u2 <br>
on(FK_USUARIO_id_usuario_=u2.id_usuario); <br> 

select * from seguidores; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.9/1.PNG?raw=true) <br><br>


create view sexo_mais_cadastrado as <br>
select tipo,count(*) as qnt_sexo from sexo <br>
inner join usuario <br>
on(FK_SEXO_id_sexo=id_sexo) <br>
group by FK_SEXO_id_sexo <br>
order by qnt_sexo desc; <br>

select * from sexo_mais_cadastrado; <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.9/2.PNG?raw=true) <br><br>

create view visualiza_votos as<br>
select r.id_rec as 'id da receita',r.nome,tv.tipo as 'Tipo de voto recebido', count(tv.tipo) as 'Quantidade deste tipo' from receita r <br>
inner join votos v  <br>
on (v.FK_RECEITA_id_rec=r.id_rec) <br>
inner join tipo_voto tv <br>
on (v.FK_TIPO_VOTO_id = tv.id) <br>
group by r.id_rec; <br>

select * from visualiza_votos;
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.9/3.PNG?raw=true) <br><br>
<br>
<br>
<br>
#### 9.10	SUBCONSULTAS 
SCRIPT: https://github.com/CookIncBD2/Trabalho01/blob/master/scripts/9/SCRIPT%20-%209.10.sql <br>
select nome_completo from usuario  <br> 
where FK_SEXO_id_sexo not in  <br> 
(select FK_SEXO_id_sexo from usuario <br> 
where FK_SEXO_id_sexo<>0); <br>


![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.10/1.PNG?raw=true) <br><br>

select * from usuario  <br> 
where nome_completo in <br> 
(select nome_completo from usuario <br> 
where nome_completo like 'a%'); <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.10/2.PNG?raw=true) <br><br>


select id_rec,nome from receita <br> 
where porcoes in  <br> 
(select porcoes from receita <br> 
where porcoes >10); <br> 
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/imagens/9.10/3.PNG?raw=true) <br><br>

<br>
<br>
<br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

SLIDES: https://github.com/CookIncBD2/Trabalho01/blob/master/Slide_CookInc.odp 
<br>
<br>    
### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

#### Link para BrModelo:
http://sis4.com/brModelo/brModelo/download.html
