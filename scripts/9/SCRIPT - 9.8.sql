use cookinc;

#9.8	CONSULTAS COM LEFT E RIGHT JOIN (
select u.nome_completo,s.tipo from usuario u
left outer join sexo s
on(FK_SEXO_id_sexo=id_sexo);

select u.nome_completo,e.complemento from usuario u 
left outer join endereco e
on(FK_ENDERECO_id_endereco=id_endereco);

select c.id_coment, c.texto, sub.id_sub_coment, sub.texto as 'Sub-comentario' from comentario c
right outer join sub_comentario sub
on(FK_COMENTARIO_id_coment=id_coment); 


select c.id_coment, c.texto, sub.id_sub_coment, sub.texto as 'Sub-comentario' from comentario c
left outer join sub_comentario sub
on(FK_COMENTARIO_id_coment=id_coment); 
