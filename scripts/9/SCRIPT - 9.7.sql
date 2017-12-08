use cookinc;

#9.7	CONSULTAS COM GROUP BY 
select FK_SEXO_id_sexo,count(*) as 'Quantidade de pessoas deste sexo' from usuario
group by FK_SEXO_id_sexo;

select porcoes,count(*) as qnt_receitas_com_mesma_qnt_porcoes from receita
group by porcoes;

select FK_COMENTARIO_id_coment,count(*) as 'Quantidade de sub comentários de um comentário' from sub_comentario
group by FK_COMENTARIO_id_coment;

select FK_USUARIO_id_usuario,count(*) as qnt_seguindo from segue
group by FK_USUARIO_id_usuario;

select FK_USUARIO_id_usuario_,count(*) as qnt_seguidores from segue
group by FK_USUARIO_id_usuario_;
