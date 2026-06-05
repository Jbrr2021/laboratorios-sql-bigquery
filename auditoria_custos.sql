-- SCRIPT 01: Criação da tabela de custos fictícios para o laboratório
CREATE OR REPLACE TABLE `meu_finops.custos_nuvem_teste` AS
SELECT 'Compute Engine' AS nome_servico, 'Instância VM Sênior' AS tipo_recurso, DATE('2026-05-01') AS data_uso, 150.50 AS valor_gasto UNION ALL
SELECT 'Cloud Storage' AS nome_servico, 'Armazenamento Padrão' AS tipo_recurso, DATE('2026-05-01') AS data_uso, 25.00 AS valor_gasto UNION ALL
SELECT 'BigQuery' AS nome_servico, 'Processamento de Queries' AS tipo_recurso, DATE('2026-05-02') AS data_uso, 340.20 AS valor_gasto UNION ALL
SELECT 'Compute Engine' AS nome_servico, 'Instância VM Júnior' AS tipo_recurso, DATE('2026-05-02') AS data_uso, 45.10 AS valor_gasto UNION ALL
SELECT 'Cloud SQL' AS nome_servico, 'Banco de Dados Relacional' AS tipo_recurso, DATE('2026-05-03') AS data_uso, 89.90 AS valor_gasto;


-- SCRIPT 02: Query gerencial com agrupamento e classificação de riscos (CASE WHEN)
SELECT 
  CASE 
    WHEN valor_gasto < 50.00 THEN 'Baixo Custo'
    WHEN valor_gasto BETWEEN 50.00 AND 150.00 THEN 'Atenção'
    ELSE 'Crítico'
  END AS status_alerta,
  SUM(valor_gasto) AS custo_total_reais,
  COUNT(*) AS quantidade_recursos
FROM 
  `meu_finops.custos_nuvem_teste`
GROUP BY 
  status_alerta
ORDER BY 
  custo_total_reais DESC;
