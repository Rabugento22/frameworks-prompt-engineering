---

🏠 [Readme do Projeto](../README.md) | 📑 [Sumário](../SUMMARY.md) | 🧭 [Navegação](../NAVIGATION.md) | 🏠 [Readme da questão 08](README.md)

---

# Justificativa da Escolha do Framework

## Framework Utilizado

**R-I-S-E (Role – Input – Steps – Expectation)**

---

# Objetivo

O objetivo desta atividade foi aplicar um framework de Prompt Engineering capaz de orientar um Modelo de Linguagem (LLM) durante a investigação de um incidente crítico em ambiente de produção.

O desafio exigia correlacionar diversas evidências técnicas para produzir um postmortem preliminar capaz de apoiar a tomada de decisão entre realizar um rollback da aplicação ou ampliar temporariamente a infraestrutura.

---

# Motivo da Escolha

O framework **R-I-S-E** foi escolhido por organizar o processo investigativo de maneira semelhante ao fluxo adotado por equipes de Site Reliability Engineering (SRE).

Sua estrutura permite fornecer ao modelo:

- um papel especializado;
- todas as evidências disponíveis;
- uma sequência lógica de investigação;
- um formato claramente definido para a resposta.

Essa organização reduz ambiguidades e aumenta significativamente a consistência da análise produzida.

---

# Aplicação na Questão

Durante o experimento, cada componente do framework desempenhou uma função específica.

| Componente | Aplicação |
|------------|-----------|
| **Role** | Definiu o modelo como um Principal SRE especializado em investigação de incidentes distribuídos. |
| **Input** | Apresentou métricas, logs, alterações do deploy, estado do cluster, banco de dados e filas. |
| **Steps** | Organizou toda a sequência investigativa, desde a construção da linha do tempo até a recomendação final. |
| **Expectation** | Definiu a estrutura completa do postmortem técnico esperado. |

---

# Benefícios Observados

Durante a atividade foram identificados diversos benefícios:

- investigação altamente estruturada;
- excelente correlação entre diferentes fontes de informação;
- identificação consistente das hipóteses;
- análise objetiva da causa raiz;
- documentação executiva pronta para apoio à tomada de decisão.

---

# Comparação com Outros Frameworks

## Alternativa 1 — B-A-B

O framework **Before – After – Bridge** poderia ser utilizado para explicar a evolução do incidente.

### Vantagens

- excelente narrativa temporal;
- facilidade para demonstrar regressões;
- boa visualização da mudança de estado do sistema.

### Limitações

Não incentiva uma investigação detalhada baseada em evidências técnicas.

Também não organiza explicitamente hipóteses, critérios de decisão ou análise da causa raiz.

Por esse motivo mostrou-se menos adequado para um incidente crítico em andamento.

---

## Alternativa 2 — T-A-G

O framework **Task – Action – Goal** permitiria uma abordagem mais simples.

### Vantagens

- estrutura objetiva;
- prompt curto;
- rápida elaboração.

### Limitações

Não fornece profundidade suficiente para correlacionar métricas, logs, deploys e infraestrutura.

Consequentemente produziria uma análise menos completa.

---

# Adequação ao Problema

A investigação apresentada envolvia:

- múltiplas fontes de evidência;
- alterações recentes de software;
- banco de dados;
- filas;
- métricas;
- logs;
- infraestrutura Kubernetes.

O framework **R-I-S-E** mostrou-se o mais adequado por organizar todas essas informações antes da geração da análise.

---

# Conclusão

O framework **R-I-S-E** apresentou excelente aderência ao problema proposto.

Sua estrutura permitiu produzir um postmortem técnico consistente, baseado em evidências e compatível com os processos utilizados por equipes modernas de Site Reliability Engineering.

---

⬅️ [Anterior](04-output.md) | 🏠 [Projeto](../README.md)  | 📑 [Sumário](../SUMMARY.md) | ➡️ [Próximo](06-melhorias.md)

---
