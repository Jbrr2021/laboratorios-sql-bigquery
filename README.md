# 🚀 Laboratório Prático de FinOps no Google BigQuery

Repositório criado para registrar meus estudos práticos de Engenharia de Dados com foco em cultura FinOps e otimização de custos em nuvem, utilizando o ambiente de testes do **Google Cloud Platform (GCP)**.

## 📊 O Cenário do Projeto
Simulei a criação de um Dataset próprio (`meu_finops`) com tabelas contendo dados fictícios de faturamento de recursos de nuvem (*Compute Engine, BigQuery, Cloud SQL, Cloud Storage*).

## 🛠️ O que foi implementado:
- **Criação e modelagem de tabelas:** Criação física de dados estruturados usando instruções SQL DDL.
- **Análise Macro de Custos:** Queries utilizando `GROUP BY` e funções de agregação (`SUM`, `COUNT`) para identificar quais serviços geraram maior impacto financeiro na empresa.
- **Classificação de Risco (Visibilidade):** Utilização da estrutura condicional `CASE WHEN` para taguear os recursos dinamicamente entre 'Baixo Custo', 'Atenção' e 'Crítico'.

## 📈 Resultados Obtidos
A query final consolidou que **R$ 490,70** do orçamento estavam concentrados em apenas **2 recursos de estado Crítico**, permitindo que o time de tecnologia tome decisões cirúrgicas de otimização de custos (*Quick Wins*).
