# PostgreSQL + pgAdmin com Docker Compose

Exemplo utilizado no vídeo do canal **InfoCotidiano** para executar PostgreSQL e pgAdmin com Docker Compose.

## 🎥 Vídeo

[![Docker + PostgreSQL + pgAdmin](https://img.youtube.com/vi/UtmBLK0rBrA/maxresdefault.jpg)](https://youtu.be/UtmBLK0rBrA)
> **Link:** [https://youtu.be/UtmBLK0rBrA]

O arquivo `docker-compose.yml` fica separado deste README.

## Estrutura

```text
.
├── docker-compose.yml
├── Dados/
└── pgadmin/
```

Os diretórios `Dados` e `pgadmin` são usados para manter os dados dos containers no computador.

## Configurações

### PostgreSQL

- Imagem: `postgres:16`
- Container: `postgres_dev`
- Porta: `5432`
- Usuário: `postgres`
- Senha: `postgres`
- Banco: `minha_api`

### pgAdmin

- Imagem: `dpage/pgadmin4`
- Container: `pgadmin_dev`
- Porta: `5050`
- Acesso: `http://localhost:5050`
- E-mail: `admin@admin.com`
- Senha: `admin`

## Iniciar os containers

Na pasta onde está o `docker-compose.yml`:

```bash
docker compose up -d
```

O `-d` executa os containers em segundo plano.

## Parar os containers

```bash
docker compose stop
```

Os containers são apenas parados e podem ser iniciados novamente.

## Iniciar novamente containers já criados

```bash
docker compose start
```

## Parar e remover os containers

```bash
docker compose down
```

O `down` remove os containers criados pelo Compose. Os dados permanecem nos diretórios mapeados como volumes.

Depois do `down`, para criar os containers novamente:

```bash
docker compose up -d
```

> Se você apenas alterou o `docker-compose.yml`, normalmente use `docker compose up -d` para aplicar a configuração. Se necessário, o Compose recria os containers alterados.

## Acessar o PostgreSQL pelo terminal

Para acessar o PostgreSQL diretamente pelo container:

```bash
docker exec -it postgres_dev psql -U postgres -d minha_api
```

Depois de entrar no `psql`, alguns comandos úteis:

```sql
\l
```

Lista os bancos de dados.

```sql
\dt
```

Lista as tabelas do banco atual.

Para sair:

```sql
\q
```

## Acessar pelo DBeaver

Crie uma nova conexão PostgreSQL no DBeaver com:

```text
Host: localhost
Porta: 5432
Banco: minha_api
Usuário: postgres
Senha: postgres
```

Como a porta `5432` do container está publicada na máquina local, o DBeaver pode acessar o PostgreSQL usando `localhost`.

## Acessar o pgAdmin pelo navegador

Abra:

```text
http://localhost:5050
```

Login:

```text
E-mail: admin@admin.com
Senha: admin
```

### Conectar o pgAdmin ao PostgreSQL

Dentro do pgAdmin, ao cadastrar o servidor PostgreSQL, como os dois serviços estão na mesma rede do Docker Compose, utilize o nome do serviço como host:

```text
Host: postgres
Porta: 5432
Banco: minha_api
Usuário: postgres
Senha: postgres
```

> No pgAdmin, não utilize `localhost` como host para acessar o PostgreSQL. Dentro do container do pgAdmin, `localhost` aponta para o próprio container do pgAdmin.

## Acessar pelo terminal do container

Para abrir um terminal dentro do container do PostgreSQL:

```bash
docker exec -it postgres_dev bash
```

Depois, para acessar o PostgreSQL:

```bash
psql -U postgres -d minha_api
```

Para sair do container:

```bash
exit
```

Também é possível abrir um shell diretamente:

```bash
docker exec -it postgres_dev sh
```

## Verificar os containers

Para verificar se os containers estão em execução:

```bash
docker ps
```

Para visualizar também os containers parados:

```bash
docker ps -a
```

## Logs

Para visualizar os logs do PostgreSQL:

```bash
docker logs postgres_dev
```

Para acompanhar os logs em tempo real:

```bash
docker logs -f postgres_dev
```

Para o pgAdmin:

```bash
docker logs pgadmin_dev
```

## Observação

Este projeto é um **exemplo didático utilizado em vídeo no canal InfoCotidiano**.

As senhas e configurações apresentadas são apenas para ambiente de desenvolvimento/teste. Para utilização em produção, utilize credenciais seguras e revise as configurações de acesso.