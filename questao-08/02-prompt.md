---

🏠 [Readme do Projeto](../README.md) | 📑 [Sumário](../SUMMARY.md) | 🧭 [Navegação](../NAVIGATION.md) | 🏠 [Readme da questão 08](README.md)

---

# Prompt Utilizado

## Framework

**R-I-S-E (Role – Input – Steps – Expectation)**

---

# Estrutura

```text
Role

↓

Input

↓

Steps

↓

Expectation
```

---

# Prompt Original

## Role

Você é um **Principal Site Reliability Engineer (SRE)** especializado em Kubernetes, PostgreSQL, AWS, troubleshooting de aplicações distribuídas e análise de incidentes críticos em produção.

---

## Input

Foram disponibilizados diversos artefatos do incidente, incluindo:

- histórico do deploy;
- alterações implementadas na versão v2.48.0;
- métricas de desempenho;
- logs da aplicação;
- estado da fila;
- estado do cluster Kubernetes;
- utilização do banco PostgreSQL.

Essas informações deveriam ser utilizadas para construir uma análise técnica consistente.

---

## Steps

O modelo deveria executar as seguintes etapas:

1. construir a linha do tempo;
2. correlacionar métricas, logs e deploy;
3. identificar hipóteses;
4. analisar evidências;
5. avaliar impacto no negócio;
6. avaliar rollback;
7. avaliar scaling;
8. identificar causa raiz;
9. recomendar ação imediata;
10. definir ações preventivas.

---

## Expectation

Produzir um postmortem técnico contendo:

- resumo executivo;
- linha do tempo;
- evidências observadas;
- hipóteses avaliadas;
- causa raiz mais provável;
- decisão recomendada;
- nível de confiança;
- próximos passos;
- ações preventivas.

---

# Objetivo

O prompt foi estruturado para orientar o modelo durante todo o processo investigativo, reduzindo ambiguidades e permitindo uma análise baseada em evidências.

---

# Benefícios Observados

A utilização do framework R-I-S-E proporcionou:

- investigação estruturada;
- excelente correlação de informações;
- documentação técnica organizada;
- recomendações objetivas;
- apoio consistente à tomada de decisão.

---

⬅️ [Anterior](01-contexto.md) | 🏠 [Projeto](../README.md)  | 📑 [Sumário](../SUMMARY.md) | ➡️ [Próximo](03-modelo.md)

---
