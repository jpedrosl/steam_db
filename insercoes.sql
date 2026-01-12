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
(5,'Bethesda Game Studios','Estados Unidos'),
(6,'Electronic Arts','Estados Unidos'),
(7,'Valve Corporation','Estados Unidos'),
(8,'CD Projekt Red','Polônia'),
(9,'Activision','Estados Unidos'),
(10,'Epic Games','Estados Unidos');


insert into categoria(id_categoria,nome_genero)
values(1,'Ação'),
(2,'Suspense'),
(3,'Ficção'),
(4,'Suspense'),
(5,'Terror'),
(6,'Esportes'),
(7,'Simulator'),
(8,'Animação'),
(9,'RPG'),
(10,'Estratégia');


insert into jogo(id_jogo,titulo,descricao,fk_desenvolvedora,fk_categoria)
values(1,'GTA 6','Viva a vida que você sempre quis aqui',3,1),
(2,'Valorant','jogo de tiro',2,1),
(3,'Super Mário Bros','Animação para crianças',1,8),
(4,'Clash Royale','Jogo de estratégia',4,8),
(5,'Red Dead Redemption 2','Jogo de Ação, na vibe faroeste',4,1),
(6,'The Wicher','RPG medieval',5,4),
(7,'Fifa','Jogo de futebol',2,6),
(8,'Five night at freddys','Jogo de Terror',1,5),
(9,'Minecraft','Jogo de construção e sobrevivência',3,7),
(10,'The Last of Us','Jogo de Ação e Aventura',5,3);




insert into conquista(id_conquista,nome_conquista,fk_jogo)
values(1,'Gol de Ouro',7),
(2,'Tiro Perfeito',2),
(3,'Ostentando grana',1),
(4,'Pulando nas nuvens',3),
(5,'A coroa  mais almejada',4),
(6,'Caçador de Recompensas',5),
(7,'Lobo solitário',6),
(8,'Sobrevivente',8),
(9,'Velocista',7),
(10,'Mestre dos Disfarces',2);


insert into preco (id_preco,valor,data_atualizacao,fk_jogo)
values(1,299.90,'2024-01-15 10:00:00',1),
(2,0.00,'2024-02-20 12:30:00',2),
(3,49.90,'2024-03-10 14:45:00',3),
(4,0.00,'2024-04-05 16:20:00',4),
(5,199.90,'2024-05-18 18:10:00',5),
(6,149.90,'2024-06-22 20:55:00',6),
(7,249.90,'2024-07-30 09:15:00',7),
(8,39.90,'2024-08-12 11:40:00',8),
(9,279.90,'2024-09-01 13:00:00',1),
(10,0.00,'2024-10-01 15:30:00',2);


insert into biblioteca(id_biblioteca,fk_usuario,fk_jogo,data_aquisicao,horas_jogadas,nota)
values(1,1,1,'2024-01-16 10:00:00',50,9.5),
(2,1,2,'2024-02-21 12:30:00',30,8.0),
(3,2,3,'2024-03-11 14:45:00',20,7.5),
(4,2,4,'2024-04-06 16:20:00',40,9.0),
(5,3,5,'2024-05-19 18:10:00',60,9.8),
(6,3,6,'2024-06-23 20:55:00',25,8.5),
(7,4,7,'2024-07-31 09:15:00',70,9.2),
(8,5,8,'2024-08-13 11:40:00',15,7.0),
(9,4,1,'2024-09-01 13:00:00',80,9.7),
(10,5,2,'2024-10-02 15:30:00',10,6.5);




insert into comentario_avaliacao(id_comentario,texto,nota_avaliacao,fk_usuario,fk_jogo)
values(1,'Jogo incrível, adorei cada momento!',9.5,1,1),
(2,'Divertido, mas poderia ter mais mapas.',8.0,1,2),
(3,'Ótimo para todas as idades.',7.5,2,3),
(4,'Estratégia é a chave para vencer!',9.0,2,4),
(5,'A história é envolvente e emocionante.',9.8,3,5),
(6,'Gráficos impressionantes e jogabilidade fluida.',8.5,3,6),
(7,'O melhor jogo de esportes que já joguei.',9.2,4,7),
(8,'Assustador e cheio de surpresas!',7.0,5,8),
(9,'Criatividade sem limites!',9.7,4,1),
(10,'Bom jogo, mas faltam atualizações.',6.5,5,2);



insert into amizade(id_amizade,fk_usuario,status)
values(1,1,'aceita'),
(2,1,'pendente'),
(3,2,'aceita'),
(4,3,'bloqueada'),
(5,4,'aceita'),
(6,5,'pendente'),
(7,2,'aceita'),
(8,3,'aceita'),
(9,4,'bloqueada'),
(10,5,'aceita');



insert into jogo_categoria(id_jogo_categoria,fk_jogo,fk_categoria)
values(1,1,1),
(2,2,1),
(3,3,8),
(4,4,10),
(5,5,1),
(6,6,9),
(7,7,6),
(8,8,5),
(9,9,7),
(10,10,3);



insert into pagamento(id_pagamento,fk_usuario,valor,data_pagamento,metodo_pagamento)
values(1,1,299.90,'2024-01-15 10:','cartão de crédito'),
(2,1,0.00,'2024-02-20 12:30:00','grátis'),
(3,2,49.90,'2024-03-10 14:45:00','boleto bancário'),
(4,2,0.00,'2024-04-05 16:20:00','grátis'),
(5,3,199.90,'2024-05-18 18:10:00','cartão de débito'),
(6,3,149.90,'2024-06-22 20:55:00','PayPal'),
(7,4,249.90,'2024-07-30 09:15:00','cartão de crédito'),
(8,5,39.90,'2024-08-12 11:40:00','boleto bancário'),
(9,4,279.90,'2024-09-01 13:00:00','cartão de débito'),
(10,5,0.00,'2024-10-01 15:30:00','grátis');