use cookinc;

#9.6	CONSULTAS COM JUNÇÃO 
select * from usuario
left outer join contato ct
on(ct.FK_USUARIO_id_usuario=id_usuario)
left outer join tipo_contato tcont
on(ct.FK_TIPO_CONTATO_id_tipo=id_tipo)
left outer join segue se
on(se.FK_USUARIO_id_usuario=id_usuario)
inner join sexo
on(FK_SEXO_id_sexo=id_sexo)
inner join endereco ende
on(FK_ENDERECO_id_endereco=id_endereco)
inner join logadouro
on(FK_LOGADOURO_id_logadouro=id_logadouro)
inner join bairro
on(FK_BAIRRO_id_bairro=id_bairro)
inner join municipio mu
on(FK_MUNICIPIO_id_municipio=id_municipio)
inner join municipio_estado me
on(me.FK_MUNICIPIO_id_municipio=mu.id_municipio)
inner join estado_uf
on(me.FK_ESTADO_UF_id_estado=id_estado)
left outer join favorito f
on(f.FK_USUARIO_id_usuario=id_usuario)
inner join receita r
on(r.FK_USUARIO_id_usuario=id_usuario)
inner join categoria
on(FK_CATEGORIA_id_cat=id_cat)
inner join tempo_de_preparo
on(FK_TEMPO_DE_PREPARO_id_tempo=id_tempo)
left join  receita_ingrediente ri
on(ri.FK_RECEITA_id_rec=id_rec)
left join ingrediente ing
on(ri.FK_INGREDIENTE_id_ingrediente=ing.id_ingrediente)
left join medida 
on(ing.FK_MEDIDA_id_medida=id_medida)
left join receita_tag rt
on(rt.FK_RECEITA_id_rec=id_rec)
left join tag
on(rt.FK_TAG_id_tag=id_tag)
left outer join comentario c
on (c.FK_USUARIO_id_usuario=id_usuario)
left outer join sub_comentario sc
on(sc.FK_COMENTARIO_id_coment=c.id_coment)
inner join votos v 
on(v.FK_USUARIO_id_usuario=id_usuario)
left outer join tipo_voto tvoto
on(v.FK_TIPO_VOTO_id = tvoto.id)
left outer join favorito fav
on(fav.FK_USUARIO_id_usuario = id_usuario);






