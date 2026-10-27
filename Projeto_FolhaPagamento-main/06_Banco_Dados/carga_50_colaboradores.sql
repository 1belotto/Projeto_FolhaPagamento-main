-- Executar somente após schema.sql e dados_teste.sql, em banco de teste.
-- Mantém os 6 colaboradores iniciais e adiciona 44 para totalizar 50 ativos.
INSERT INTO colaborador (nome, data_admissao, salario_base, status, id_cargo)
SELECT
  'Colaborador Teste ' || gs,
  DATE '2025-01-01',
  CASE WHEN gs % 3 = 0 THEN 2000.00 WHEN gs % 3 = 1 THEN 1600.00 ELSE 3000.00 END,
  'ATIVO',
  CASE WHEN gs % 3 = 0 THEN 2 WHEN gs % 3 = 1 THEN 3 ELSE 4 END
FROM generate_series(7, 50) AS gs;
