use cookinc;

#9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS 
select sum(porcoes) as 'Quantidade de porções que podem ser feitas com as receitas atuais' from receita;

select id_usuario,nome_completo as 'Nome(s) da(s) pessoa(s) buscada(s)' from usuario
where id_usuario=0 OR FK_ENDERECO_id_endereco=8;
