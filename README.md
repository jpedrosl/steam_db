# 🎮 Projeto Banco de Dados – Plataforma de Jogos Digitais

Este repositório contém um **projeto de banco de dados relacional** desenvolvido em SQL, com o objetivo de modelar o funcionamento de uma **plataforma de jogos digitais** (inspirada em serviços como Steam, Epic Games, etc.). O projeto abrange desde o cadastro de usuários e jogos até avaliações, amizades, biblioteca de jogos e controle de preços.

O foco principal é **modelagem de dados**, **normalização**, **relacionamentos entre entidades** e **consultas SQL**.

---

## 📌 Funcionalidades do Projeto

* Cadastro de usuários com carteira virtual
* Registro de jogos e desenvolvedoras
* Classificação de jogos por categorias (gêneros)
* Biblioteca de jogos por usuário
* Sistema de amizades entre usuários
* Avaliações e comentários de jogos
* Controle de preços
* Conquistas associadas aos jogos
* Consultas SQL para extração de informações relevantes

---

## 🗂️ Estrutura do Banco de Dados

O banco de dados é composto pelas seguintes entidades principais:

* **Usuário** – dados do jogador e saldo da carteira
* **Desenvolvedora** – estúdios responsáveis pelos jogos
* **Jogo** – informações gerais dos jogos
* **Categoria** – gêneros dos jogos
* **Biblioteca** – jogos adquiridos por cada usuário
* **Preço** – valores associados aos jogos
* **Avaliação** – notas dadas pelos usuários
* **Comentários** – feedback textual dos jogadores
* **Conquistas** – objetivos desbloqueáveis nos jogos
* **Amizades** – relacionamento entre usuários

Os relacionamentos foram definidos utilizando **chaves primárias e estrangeiras**, respeitando a integridade referencial.

---

## 📁 Organização dos Arquivos

```bash
📦 projeto-banco-jogos
 ┣ 📜 base.sql          # Criação das tabelas e estrutura do banco
 ┣ 📜 insercoes.sql     # Inserção de dados de exemplo
 ┣ 📜 consultas.sql     # Consultas SQL para análise de dados
 ┣ 📜 automatizacoes.sql# Regras, gatilhos ou procedimentos (se aplicável)
 ┗ 📜 README.md         # Documentação do projeto
```

---

## 🛠️ Tecnologias Utilizadas

* **SQL** (PostgreSQL / MySQL – compatível com SGBDs relacionais)
* **Modelagem Relacional**
* **Git & GitHub** para versionamento

---

## ▶️ Como Executar o Projeto

1. Clone este repositório:

   ```bash
   git clone https://github.com/seu-usuario/seu-repositorio.git
   ```

2. Abra seu SGBD de preferência (ex: PostgreSQL, MySQL, DBeaver, pgAdmin).

3. Execute os arquivos na seguinte ordem:

   * `base.sql`
   * `insercoes.sql`
   * `consultas.sql`
   * `automatizacoes.sql` (se aplicável)

---

## 📊 Exemplos de Consultas

* Listar jogos por categoria
* Exibir biblioteca de um usuário
* Calcular média de avaliações de um jogo
* Listar amigos de um usuário
* Identificar jogos mais bem avaliados

---

## 🎯 Objetivo Acadêmico

Este projeto foi desenvolvido com fins **educacionais**, visando praticar:

* Criação de tabelas e relacionamentos
* Uso de chaves primárias e estrangeiras
* Escrita de consultas SQL
* Organização e documentação de projetos no GitHub

---

## 👤 Autor

**Nicolas da Silva Floriano**
Estudante de Banco de Dados / Desenvolvimento de Sistemas

---

## 📄 Licença

Este projeto é de uso educacional. Sinta-se à vontade para estudar, modificar e adaptar o código.

---

⭐ Se este projeto te ajudou, considere dar um *star* no repositório!
