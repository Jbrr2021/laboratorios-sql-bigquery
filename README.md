# 🚀 Laboratório Prático de Cloud FinOps no Google BigQuery

![Google Cloud](https://img.shields.io/badge/Google_Cloud-BigQuery-4285F4?style=flat&logo=googlecloud&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Analytics_&_DDL-CC292B?style=flat&logo=mysql&logoColor=white)
![FinOps](https://img.shields.io/badge/Framework-Cloud_FinOps-00C49F?style=flat)
![BigQuery Sandbox](https://img.shields.io/badge/Environment-GCP_Sandbox-orange?style=flat)

Laboratório prático de Engenharia de Dados e governança financeira em nuvem desenvolvido no ambiente **Google BigQuery Sandbox**. 

O projeto aplica na prática os conceitos da fase de **"Informar"** do framework *Cloud FinOps* (baseado no livro *Cloud FinOps - 2ª Edição*), transformando logs brutos de faturamento em relatórios executivos para identificação imediata de desperdícios orçamentários.

---

## 💼 O Desafio de Negócio ("Pedido do Gestor")

> *"Precisamos de visibilidade imediata sobre os custos da nossa infraestrutura em nuvem. Analise os recursos faturados e aplique uma regra de classificação condicional:*
> * *Abaixo de R$ 50,00: **'Baixo Custo'***
> * *Entre R$ 50,00 e R$ 150,00: **'Atenção'***
> * *Acima de R$ 150,00: **'Crítico'***
> *Gere também uma visão consolidada para tomada de decisão da diretoria."*

---

## 🛠️ Arquitetura da Solução & Modelagem

Para simular o ambiente corporativo, estruturei no BigQuery o dataset `meu_finops` e modelei a tabela analítica de faturamento com recursos de computação (*Compute Engine, BigQuery, Cloud SQL e Cloud Storage*).

### 1. Classificação Condicional por Recurso
Implementação de regras de rotulagem dinâmica via `CASE WHEN`:

```sql
SELECT
    servico,
    ambiente,
    equipe,
    custo_total,
    CASE 
        WHEN custo_total < 50.00 THEN '🟢 Baixo Custo'
        WHEN custo_total BETWEEN 50.00 AND 150.00 THEN '🟡 Atenção'
        ELSE '🔴 Crítico'
    END AS status_custo
FROM `meu_finops.custos_nuvem_teste`;

