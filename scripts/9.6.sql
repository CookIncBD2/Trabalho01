use cookinc;

#9.6	CONSULTAS COM JUNÇÃO 
select * from usuario
left outer join segue se
on(se.FK_USUARIO_id_usuario=id_usuario)
inner join sexo
on(FK_SEXO_id_sexo=id_sexo)
inner join endereco ende
on(FK_ENDERECO_id_endereco=id_endereco)
inner join endereco_cep ec
on(ec.FK_ENDERECO_id_endereco=ende.id_endereco)
inner join cep 
on(ec.FK_CEP_id_cep=id_cep)
left outer join data d1 #data de nascimento
on(usuario.FK_DATA_id_data=d1.id_data)
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
left join quantidade
on(ing.FK_QUANTIDADE_id_quantidade=id_quantidade)
left join receita_tag rt
on(rt.FK_RECEITA_id_rec=id_rec)
left join tag
on(rt.FK_TAG_id_tag=id_tag)
left outer join comentario c
on (c.FK_USUARIO_id_usuario=id_usuario)
left outer join id_comentario id
on(id.FK_COMENTARIO_id_coment=c.id_coment)
left outer join hora h1 #hora comentario
on(c.FK_HORA_id_hora=h1.id_hora)
left outer join data d2 #data do comentario
on(c.FK_DATA_id_data=d2.id_data)
left outer join comentario_sub cs
on(cs.FK_COMENTARIO_id_coment=c.id_coment)
left outer join data d3 #data subcomentario
on(cs.FK_DATA_id_data=d3.id_data)
left outer join hora h2 #hora subcomentario
on(cs.FK_HORA_id_hora=h2.id_hora)



