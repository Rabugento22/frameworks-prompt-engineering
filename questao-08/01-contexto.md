# Contexto da Questão 08

## Cenário

Ambientes distribuídos executando aplicações críticas frequentemente geram grande quantidade de informações durante incidentes operacionais.

Para identificar corretamente a causa raiz de um problema é necessário correlacionar diferentes evidências provenientes de métricas, logs, alterações de software e estado da infraestrutura.

Nesta atividade foi apresentado um incidente ocorrido após a implantação de uma nova versão da aplicação **Chronos API**, exigindo uma análise técnica estruturada.

---

# Problema

O principal desafio consistia em determinar se a degradação observada estava relacionada:

- ao aumento natural da carga;
- à capacidade do banco de dados;
- à infraestrutura Kubernetes;
- ou às alterações introduzidas durante o deploy da versão **v2.48.0**.

Com base nessa investigação seria necessário recomendar uma ação imediata entre:

- rollback da aplicação;
- escalonamento emergencial da infraestrutura.

---

# Objetivo

Construir um prompt capaz de orientar um Modelo de Linguagem na elaboração de um postmortem técnico preliminar contendo evidências, hipóteses e recomendações para apoiar a tomada de decisão do CTO.

---

# Competências Desenvolvidas

Durante esta atividade foram aplicados conhecimentos relacionados a:

- Site Reliability Engineering (SRE);
- Kubernetes;
- Amazon EKS;
- PostgreSQL;
- Observabilidade;
- AWS SQS;
- Engenharia de Prompt;
- Análise de Incidentes.

---

# Relação com o Framework

O framework **R-I-S-E** mostrou-se particularmente adequado porque organiza a investigação em uma sequência lógica, permitindo que o modelo correlacione diferentes evidências antes de formular uma conclusão.
