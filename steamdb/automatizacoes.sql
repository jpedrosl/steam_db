
-- Atualização do saldo do usuário após a compra
create or replace trigger atualizar_saldo_do_usuario_apos_pagamento
after insert on pagamento
for each row 
execute function atualizar_saldo ();

create or replace  function atualizar_saldo ()
returns trigger as $$

begin 
        
        new.saldo_carteira = old.saldo_carteira - valor;


return new;
end;

$$ LANGUAGE plpgsql;

-- fim da função

inset into pagamento


--  Desbloquear conquista ao atingir determinadas horas jogadas
create or replace trigger desbloquear_conquista
after  update on biblioteca
for each row
execute function conquistar_desbloquear();


create or replace function conquistar_desbloquear()
returns trigger as $$

begin 
       

     if   (horas_jogadas >= 50) THEN

        insert into conquista (conquista_usuario)
        values('Parabés meu jogador');

    end if;
    return new;
    end;
    $$ LANGUAGE plpgsql;

-- fim da função


-- adiciona um jogo na biblioteca após a compra 
create or replace trigger trg_compra_biblioteca
after insert on compra
for each row
execute function adicionar_jogo_biblioteca();

create or replace function adicionar_jogo_biblioteca()
returns trigger as $$
begin
   insert into biblioteca (fk_usuario, fk_jogo)
   values (new.fk_usuario, new.fk_jogo);

   return new;
end;
$$ language plpgsql;




-- quando o usuario aceita um pedido de amizade, ele adiciona automaticamente na coluna de amigos
create or replace trigger mostrar_amigos
before update on amizade  
for each row 
execute function todos_os_amigos ();


create or replace function todos_os_amigos ()
returns trigger as $$
begin
        
      if
            (new.status = 'aceita') then
        
        update usuario
        set amigos = amigos + 1
        where id_usuario = fk_usuario ;
      end if;
      return new;
      end;
    $$ language plpgsql;