-- MASSA DE TESTE: APAGA DADOS EXISTENTES. EXECUTAR SOMENTE EM BANCO DE TESTE.
TRUNCATE TABLE folha_item, folha, usuario, colaborador, cargo RESTART IDENTITY CASCADE;

INSERT INTO cargo (nome, salario_inicial) VALUES
('Gerente', 5000.00),
('Caixa', 2000.00),
('Repositor', 1600.00),
('RH/Administrativo', 3000.00);

INSERT INTO colaborador (id, nome, data_admissao, salario_base, status, id_cargo) VALUES
(1, 'João Silva', DATE '2025-01-10', 5000.00, 'ATIVO', 1),
(2, 'Maria Silva', DATE '2025-02-01', 2000.00, 'ATIVO', 2),
(3, 'José Silva', DATE '2025-02-01', 2000.00, 'ATIVO', 2),
(4, 'Arlindo Silva', DATE '2025-03-01', 1600.00, 'ATIVO', 3),
(5, 'Pedro Silva', DATE '2025-03-01', 1600.00, 'ATIVO', 3),
(6, 'Adriana', DATE '2024-12-01', 3000.00, 'ATIVO', 4);

INSERT INTO usuario (id, id_colaborador, login, senha_hash, perfil) VALUES
(1, 1, 'joao.silva', '$2a$10$HuYf1bT0W1mZVGTbPaVovOT1qC5c2UeLPohxld06J9kir/PlcxM2.', 'FUNCIONARIO'),
(2, 2, 'maria.silva', '$2a$10$HuYf1bT0W1mZVGTbPaVovOT1qC5c2UeLPohxld06J9kir/PlcxM2.', 'FUNCIONARIO'),
(3, 3, 'jose.silva', '$2a$10$HuYf1bT0W1mZVGTbPaVovOT1qC5c2UeLPohxld06J9kir/PlcxM2.', 'FUNCIONARIO'),
(4, 4, 'arlindo.silva', '$2a$10$HuYf1bT0W1mZVGTbPaVovOT1qC5c2UeLPohxld06J9kir/PlcxM2.', 'FUNCIONARIO'),
(5, 5, 'pedro.silva', '$2a$10$HuYf1bT0W1mZVGTbPaVovOT1qC5c2UeLPohxld06J9kir/PlcxM2.', 'FUNCIONARIO'),
(6, 6, 'adriana', '$2a$10$HuYf1bT0W1mZVGTbPaVovOT1qC5c2UeLPohxld06J9kir/PlcxM2.', 'RH');

SELECT setval(pg_get_serial_sequence('colaborador','id'), 6);
SELECT setval(pg_get_serial_sequence('usuario','id'), 6);
