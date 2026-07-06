---

🏠 [Readme do Projeto](../README.md) | 📑 [Sumário](../SUMMARY.md) | 🧭 [Navegação](../NAVIGATION.md) | 🏠 [Readme da questão 08](README.md)

---

# Sugestões de Melhoria

## Objetivo

Este documento apresenta oportunidades de evolução identificadas após a análise do postmortem produzido pelo modelo.

As sugestões apresentadas representam boas práticas adotadas em organizações com elevada maturidade operacional e **não modificam o conteúdo original do experimento**.

---

# 1. Linha do Tempo Visual

Adicionar uma representação gráfica da evolução do incidente.

Exemplo:

```text
Deploy

↓

Latência ↑

↓

Erros ↑

↓

Pool Saturado

↓

Circuit Breaker

↓

Backlog

↓

Rollback
```

Benefícios:

- melhor visualização da sequência de eventos;
- maior facilidade durante revisões pós-incidente.

---

# 2. Diagrama de Causa e Efeito

Complementar o postmortem com um diagrama identificando relações entre:

- deploy;
- pool de conexões;
- banco de dados;
- filas;
- aplicação.

---

# 3. Técnica dos Cinco Porquês

Aplicar a metodologia **5 Whys** para aprofundar a investigação da causa raiz.

Essa abordagem ajuda a identificar fatores organizacionais além das causas técnicas imediatas.

---

# 4. Plano de Ação (5W2H)

Estruturar todas as ações corretivas utilizando:

- What;
- Why;
- Where;
- When;
- Who;
- How;
- How Much.

Isso facilita o acompanhamento das atividades após o encerramento do incidente.

---

# 5. Indicadores DORA

Adicionar métricas como:

- Lead Time;
- Deployment Frequency;
- Change Failure Rate;
- Mean Time to Recovery (MTTR).

Esses indicadores auxiliam na avaliação contínua da maturidade operacional.

---

# 6. Dashboard de Evidências

Criar um painel contendo:

- utilização de CPU;
- memória;
- conexões PostgreSQL;
- backlog das filas;
- taxa de erros;
- latência.

Isso facilita futuras análises comparativas.

---

# 7. Plano de Validação Pós-Rollback

Definir verificações obrigatórias após o retorno para a versão anterior, incluindo:

- estabilização da latência;
- redução da taxa de erros;
- normalização das conexões;
- redução do backlog;
- encerramento dos alertas.

---

# 8. Revisão do Processo de Deploy

Adicionar validações como:

- testes de carga automatizados;
- análise de regressão;
- validação do consumo de conexões;
- implantação gradual (Canary ou Blue/Green).

---

# Resumo

| Área | Sugestão |
|------|----------|
| Visualização | Linha do tempo |
| Investigação | Cinco Porquês |
| Planejamento | 5W2H |
| Observabilidade | Dashboard |
| Métricas | DORA |
| Governança | Revisão do Deploy |
| Validação | Checklist Pós-Rollback |
| Arquitetura | Diagrama de Causa e Efeito |

---

# Considerações Finais

O postmortem produzido atende aos requisitos definidos na atividade.

As melhorias apresentadas representam práticas amplamente utilizadas em ambientes corporativos modernos, contribuindo para fortalecer a prevenção de recorrências e a evolução contínua dos processos de resposta a incidentes.

---

⬅️ [Anterior](05-justificativas.md) | 🏠 [Projeto](../README.md)  | 📑 [Sumário](../SUMMARY.md) | ➡️ [Próximo](07-conclusao.md)

---
