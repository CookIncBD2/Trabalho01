use cookinc;

#9.9	CONSULTAS COM SELF JOIN E VIEW 
select u1.id_usuario,u1.nome_completo as Seguidor, u2.id_usuario,u2.nome_completo as Seguido from usuario u1
inner join segue
on(FK_USUARIO_id_usuario=u1.id_usuario)
inner join usuario u2
on(FK_USUARIO_id_usuario_=u2.id_usuario);


drop view sexo_mais_cadastrado;
create view sexo_mais_cadastrado as
select tipo,count(*) as qnt_sexo from sexo
inner join usuario
on(FK_SEXO_id_sexo=id_sexo)
group by FK_SEXO_id_sexo
order by qnt_sexo desc;

select * from sexo_mais_cadastrado;



create view visualiza_votos as
select r.id_rec as 'id da receita',r.nome,tv.tipo as 'Tipo de voto recebido', count(tv.tipo) as 'Quantidade deste tipo' from receita r
inner join votos v 
on (v.FK_RECEITA_id_rec=r.id_rec) 
inner join tipo_voto tv
on (v.FK_TIPO_VOTO_id = tv.id)
group by r.id_rec;

select * from visualiza_votos;
