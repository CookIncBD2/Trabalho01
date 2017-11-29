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

![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/Conceitual_CookInc.png?raw=true "Modelo Conceitual")


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
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/L%C3%B3gico_CookInc.png?raw=true "Modelo Lógico")

### 7	MODELO FÍSICO<br>
Modelo Físico: https://github.com/CookIncBD2/Trabalho01/blob/master/Modelo_Fisico_CookInc.sql
 
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
SCRIPT: https://github.com/CookIncBD2/Trabalho01/blob/master/9.1.sql <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.1-Bairro.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.1-categoria.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.1-cep.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.1-comentario.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.1-comentario_sub.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.1-data.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.1-endereco.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.1-endereco_cep.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.1-estado_uf.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.1-favorito.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.1-hora.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.1-id_comentario.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.1-ingrediente.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.1-municipio.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.1-municipio_estado.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.1-quantidade.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.1-receita.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.1-receita_ingrediente.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.1-segue.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.1-sexo.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.1-tag.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.1-tempo_de_preparo.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.1-usuario.PNG?raw=true) <br>
<br>
<br>
<br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE <br>
SCRIPT: https://github.com/CookIncBD2/Trabalho01/blob/master/9.2.sql <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.2-1.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.2-2.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.2-3.PNG?raw=true) <br>
<br>
<br>
<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS <br>
SCRIPT: https://github.com/CookIncBD2/Trabalho01/blob/master/9.3.sql <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.3-1.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.3-2.PNG?raw=true) <br>
<br>
<br>
<br>
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE <br>
SCRIPT: https://github.com/CookIncBD2/Trabalho01/blob/master/9.4.sql <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.4-1.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.4-2.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.4-3.PNG?raw=true) <br>
<br>
<br>
<br>
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS <br>
SCRIPT: https://github.com/CookIncBD2/Trabalho01/blob/master/9.5.sql <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.5-1.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.5-2.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.5-3.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.5-4.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.5-5.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.5-6.PNG?raw=true) <br>
<br>
<br>
<br>
#### 9.6	CONSULTAS COM JUNÇÃO <br>
SCRIPT: https://github.com/CookIncBD2/Trabalho01/blob/master/9.6.sql <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.6.png?raw=true) <br>
<br>
<br>
<br>
#### 9.7	CONSULTAS COM GROUP BY <br>
SCRIPT: https://github.com/CookIncBD2/Trabalho01/blob/master/9.7.sql <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.7-1.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.7-2.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.7-3.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.7-4.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.7-5.PNG?raw=true) <br>
<br>
<br>
<br>       
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN <br>
SCRIPT: https://github.com/CookIncBD2/Trabalho01/blob/master/9.8.sql <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.8-1.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.8-2.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.8-3.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.8-4.PNG?raw=true) <br>
<br>
<br>
<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW <br>
SCRIPT: https://github.com/CookIncBD2/Trabalho01/blob/master/9.9.sql <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.9-1.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.9-2.PNG?raw=true) <br>
<br>
<br>
<br>
#### 9.10	SUBCONSULTAS 
SCRIPT: https://github.com/CookIncBD2/Trabalho01/blob/master/9.10.sql <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.10-1.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.10-2.PNG?raw=true) <br>
![Alt text](https://github.com/CookIncBD2/Trabalho01/blob/master/9.10-3.PNG?raw=true) <br>
<br>
<br>
<br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

        Entrega até este ponto em (data a ser definida)
        
### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

#### Link para BrModelo:
http://sis4.com/brModelo/brModelo/download.html
