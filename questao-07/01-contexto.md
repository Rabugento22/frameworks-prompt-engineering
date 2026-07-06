---

🏠 [Readme do Projeto](../README.md) | 📑 [Sumário](../SUMMARY.md) | 🧭 [Navegação](../NAVIGATION.md) | 🏠 [Readme da questão 07](README.md)

---

# Contexto da Questão 07

## Cenário

Ambientes Kubernetes em produção exigem processos padronizados para resposta a incidentes.

Quando um alerta crítico é acionado, a equipe responsável deve possuir documentação clara, objetiva e executável, permitindo identificar rapidamente a causa do problema e reduzir o tempo de indisponibilidade.

A atividade apresenta esse cenário por meio de um alerta recorrente de alto consumo de memória na aplicação **Chronos API**, hospedada em um cluster Amazon EKS.

---

# Problema

O incidente consiste na utilização superior a 85% de memória pelos Pods da aplicação durante mais de dez minutos.

Além do consumo elevado, a investigação deve considerar:

- comportamento do HPA;
- estado dos Pods;
- disponibilidade do PostgreSQL (Ledger);
- filas AWS SQS (Reactor);
- métricas;
- logs centralizados;
- dashboards Grafana.

---

# Objetivo

Construir um prompt capaz de orientar um Modelo de Linguagem na geração de um runbook operacional completo, permitindo que qualquer integrante da equipe de plantão execute os procedimentos de forma padronizada.

---

# Competências Desenvolvidas

Durante esta atividade foram aplicados conhecimentos relacionados a:

- Kubernetes;
- Amazon EKS;
- Site Reliability Engineering (SRE);
- Observabilidade;
- Resposta a Incidentes;
- HPA;
- Grafana;
- kubectl;
- Engenharia de Prompt.

---

# Relação com o Framework

O framework **R-I-S-E** mostrou-se adequado por organizar todas as informações necessárias antes da geração da documentação operacional.

Essa estrutura fornece contexto suficiente para que o modelo produza um procedimento objetivo, consistente e aplicável em ambientes produtivos.

---

⬅️ [Anterior](README.md) | 🏠 [Projeto](../README.md)  | 📑 [Sumário](../SUMMARY.md) | ➡️ [Próximo](02-prompt.md)

---
