---

🏠 [Readme do Projeto](../README.md) | 📑 [Sumário](../SUMMARY.md) | 🧭 [Navegação](../NAVIGATION.md) | 🏠 [Readme da questão 04](README.md)

---

# Prompt Utilizado

## Framework

**T-A-G (Task – Action – Goal)**

---

# Estrutura

```text
Task

↓

Action

↓

Goal
```

---

# Prompt Original

## Task

Criar uma consulta SQL PostgreSQL capaz de gerar um relatório mensal consolidado das transações do sistema Ledger, atendendo integralmente às regras de negócio fornecidas.

---

## Action

Executar as seguintes etapas:

1. Filtrar apenas transações com status **completed**;
2. Aplicar corretamente o período correspondente aos últimos seis meses;
3. Agrupar por mês e categoria;
4. Calcular a quantidade de transações;
5. Somar o volume financeiro convertendo centavos para reais;
6. Formatar o mês como **YYYY-MM**;
7. Garantir compatibilidade com PostgreSQL.

---

## Goal

Produzir uma consulta SQL pronta para execução em ambiente de produção, permitindo à área de Produto gerar relatórios mensais consolidados para apresentações executivas. :contentReference[oaicite:3]{index=3}

---

# Objetivo

O prompt foi estruturado para conduzir o modelo durante todas as etapas necessárias para construção da consulta, reduzindo interpretações incorretas e garantindo aderência às regras definidas.

---

# Benefícios Observados

A utilização do framework T-A-G proporcionou:

- organização lógica da tarefa;
- clareza dos requisitos;
- melhor interpretação das regras de negócio;
- geração consistente da consulta SQL;
- redução da necessidade de refinamentos posteriores.

---

⬅️ [Anterior](01-contexto.md) | 🏠 [Projeto](../README.md)  | 📑 [Sumário](../SUMMARY.md) | ➡️ [Próximo](03-modelo.md)

---
