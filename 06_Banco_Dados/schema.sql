-- Schema inicial do Mercadinho Fapa
-- Execute em um banco de desenvolvimento/teste, após criá-lo no PostgreSQL.

CREATE TABLE IF NOT EXISTS cargo (
    id BIGSERIAL PRIMARY KEY,
    nome VARCHAR(30) NOT NULL UNIQUE,
    salario_inicial NUMERIC(10,2) NOT NULL CHECK (salario_inicial > 0)
);

CREATE TABLE IF NOT EXISTS colaborador (
    id BIGSERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_admissao DATE NOT NULL CHECK (data_admissao <= CURRENT_DATE),
    salario_base NUMERIC(10,2) NOT NULL CHECK (salario_base > 0),
    status VARCHAR(7) NOT NULL DEFAULT 'ATIVO' CHECK (status IN ('ATIVO', 'INATIVO')),
    id_cargo BIGINT NOT NULL REFERENCES cargo(id)
);

CREATE TABLE IF NOT EXISTS usuario (
    id BIGSERIAL PRIMARY KEY,
    id_colaborador BIGINT NOT NULL UNIQUE REFERENCES colaborador(id),
    login VARCHAR(50) NOT NULL UNIQUE,
    senha_hash VARCHAR(100) NOT NULL,
    perfil VARCHAR(12) NOT NULL CHECK (perfil IN ('RH', 'FUNCIONARIO'))
);

CREATE TABLE IF NOT EXISTS folha (
    id BIGSERIAL PRIMARY KEY,
    mes SMALLINT NOT NULL CHECK (mes BETWEEN 1 AND 12),
    ano SMALLINT NOT NULL CHECK (ano BETWEEN 2000 AND 2100),
    data_geracao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    total NUMERIC(12,2) NOT NULL CHECK (total >= 0),
    CONSTRAINT uq_folha_periodo UNIQUE (mes, ano)
);

CREATE TABLE IF NOT EXISTS folha_item (
    id BIGSERIAL PRIMARY KEY,
    id_folha BIGINT NOT NULL REFERENCES folha(id),
    id_colaborador BIGINT NOT NULL REFERENCES colaborador(id),
    nome_colaborador VARCHAR(100) NOT NULL,
    nome_cargo VARCHAR(30) NOT NULL,
    salario_base NUMERIC(10,2) NOT NULL CHECK (salario_base > 0),
    remuneracao NUMERIC(10,2) NOT NULL CHECK (remuneracao > 0),
    CONSTRAINT ck_item_remuneracao_salario CHECK (remuneracao = salario_base),
    CONSTRAINT uq_folha_colaborador UNIQUE (id_folha, id_colaborador)
);
