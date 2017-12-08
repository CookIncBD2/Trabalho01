use cookinc;

#9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS 
select * from votos;
UPDATE votos SET FK_TIPO_VOTO_id=1	WHERE FK_RECEITA_id_rec=0 AND FK_USUARIO_id_usuario=0 AND FK_TIPO_VOTO_id=0;
select * from votos;

select * from tipo_contato;
UPDATE tipo_contato SET tipo='Telefone Celular' WHERE id_tipo=8;
select * from tipo_contato;

select nome from receita;
UPDATE receita SET nome='Arroz Carreteiro' WHERE id_rec=1;
select nome from receita;

select * from sub_comentario;
UPDATE sub_comentario SET texto='Comentario Removido!' WHERE id_sub_coment=9;
select * from sub_comentario;

select * from tag;
UPDATE tag SET nomeTag='#bolacha' WHERE id_tag=9;
select * from tag;

select id_rec,nome,FK_TEMPO_DE_PREPARO_id_tempo from receita;
UPDATE receita SET FK_TEMPO_DE_PREPARO_id_tempo=5 WHERE id_rec=0;
select id_rec,nome,FK_TEMPO_DE_PREPARO_id_tempo from receita;