use cookinc;

#9.4 CONSULTAS QUE USAM OPERADORES LIKE 
select id_usuario,nome_completo from usuario 
where nome_completo like'a%';

select * from tag 
where nomeTag like '#m%';

select id_rec,nome from receita
where nome like '%z%';
