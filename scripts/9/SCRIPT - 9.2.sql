use cookinc;

#9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE 
select id_rec,nome from receita
where porcoes > 10;

select id_usuario,nome_completo from usuario
where FK_SEXO_id_sexo=0;

select id_usuario,nome_completo from usuario
where FK_ENDERECO_id_endereco=5;
