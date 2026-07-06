---

🏠 [Readme do Projeto](../README.md) | 📑 [Sumário](../SUMMARY.md) | 🧭 [Navegação](../NAVIGATION.md) | 🏠 [Readme da questão 08](README.md)

---

# Output Produzido pelo Modelo

## Objetivo

Este documento apresenta o postmortem técnico preliminar produzido pelo modelo durante a execução da atividade.

O conteúdo foi mantido fiel ao experimento original, sendo apenas reorganizado em Markdown para facilitar sua leitura e publicação no repositório GitHub.

---

# Modelo Utilizado

**GPT-4o**

---

# Resumo Executivo

A análise identificou forte correlação temporal entre o deploy da versão **v2.48.0** e o início da degradação da aplicação durante o pico de utilização.

As evidências apontam para uma regressão introduzida na camada responsável pelo gerenciamento do pool de conexões com o banco de dados Ledger, agravada pela redução do tempo limite das consultas.

A recomendação imediata foi executar o rollback para a versão **v2.47.0**.

---

# Linha do Tempo

| Horário | Evento |
|----------|--------|
| 23/04 18:42 UTC | Deploy da versão v2.48.0 |
| 24/04 13:30 UTC | Sistema operando normalmente |
| 24/04 14:00 UTC | Crescimento inicial da latência |
| 24/04 14:10 UTC | Início do aumento na taxa de erros |
| 24/04 14:15 UTC | Saturação perceptível |
| 24/04 14:20 UTC | Degradação severa da aplicação |

---

# Evidências Observadas

## Banco de Dados

- 240 conexões ativas de um limite de 250.

## Pool de Conexões

```text
connection pool exhausted
active=20
waiting=147
```

## Timeouts

```text
query timeout after 2000ms
```

## Circuit Breaker

```text
circuit-breaker OPEN
```

## Filas

- mais de cinquenta mil mensagens acumuladas;
- crescimento contínuo da fila;
- atraso aproximado de dezoito minutos.

---

# Hipóteses Avaliadas

## Hipótese 1 — Pico normal de tráfego

**Confiança:** Baixa

### Evidências

- CPU média de 62%;
- memória média de 71%;
- todos os Pods permaneciam em execução.

### Conclusão

Os recursos computacionais disponíveis não justificavam a degradação observada.

---

## Hipótese 2 — Limitação do Banco de Dados

**Confiança:** Média

### Evidências

- banco operando próximo ao limite de conexões.

### Contraevidência

O comportamento anormal surgiu somente após a implantação da nova versão da aplicação.

---

## Hipótese 3 — Regressão Introduzida no Deploy

**Confiança:** Alta

### Evidências

- alteração do pool de conexões;
- atualização da biblioteca psycopg;
- redução do timeout de cinco para dois segundos;
- crescimento progressivo da latência após o aumento da carga.

### Conclusão

Esta foi considerada a hipótese mais consistente.

---

# Causa Raiz Mais Provável

A investigação apontou que a versão **v2.48.0** introduziu alterações no gerenciamento das conexões com o banco Ledger.

Essas mudanças provocaram o esgotamento do pool de conexões da aplicação, ocasionando saturação do banco de dados, aumento da latência, abertura do circuit breaker e crescimento do backlog das filas.

---

# Recomendação

## Ação Imediata

✅ Executar rollback para a versão **v2.47.0**.

### Justificativas

- forte correlação temporal entre deploy e incidente;
- alteração diretamente relacionada aos sintomas observados;
- infraestrutura Kubernetes operando dentro dos limites esperados;
- o escalonamento trataria apenas os efeitos do problema.

---

# Nível de Confiança

**85%**

---

# Ações Corretivas Permanentes

- revisar a implementação do novo pool de conexões;
- validar a atualização da biblioteca psycopg;
- reavaliar o timeout configurado;
- executar testes de carga antes de novos deploys;
- adicionar métricas específicas para monitoramento do pool;
- criar alertas para saturação de conexões;
- incluir verificações de consumo de conexões no pipeline de implantação.

---

# Avaliação Técnica

| Requisito | Status |
|-----------|:------:|
| Resumo Executivo | ✅ |
| Linha do Tempo | ✅ |
| Evidências | ✅ |
| Hipóteses | ✅ |
| Causa Raiz | ✅ |
| Decisão Recomendada | ✅ |
| Próximos Passos | ✅ |
| Ações Preventivas | ✅ |

---

# Observações

O postmortem produzido apresenta uma sequência lógica de investigação, apoiada por evidências técnicas e critérios objetivos para tomada de decisão.

As oportunidades de evolução serão apresentadas separadamente no arquivo **06-melhorias.md**, preservando integralmente o resultado original do experimento.

---

⬅️ [Anterior](03-modelo.md) | 🏠 [Projeto](../README.md)  | 📑 [Sumário](../SUMMARY.md) | ➡️ [Próximo](05-justificativa.md)

---
