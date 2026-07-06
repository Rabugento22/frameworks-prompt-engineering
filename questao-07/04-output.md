---

🏠 [Readme do Projeto](../README.md) | 📑 [Sumário](../SUMMARY.md) | 🧭 [Navegação](../NAVIGATION.md) | 🏠 [Readme da questão 07](README.md)

---

# Output Produzido pelo Modelo

## Objetivo

Este documento registra o runbook operacional produzido pelo modelo durante a execução da atividade.

O conteúdo foi preservado conforme apresentado no experimento original, recebendo apenas ajustes de formatação em Markdown para facilitar sua documentação no GitHub.

---

# Modelo Utilizado

**Claude Sonnet 4**

---

# Objetivo do Runbook

Diagnosticar e resolver alertas relacionados ao alto consumo de memória dos Pods da aplicação **Chronos API**, garantindo o restabelecimento do serviço com o menor impacto possível aos usuários.

---

# Passo 1 — Identificar os Pods Afetados

```bash
kubectl get pods -n production -l app=chronos-api
```

### Verificação Esperada

- Todos os Pods devem estar em estado **Running**.
- Identificar Pods em **CrashLoopBackOff**, **Error** ou **Restarting**.

---

# Passo 2 — Validar o Consumo de Memória

```bash
kubectl top pods -n production -l app=chronos-api
```

### Verificação Esperada

- Confirmar utilização superior a **85%**.
- Identificar se o problema afeta um único Pod ou toda a aplicação.

---

# Passo 3 — Verificar o HPA

```bash
kubectl get hpa -n production

kubectl describe hpa chronos-api -n production
```

### Verificação Esperada

- Confirmar se o HPA está executando o escalonamento automático.
- Identificar se o limite máximo de réplicas foi atingido.

---

# Critérios de Escalação

Escalar imediatamente para **@chronos-core** quando ocorrer qualquer uma das seguintes situações:

- utilização de memória superior a 85% durante mais de quinze minutos;
- HPA operando em `maxReplicas`;
- mais de 20% dos Pods reiniciando;
- indisponibilidade do banco Ledger;
- crescimento contínuo da fila Reactor.

---

# Critérios de Encerramento

O incidente poderá ser encerrado quando todos os critérios abaixo forem atendidos:

- utilização de memória inferior a 75% durante trinta minutos;
- ausência de reinicializações dos Pods;
- inexistência de novos alertas no Beacon;
- Dashboard Grafana estabilizado.

---

# Avaliação Técnica

O runbook atende aos principais requisitos definidos na atividade.

| Requisito | Status |
|-----------|:------:|
| Objetivo | ✅ |
| Procedimento estruturado | ✅ |
| Comandos executáveis | ✅ |
| Critérios de decisão | ✅ |
| Critérios de escalação | ✅ |
| Critérios de encerramento | ✅ |
| Aplicável ao plantão | ✅ |

---

# Observações

O documento apresenta uma estrutura organizada e objetiva, permitindo que profissionais de diferentes níveis de experiência executem os procedimentos de forma consistente.

As oportunidades de evolução serão apresentadas separadamente no arquivo **06-melhorias.md**, preservando integralmente o conteúdo original produzido durante o experimento.

---

⬅️ [Anterior](03-modelo.md) | 🏠 [Projeto](../README.md)  | 📑 [Sumário](../SUMMARY.md) | ➡️ [Próximo](05-justificativa.md)

---
