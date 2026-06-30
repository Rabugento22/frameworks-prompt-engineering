# Prompt Utilizado

## Framework

**B-A-B (Before – After – Bridge)**

---

# Estrutura

```text
Before

↓

After

↓

Bridge
```

---

# Prompt Original

## Before

O Deployment atualmente em produção apresenta práticas inadequadas para ambientes Kubernetes modernos, incluindo:

- apenas uma réplica;
- utilização da tag `latest`;
- segredos armazenados diretamente no manifesto;
- ausência de requests e limits;
- ausência de probes;
- ausência de SecurityContext;
- execução potencial como usuário root;
- ausência de estratégia de atualização.

---

## After

O Deployment deve atender aos padrões corporativos atuais:

- alta disponibilidade;
- imagem versionada;
- utilização de Kubernetes Secrets;
- requests e limits;
- livenessProbe;
- readinessProbe;
- SecurityContext restritivo;
- execução como usuário não-root;
- RollingUpdate;
- compatibilidade com Kubernetes 1.30+.

---

## Bridge

Transformar o manifesto atual no Deployment desejado, explicando resumidamente quais alterações foram realizadas e como cada uma contribui para aumentar a segurança, disponibilidade e confiabilidade do ambiente. :contentReference[oaicite:3]{index=3}

---

# Objetivo

O prompt foi estruturado para conduzir o modelo durante todo o processo de modernização do Deployment, reduzindo ambiguidades e garantindo aderência às boas práticas do Kubernetes.

---

# Benefícios Observados

A utilização do framework B-A-B proporcionou:

- excelente organização da transformação;
- clareza dos objetivos;
- comparação explícita entre estado atual e estado desejado;
- geração consistente do manifesto;
- facilidade para justificar cada alteração realizada.
