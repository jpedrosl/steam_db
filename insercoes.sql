insert into usuario(id_usuario,nome,email,senha,saldo_carteira)
values(1,'Felipe Silva','felipe@gmail.com','felipe123',100.90),
(2,'Julio Pereira','juliopereira@gmail.com','julio123',76.89),
(3,'Nicolas Silva','nicolas@gmail.com','nicolas123',270.50),
(4,'João Pedro','joao@gmail.com','joao123',200.10),
(5,'Rayssa Ferraz','rayssa@gmailcom','raysa123',170.40);


insert into desenvolvedora(id_desenvolvedora,nome,pais)
values(1,'Nintendo','Japão'),
(2,'Ubisoft','França'),
(3,'Rockstar Games','Estados Unidos'),
(4,'Supercell','Finlândia'),
(5,'Bethesda Game Studios','Estados Unidos');


insert into categoria(id_categoria,nome_genero)
values(1,'Ação'),
(2,'Suspense'),
(3,'Ficção'),
(4,'Suspense'),
(5,'Terror'),
(6,'Esportes'),
(7,'Simulator'),
(8,'Animação');


insert into jogo(id_jogo,titulo,descricao,fk_desenvolvedora,fk_categoria)
values(1,'GTA 6','Viva a vida que você sempre quis aqui',3,1),
(2,'Valorant','jogo de tiro',2,1),
(3,'Super Mário Bros','Animação para crianças',1,8),
(4,'Clash Royale','Jogo de estratégia',4,8),
(5,'Red Dead Redemption 2','Jogo de Ação, na vibe faroeste',4,1),
(6,'The Wicher','RPG medieval',5,4),
(7,'Fifa','Jogo de futebol',2,6),
(8,'Five night at freddys','Jogo de Terror',1,5);




insert into conquista(id_conquista,nome_conquista,fk_jogo)
values(1,'Gol de Ouro',7),
(2,'Tiro Perfeito',2),
(3,'Ostentando grana',1),