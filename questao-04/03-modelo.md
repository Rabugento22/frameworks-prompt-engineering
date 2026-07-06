---

🏠 [Readme do Projeto](../README.md) | 📑 [Sumário](../SUMMARY.md) | 🧭 [Navegação](../NAVIGATION.md) | 🏠 [Readme da questão 04](README.md)

---

# Modelo de IA Utilizado

## Modelo

**Claude Sonnet 4 (Anthropic)**

---

# Objetivo da Escolha

Esta atividade exigia a construção de uma consulta SQL PostgreSQL capaz de atender simultaneamente diversos requisitos de negócio, incluindo filtros temporais, agregações, formatação de datas e conversão de valores monetários.

O desafio envolvia conhecimentos relacionados a:

- SQL PostgreSQL;
- funções analíticas;
- agregações;
- manipulação de datas;
- regras de negócio;
- geração de relatórios.

O modelo **Claude Sonnet 4** foi escolhido devido à sua elevada precisão na geração de consultas SQL complexas e excelente interpretação de requisitos estruturados. :contentReference[oaicite:0]{index=0}

---

# Características Observadas

Durante o experimento foi possível observar que o modelo apresentou:

- excelente organização da consulta;
- utilização correta das funções do PostgreSQL;
- boa interpretação das regras de negócio;
- código limpo e de fácil leitura;
- baixa necessidade de ajustes posteriores.

---

# Relação com o Framework

O framework utilizado foi o **T-A-G (Task – Action – Goal)**.

O modelo respondeu corretamente aos três componentes definidos no prompt:

- **Task:** compreendeu a necessidade de gerar um relatório consolidado;
- **Action:** executou todas as etapas necessárias para construção da consulta;
- **Goal:** produziu uma query pronta para utilização em ambiente de produção.

Essa aderência demonstra a eficiência do framework na condução de tarefas analíticas envolvendo SQL.

---

# Pontos Fortes

Entre os principais aspectos positivos observados destacam-se:

- utilização adequada do `DATE_TRUNC()`;
- formatação correta utilizando `TO_CHAR()`;
- conversão apropriada de centavos para reais;
- agrupamento consistente;
- ordenação cronológica correta;
- compatibilidade com PostgreSQL.

---

# Limitações

Apesar da elevada qualidade da consulta produzida, algumas regras de negócio podem apresentar interpretações diferentes, especialmente em relação ao conceito de "últimos seis meses".

Esse tipo de requisito deve ser validado junto aos responsáveis pelo negócio antes da implantação em produção.

---

# Conclusão

O Claude Sonnet 4 mostrou excelente desempenho na geração de consultas SQL analíticas, produzindo uma solução organizada, compatível com PostgreSQL e aderente aos requisitos definidos na atividade.

---

⬅️ [Anterior](02-prompt.md) | 🏠 [Projeto](../README.md)  | 📑 [Sumário](../SUMMARY.md) | ➡️ [Próximo](04-output.md)

---
