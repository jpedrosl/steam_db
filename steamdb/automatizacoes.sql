-- =========================================================
-- TRIGGER: Atualização do saldo do usuário após pagamento
-- =========================================================

-- Trigger que é acionada APÓS um pagamento ser inserido
create or replace trigger atualizar_saldo_do_usuario_apos_pagamento
after insert on pagamento
for each row 
execute function atualizar_saldo ();

-- Função responsável por atualizar o saldo do usuário
create or replace function atualizar_saldo ()
returns trigger as $$

begin 
        -- Desconta do saldo da carteira o valor do pagamento realizado
        update usuario
        set saldo_carteira = saldo_carteira - new.valor
        where id_usuario = new.fk_usuario;

        -- Retorna o registro inserido no pagamento
        return new;
end;

$$ LANGUAGE plpgsql;

-- Teste da trigger: inserção de um pagamento
insert into pagamento(id_pagamento, fk_usuario, valor, data_pagamento, metodo_pagamento)
values (12, 1, 70.00, '12-01-2026', 'cartão de crédito');



-- =========================================================
-- TRIGGER: Desbloquear conquista ao atingir horas jogadas
-- =========================================================

-- Trigger acionada APÓS atualização da tabela biblioteca
create or replace trigger desbloquear_conquista
after update on biblioteca
for each row
execute function conquistar_desbloquear();

-- Função que verifica se o usuário atingiu a quantidade mínima de horas
create or replace function conquistar_desbloquear()
returns trigger as $$

begin 
        -- Verifica se as horas jogadas atingiram ou ultrapassaram 50
        if (new.horas_jogadas >= 50) then

            -- Insere uma conquista para o usuário
            -- OBS: conceitualmente o ideal seria uma tabela usuario_conquista
            insert into conquista (conquista_usuario)
            values ('Parabéns meu jogador');

        end if;

        -- Retorna o novo registro da biblioteca
        return new;
end;

$$ LANGUAGE plpgsql;

-- Teste da trigger: atualização de horas jogadas
update biblioteca
set horas_jogadas = 60
where fk_usuario = 1;



-- =========================================================
-- TRIGGER: Adicionar jogo à biblioteca após a compra
-- =========================================================

-- Trigger acionada ANTES de inserir uma compra
create or replace trigger trg_compra_biblioteca
before insert on compra
for each row
execute function adicionar_jogo_biblioteca();

-- Função responsável por adicionar o jogo na biblioteca
create or replace function adicionar_jogo_biblioteca()
returns trigger as $$

begin
   -- Insere automaticamente o jogo comprado na biblioteca do usuário
   insert into biblioteca (fk_usuario, fk_jogo)
   values (new.fk_usuario, new.fk_jogo);

   -- Retorna o registro da compra
   return new;
end;

$$ language plpgsql;

-- Teste da trigger: inserção de uma compra
insert into compra(fk_usuario, fk_jogo, data_compra)
values (2, 3, '13-01-2026');



-- =========================================================
-- TRIGGER: Atualizar quantidade de amigos após aceitar amizade
-- =========================================================

-- Trigger acionada ANTES de atualizar o status da amizade
create or replace trigger mostrar_amigos
before update on amizade  
for each row 
execute function todos_os_amigos ();

-- Função que atualiza o número de amigos do usuário
create or replace function todos_os_amigos ()
returns trigger as $$

begin
      -- Verifica se o status da amizade foi alterado para 'aceita'
      if (new.status = 'aceita') then
        
        -- Incrementa o número de amigos do usuário
        update usuario
        set amigos = amigos + 1
        where id_usuario = new.fk_usuario;

      end if;

      -- Retorna o novo registro da amizade
      return new;
end;

$$ language plpgsql;

-- Teste da trigger: aceitação de amizade
update amizade
set status = 'aceita'
where id_amizade = 1;
