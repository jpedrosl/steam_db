-- SQLBook: Code
--criar entidades, usuario, jogo, categoria, biblioteca, conquista, amizades, preco, avaliacao, comentarios, desenvolvedora.

create table usuario (
   id_usuario serial primary key,
   nome varchar(100)not null,
   email varchar(100) not null unique,
   senha varchar(100) not null,
   saldo_carteira decimal(10,2) default 0.00,
   amigos int
);

create table desenvolvedora(
   id_desenvolvedora serial primary key,
   nome varchar(100) not null,
   pais varchar(100)
   
);
create table categoria(
   id_categoria serial primary key,
   nome_genero varchar(100) not null
);

create table jogo(
    id_jogo serial primary key,
    titulo varchar(100) not null,
    descricao text,
    fk_desenvolvedora int references desenvolvedora(id_desenvolvedora),
    fk_categoria int references categoria(id_categoria)
)

create table conquista(
   id_conquista serial primary key,
   nome_conquista varchar(100) not null,
   fk_jogo int references jogo(id_jogo),
   conquista_usuario int
);

create table preco(
   id_preco serial primary key,
   valor decimal(10,2) not null,
   data_atualizacao timestamp default current_timestamp,
   fk_jogo int references jogo(id_jogo)
);

create table biblioteca(
    id_biblioteca serial primary key,
    fk_usuario int references usuario(id_usuario),
    fk_jogo int references jogo(id_jogo),
    data_aquisicao timestamp default current_timestamp,
    horas_jogadas int default 0,
    nota decimal(2,1)
)

create table comentario_avaliacao(
    id_comentario serial primary key,
    texto text,
    nota_avaliacao decimal(2,1),
    fk_usuario int references usuario(id_usuario),
    fk_jogo int references jogo(id_jogo)
)

create table amizade(
    id_amizade serial primary key,
    fk_usuario int references usuario(id_usuario),
    pedido varchar(50),
    status varchar(40)
)

create table jogo_categoria(
    id_jogo_categoria serial primary key,
    fk_jogo int references jogo(id_jogo),
    fk_categoria int references categoria(id_categoria)
);

create table pagamento(
    id_pagamento serial primary key,
    fk_usuario int references usuario(id_usuario),
    valor decimal(10,2) not null,
    data_pagamento timestamp default current_timestamp,
    metodo_pagamento varchar(50) not null
);

create table compra(
   id_compra serial primary key,
   fk_usuario int references usuario(id_usuario),
   fk_jogo int references jogo(id_jogo),
   data_compra timestamp default current_timestamp
);





























































































