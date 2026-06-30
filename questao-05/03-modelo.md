# Modelo de IA Utilizado

## Modelo

**GPT-4o (OpenAI)**

---

# Objetivo da Escolha

Esta atividade exigia a modernização de um Deployment Kubernetes legado, aplicando práticas recomendadas de segurança, disponibilidade e operação para ambientes corporativos.

O desafio envolvia conhecimentos relacionados a:

- Kubernetes;
- Deployments;
- Segurança de Containers;
- Rolling Updates;
- Kubernetes Secrets;
- Resource Management;
- Observabilidade;
- Hardening de workloads.

O modelo **GPT-4o** foi escolhido devido à sua elevada capacidade na geração e refatoração de manifests Kubernetes, além da excelente interpretação de requisitos técnicos complexos. Conforme descrito na atividade, o modelo demonstrou grande consistência na aplicação de padrões modernos de segurança e operação. :contentReference[oaicite:0]{index=0}

---

# Características Observadas

Durante o experimento foi possível observar que o modelo apresentou:

- excelente organização do manifesto;
- aplicação consistente das boas práticas do Kubernetes;
- correta utilização dos objetos da API;
- configuração adequada dos recursos de segurança;
- elevada legibilidade do YAML produzido.

---

# Relação com o Framework

O framework utilizado foi o **B-A-B (Before – After – Bridge)**.

O modelo respondeu corretamente às três etapas:

- **Before:** identificou as limitações do Deployment legado;
- **After:** compreendeu o estado desejado com padrões modernos;
- **Bridge:** realizou corretamente a transformação entre os dois estados.

Essa estrutura facilitou a evolução completa do manifesto.

---

# Pontos Fortes

Os principais aspectos positivos observados foram:

- aumento da disponibilidade através de múltiplas réplicas;
- substituição da tag `latest`;
- externalização dos segredos utilizando Kubernetes Secrets;
- inclusão de requests e limits;
- configuração de probes;
- utilização de SecurityContext restritivo;
- execução como usuário não-root;
- estratégia RollingUpdate.

---

# Limitações

Embora o Deployment produzido esteja bastante aderente às boas práticas atuais, ambientes corporativos normalmente possuem requisitos adicionais relacionados à segurança, governança e observabilidade.

Por esse motivo, recomenda-se uma revisão técnica antes da implantação em produção.

---

# Conclusão

O GPT-4o apresentou excelente desempenho na modernização de workloads Kubernetes, produzindo um manifesto organizado, seguro e compatível com ambientes produtivos modernos.
