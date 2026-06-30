# Modelo de IA Utilizado

## Modelo

**GPT-4o**

---

# Objetivo da Escolha

Esta atividade exigia uma análise técnica envolvendo múltiplas fontes de informação para identificar a causa mais provável de um incidente crítico ocorrido em ambiente de produção.

O desafio consistia em correlacionar:

- histórico de deploy;
- métricas da aplicação;
- logs;
- utilização do banco PostgreSQL;
- comportamento do cluster Kubernetes;
- filas de processamento.

O modelo **GPT-4o** foi escolhido por sua elevada capacidade de raciocínio contextual, permitindo relacionar diferentes evidências e produzir uma análise estruturada semelhante à realizada por equipes de Site Reliability Engineering.

---

# Características Observadas

Durante o experimento foi possível observar que o modelo apresentou:

- excelente capacidade de correlação entre eventos;
- boa interpretação de métricas temporais;
- identificação consistente de hipóteses;
- organização lógica da investigação;
- recomendações objetivas.

---

# Relação com o Framework

O framework utilizado foi o **R-I-S-E (Role – Input – Steps – Expectation)**.

Cada componente contribuiu diretamente para a qualidade da resposta produzida:

- **Role:** definiu um especialista em SRE responsável pela investigação;
- **Input:** apresentou todas as evidências disponíveis;
- **Steps:** organizou a sequência investigativa;
- **Expectation:** especificou o formato completo do postmortem.

Essa estrutura permitiu que o modelo conduzisse uma investigação semelhante à utilizada em ambientes corporativos.

---

# Pontos Fortes

Entre os principais aspectos positivos observados destacam-se:

- excelente correlação entre métricas e logs;
- boa identificação da provável causa raiz;
- análise comparativa entre rollback e scaling;
- organização clara das hipóteses;
- documentação executiva adequada para tomada de decisão.

---

# Limitações

Embora o resultado tenha sido bastante consistente, ambientes corporativos normalmente complementam postmortems com análises quantitativas mais detalhadas, indicadores de confiabilidade, diagramas de arquitetura e planos formais de acompanhamento das ações corretivas.

Esses pontos serão apresentados posteriormente como sugestões de melhoria.

---

# Conclusão

O GPT-4o demonstrou excelente desempenho na análise de incidentes complexos, produzindo um postmortem técnico organizado, consistente e aderente às práticas adotadas por equipes modernas de Site Reliability Engineering.
