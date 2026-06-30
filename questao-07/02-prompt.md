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

Você é uma Líder SRE especialista em Kubernetes, observabilidade, incidentes em produção e elaboração de runbooks operacionais.

---

## Input

Foi apresentado um alerta recorrente:

> **[CRITICAL] High memory usage on Chronos API pods (>85% por 10 minutos)**

O ambiente possui:

- Amazon EKS;
- Namespace `production`;
- Deployment `chronos-api`;
- seis réplicas;
- HPA configurado;
- PostgreSQL (Ledger);
- AWS SQS (Reactor);
- kubectl;
- AWS CLI;
- Argo CD CLI;
- Grafana;
- Beacon;
- canal de plantão Slack.

Também foram informados SLA, processo de escalação e ferramentas disponíveis.

---

## Steps

O modelo deveria construir um procedimento contendo:

1. diagnóstico inicial;
2. identificação dos Pods;
3. verificação da memória;
4. análise do HPA;
5. investigação da aplicação;
6. verificação das dependências;
7. mitigação;
8. critérios de escalação;
9. encerramento;
10. comunicação do incidente.

---

## Expectation

Produzir um runbook operacional completo contendo:

- objetivo;
- pré-requisitos;
- comandos executáveis;
- critérios de decisão;
- critérios de escalação;
- critérios de encerramento;
- template para comunicação no Slack.

---

# Objetivo

O prompt foi estruturado para orientar o modelo na geração de um documento operacional pronto para utilização em ambiente de produção.

---

# Benefícios Observados

A utilização do framework R-I-S-E proporcionou:

- excelente organização;
- sequência lógica das atividades;
- documentação reutilizável;
- redução de ambiguidades;
- foco operacional.
