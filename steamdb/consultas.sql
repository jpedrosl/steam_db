--lista de jogos de um usuario

select usuario.nome, jogo.titulo, biblioteca.data_aquisicao,biblioteca.horas_jogadas
from biblioteca
join usuario on biblioteca.fk_usuario = usuario.id_usuario
join jogo on biblioteca.fk_jogo = jogo.id_jogo
where usuario.id_usuario = 1;

--comentario de um jogo especifico
select usuario.nome, jogo.titulo, comentario_avaliacao.texto, comentario_avaliacao.nota_avaliacao
from comentario_avaliacao
join usuario on comentario_avaliacao.fk_usuario = usuario.id_usuario
join jogo on comentario_avaliacao.fk_jogo = jogo.id_jogo
where jogo.id_jogo = 2;

--total gasto por cada usuario(com sum e group by)
select usuario.nome, sum(pagamento.valor) as total_gasto
from pagamento
join usuario on pagamento.fk_usuario = usuario.id_usuario
group by usuario.nome;

--media de notas por jogo
select jogo.titulo, avg(comentario_avaliacao.nota_avaliacao) as media_notas
from comentario_avaliacao
join jogo on comentario_avaliacao.fk_jogo = jogo.id_jogo
group by jogo.titulo;

--ramking de popularidade dos jogos
select jogo.titulo, count(biblioteca.id_biblioteca)
from biblioteca
join jogo on biblioteca.fk_jogo = jogo.id_jogo
group by jogo.titulo
order by count(biblioteca.id_biblioteca) desc;

--jogos por categoria
select jogo.titulo, categoria.nome_genero
from jogo_categoria
join jogo on jogo_categoria.fk_jogo = jogo.id_jogo
join categoria on jogo_categoria.fk_categoria = categoria.id_categoria
where categoria.nome_genero = 'Ação';

--usuarios que compraram jogos de uma categoria especifico
select usuario.nome, jogo.titulo, categoria.nome_genero
from biblioteca
join usuario on biblioteca.fk_usuario = usuario.id_usuario
join jogo on biblioteca.fk_jogo = jogo.id_jogo
join jogo_categoria on  jogo.id_jogo = jogo_categoria.fk_jogo
join categoria on jogo_categoria.fk_categoria = categoria.id_categoria
where categoria.nome_genero = 'Ação';

--jogos abaixo de 10 reais
select jogo.titulo, preco.valor
from preco
join jogo on preco.fk_jogo = jogo.id_jogo
where preco.valor < 10.00;




--lista de quantos usuarios possuem cada jogo
select jogo.titulo, count(biblioteca.fk_usuario) as total_usuarios
from biblioteca
join jogo on biblioteca.fk_jogo = jogo.id_jogo
group by jogo.titulo