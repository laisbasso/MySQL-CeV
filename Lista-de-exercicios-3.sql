use cadastro;

create table g_assiste_c(
id int not null auto_increment,
data date not null,
id_gafanhoto int not null,
id_curso int not null,
primary key (id),
foreign key (id_gafanhoto) references gafanhotos(id),
foreign key (id_curso) references cursos(idcurso)
) default charset = utf8mb4;

insert into g_assiste_c values
(default, '2020-07-01', '1', '2'),
(default, '2020-05-12', '2', '3'),
(default, '2020-03-04', '2', '4'),
(default, '2020-07-16', '3', '1'),
(default, '2020-04-17', '1', '5');

select * from g_cursosassiste_c;

select g.nome, c.nome from gafanhotos g
join g_assiste_c a
on g.id = a.id_gafanhoto
join cursos c
on a.id_curso = c.idcurso
order by g.nome;

#Lista com os Exercícios:
#1) "Mostre todos os gafanhotos que assistem a uma aula e as datas em que eles assistiram elas";
select g.nome, a.data from gafanhotos g
join g_assiste_c a 
on a.id_gafanhoto = g.id
order by a.data;

#2) "Mostre todos os gafanhotos mulheres que assistem a um curso, exibindo também os respectivos cursos de cada uma";
select g.nome, c.nome from gafanhotos g
join g_assiste_c a
on g.id = a.id_gafanhoto
join cursos c
on a.id_curso = c.idcurso
where g.sexo = 'F'
order by g.nome;