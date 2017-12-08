use cookinc;

#9.10	SUBCONSULTAS
select nome_completo from usuario 
where FK_SEXO_id_sexo not in 
(select FK_SEXO_id_sexo from usuario 
where FK_SEXO_id_sexo<>0);

select * from usuario 
where nome_completo in
(select nome_completo from usuario
where nome_completo like 'a%');

select id_rec,nome from receita
where porcoes in 
(select porcoes from receita
where porcoes >10);
