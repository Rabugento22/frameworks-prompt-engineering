---

🏠 [Readme do Projeto](../README.md) | 📑 [Sumário](../SUMMARY.md) | 🧭 [Navegação](../NAVIGATION.md) | 🏠 [Readme da questão 07](README.md)

---

# Justificativa da Escolha do Framework

## Framework Utilizado

**R-I-S-E (Role – Input – Steps – Expectation)**

---

# Objetivo

O objetivo desta atividade foi aplicar um framework de Prompt Engineering capaz de orientar um Modelo de Linguagem (LLM) na elaboração de um runbook operacional para tratamento de incidentes em ambiente Kubernetes.

O desafio consistia em produzir um documento técnico que pudesse ser utilizado diretamente por equipes de plantão durante situações críticas.

---

# Motivo da Escolha

O framework **R-I-S-E** foi escolhido por estruturar o prompt de forma semelhante à maneira como procedimentos operacionais são definidos em equipes de Site Reliability Engineering (SRE).

Sua organização permite fornecer ao modelo:

- um papel especializado;
- todas as informações relevantes do ambiente;
- a sequência operacional esperada;
- o formato final da documentação.

Essa abordagem reduz ambiguidades e aumenta significativamente a qualidade do resultado produzido.

---

# Aplicação na Questão

Durante o experimento, cada componente do framework desempenhou uma função específica:

| Componente | Aplicação |
|------------|-----------|
| **Role** | Definiu o modelo como uma Líder SRE especialista em Kubernetes e resposta a incidentes. |
| **Input** | Forneceu detalhes completos sobre o ambiente, ferramentas, dependências, SLA e processo de escalação. |
| **Steps** | Organizou a sequência lógica das atividades de diagnóstico e mitigação. |
| **Expectation** | Determinou a geração de um runbook operacional completo, pronto para utilização em produção. |

---

# Benefícios Observados

Durante a atividade foram identificados diversos benefícios:

- documentação altamente estruturada;
- sequência lógica das verificações;
- comandos objetivos;
- critérios claros de decisão;
- facilidade de reutilização pelo time de plantão.

---

# Importância do Componente "Role"

O componente **Role** foi determinante para a qualidade do resultado.

Ao definir que o modelo deveria assumir o papel de uma Líder SRE experiente, a documentação passou a adotar uma linguagem operacional, objetiva e alinhada às práticas utilizadas em ambientes de missão crítica.

---

# Adequação ao Problema

Runbooks operacionais exigem organização, clareza e padronização.

O framework **R-I-S-E** mostrou-se especialmente adequado porque fornece contexto suficiente para que o modelo produza um procedimento consistente, reduzindo o risco de interpretações equivocadas durante um incidente.

---

# Conclusão

O framework **R-I-S-E** apresentou excelente aderência ao desafio proposto, permitindo gerar um runbook operacional claro, reutilizável e compatível com as práticas de Site Reliability Engineering adotadas em ambientes Kubernetes.

---

⬅️ [Anterior](04-output.md) | 🏠 [Projeto](../README.md)  | 📑 [Sumário](../SUMMARY.md) | ➡️ [Próximo](06-melhorias.md)

---
