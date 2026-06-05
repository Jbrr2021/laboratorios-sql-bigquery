# 🚀 Meu Laboratório Prático de FinOps no Google BigQuery

Neste repositório, registro a aplicação prática dos meus estudos de Engenharia de Dados com foco em cultura FinOps e otimização de custos em nuvem. Todo o projeto foi desenvolvido por mim dentro do ambiente Sandbox do **Google Cloud Platform (GCP)**.

## 📖 A Origem do Desafio (Conectando Teoria e Prática)
Após concluir a leitura do **Primeiro Capítulo do livro "Cloud FinOps" (2ª Edição)**, absorvi um conceito crucial trazido pelos autores: o grande desafio da nuvem não é apenas a tecnologia em si, mas o desperdício invisível gerado pela facilidade de criar recursos caros sem a governança correta. 

Para fixar esse aprendizado, decidi sair da teoria e simular um cenário real do dia a dia corporativo.

## 💼 O Pedido do Gestor
Imaginei um cenário onde o meu gestor técnico me trouxe uma demanda urgente de negócio: 
> *"Preciso de um relatório gerencial que nos dê visibilidade imediata sobre os custos da nossa infraestrutura. Quero que você analise nossos recursos e crie uma classificação visual: se o recurso custou menos de R$ 50,00, rotule como 'Baixo Custo'; se custou entre R$ 50,00 e R$ 150,00, rotule como 'Atenção'; e se passou de R$ 150,00, coloque uma etiqueta de 'Crítico'."*

## 🛠️ O Que Eu Desenvolvi
Para solucionar esse problema e entregar o valor que o negócio precisava, segui os seguintes passos técnicos no BigQuery:

1. **Modelagem e Carga de Dados:** Criei fisicamente um Dataset próprio (`meu_finops`) e, utilizando instruções SQL DDL, estruturei uma tabela simulando logs de faturamento reais de recursos de computação (*Compute Engine, BigQuery, Cloud SQL e Cloud Storage*).
2. **Análise Condicional Dinâmica:** Escrevi uma query utilizando a cláusula `CASE WHEN` para realizar o tagueamento automático dos dados linha por linha, atendendo aos critérios de custo estipulados pelo gestor.
3. **Agrupamento Executivo:** Evoluí a consulta combinando o `CASE WHEN` com funções de agregação (`SUM`, `COUNT`) e agrupamentos (`GROUP BY`). Meu objetivo foi tirar o foco do detalhe de infraestrutura e gerar uma visão consolidada para tomadas de decisão rápidas da diretoria.

## 📈 Resultados Obtidos com a Minha Query
Consegui consolidar o cenário financeiro da empresa com precisão. O relatório final demonstrou de forma cirúrgica que **R$ 490,70** do orçamento total estavam concentrados em apenas **2 recursos de estado Crítico** (com destaque para o processamento de consultas do BigQuery). 

Com essa entrega, mostrei na prática como a Engenharia de Dados atua diretamente na fase de **"Informar"** do framework FinOps, gerando visibilidade para que o time de tecnologia saiba exatamente onde cortar gastos sem afetar a operação.

