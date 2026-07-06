---

🏠 [Readme do Projeto](../README.md) | 📑 [Sumário](../SUMMARY.md) | 🧭 [Navegação](../NAVIGATION.md) | 🏠 [Readme da questão 04](README.md)

---

# Justificativa da Escolha do Framework

## Framework Utilizado

**T-A-G (Task – Action – Goal)**

---

# Objetivo

O objetivo desta atividade foi utilizar um framework de Prompt Engineering capaz de orientar um Modelo de Linguagem (LLM) na geração de uma consulta SQL PostgreSQL para criação de um relatório mensal consolidado das transações do sistema Ledger.

A atividade exigia que o modelo interpretasse corretamente diversas regras de negócio antes de construir a consulta SQL.

---

# Motivo da Escolha

O framework **T-A-G** foi escolhido por permitir dividir o problema em três componentes bem definidos:

- **Task** — definição clara da tarefa;
- **Action** — sequência lógica das ações necessárias;
- **Goal** — objetivo final esperado.

Essa estrutura reduz ambiguidades e facilita a construção de soluções para problemas analíticos.

---

# Aplicação na Questão

Durante o experimento, cada componente foi utilizado da seguinte forma:

| Componente | Aplicação |
|------------|-----------|
| **Task** | Desenvolver uma consulta SQL PostgreSQL para geração de relatório mensal das transações. |
| **Action** | Filtrar registros, aplicar período, agrupar dados, calcular totais e formatar a saída. |
| **Goal** | Produzir uma query pronta para utilização pela área de Produto. |

---

# Benefícios Observados

A utilização do framework proporcionou diversos benefícios:

- organização do raciocínio;
- clareza na definição das etapas;
- redução de ambiguidades;
- melhor interpretação das regras de negócio;
- elevada aderência aos requisitos da atividade.

---

# Adequação ao Problema

A construção de consultas SQL exige que o modelo execute várias etapas em sequência.

O framework T-A-G mostrou-se adequado porque incentiva essa execução ordenada, reduzindo o risco de omissão de requisitos importantes.

---

# Aspecto Crítico Identificado

Durante a análise foi identificado um ponto importante relacionado ao requisito:

> "últimos seis meses corridos"

Essa definição pode possuir interpretações diferentes, como:

- últimos 180 dias;
- últimos seis meses completos;
- mês atual acrescido dos cinco meses anteriores.

Antes da implementação em produção, recomenda-se validar essa regra junto à área de negócio para evitar divergências nos relatórios.

---

# Conclusão

O framework **T-A-G** mostrou excelente aderência à atividade proposta, permitindo que o modelo produzisse uma consulta SQL consistente, organizada e alinhada às necessidades do negócio.

---

⬅️ [Anterior](04-output.md) | 🏠 [Projeto](../README.md)  | 📑 [Sumário](../SUMMARY.md) | ➡️ [Próximo](06-melhorias.md)

---
