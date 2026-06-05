CREATE OR REPLACE TABLE `meu_finops.custos_nuvem_teste` AS
SELECT 'Compute Engine' AS nome_servico, 'Instância VM Sênior' AS tipo_recurso, DATE('2026-05-01') AS data_uso, 150.50 AS valor_gasto UNION ALL
SELECT 'Cloud Storage' AS nome_servico, 'Armazenamento Padrão' AS tipo_recurso, DATE('2026-05-01') AS data_uso, 25.00 AS valor_gasto UNION ALL
SELECT 'BigQuery' AS nome_servico, 'Processamento de Queries' AS tipo_recurso, DATE('2026-05-02') AS data_uso, 340.20 AS valor_gasto UNION ALL
SELECT 'Compute Engine' AS nome_servico, 'Instância VM Júnior' AS tipo_recurso, DATE('2026-05-02') AS data_uso, 45.10 AS valor_gasto UNION ALL
SELECT 'Cloud SQL' AS nome_servico, 'Banco de Dados Relacional' AS tipo_recurso, DATE('2026-05-03') AS data_uso, 89.90 AS valor_gasto;
