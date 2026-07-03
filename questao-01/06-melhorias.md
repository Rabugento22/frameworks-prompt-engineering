---

🏠 [Readme do Projeto](../README.md) | 📑 [Sumário](../SUMMARY.md) | 🧭 [Navegação](../NAVIGATION.md) | 🏠 [Readme da questão 01](README.md)

---

# Sugestões de Melhoria

## Objetivo

Este documento apresenta oportunidades de evolução identificadas durante a análise da resposta produzida pelo modelo de IA.

É importante destacar que **nenhuma das sugestões apresentadas altera o output original do experimento**. O objetivo é apenas demonstrar como a solução poderia ser aprimorada caso fosse utilizada em um ambiente corporativo.

---

# Visão Geral

O Dockerfile gerado pelo modelo apresentou uma boa qualidade técnica, atendendo aos principais requisitos definidos na atividade.

Entretanto, ambientes corporativos normalmente possuem requisitos adicionais relacionados à segurança, governança, desempenho e observabilidade.

As melhorias descritas a seguir refletem boas práticas amplamente adotadas na indústria.

---

# 1. Multi-Stage Build

## Situação Atual

O Dockerfile utiliza apenas uma etapa de construção.

## Sugestão

Empregar **Multi-Stage Build** para separar o ambiente de compilação do ambiente de execução.

### Benefícios

- redução do tamanho final da imagem;
- menor superfície de ataque;
- eliminação de arquivos temporários;
- melhor organização do processo de build.

---

# 2. Imagens Distroless

## Situação Atual

Foi utilizada a imagem:

```dockerfile
python:3.12-slim
```

## Sugestão

Avaliar a utilização de imagens **Distroless** em ambientes de produção.

### Benefícios

- redução significativa da superfície de ataque;
- menor quantidade de pacotes instalados;
- aumento da segurança.

---

# 3. Fixação de Versões

## Situação Atual

O Dockerfile instala as dependências declaradas no arquivo `requirements.txt`.

## Sugestão

Garantir que todas as bibliotecas estejam com versões explicitamente definidas.

Exemplo:

```text
Flask==3.1.0
Gunicorn==23.0.0
Requests==2.32.3
```

### Benefícios

- builds reproduzíveis;
- previsibilidade;
- redução de incompatibilidades.

---

# 4. Escaneamento de Vulnerabilidades

## Sugestão

Integrar o processo de build com ferramentas de análise de segurança.

Exemplos:

- Trivy;
- Grype;
- Docker Scout;
- Snyk.

### Benefícios

- identificação antecipada de vulnerabilidades;
- conformidade com políticas de segurança;
- melhoria do processo de CI/CD.

---

# 5. Software Bill of Materials (SBOM)

## Sugestão

Gerar automaticamente um SBOM durante o processo de build.

### Benefícios

- rastreabilidade de componentes;
- atendimento a requisitos de auditoria;
- conformidade com frameworks de segurança.

---

# 6. Assinatura de Imagens

## Sugestão

Assinar as imagens antes da publicação em um registry.

Ferramentas recomendadas:

- Cosign;
- Notation.

### Benefícios

- garantia de integridade;
- autenticação da origem da imagem;
- maior confiança na cadeia de distribuição.

---

# 7. Pipeline de CI/CD

## Sugestão

Automatizar a construção e validação da imagem utilizando pipelines.

Exemplo de etapas:

```text
Commit

↓

Build

↓

Testes

↓

Scan de Segurança

↓

Assinatura

↓

Publicação

↓

Deploy
```

### Benefícios

- redução de erros manuais;
- padronização;
- rastreabilidade;
- automação.

---

# 8. Observabilidade

## Sugestão

Adicionar recursos voltados ao monitoramento da aplicação.

Exemplos:

- métricas Prometheus;
- logs estruturados;
- tracing distribuído;
- dashboards Grafana.

---

# 9. Healthcheck

Embora o Dockerfile já possua um `HEALTHCHECK`, recomenda-se que a aplicação disponibilize um endpoint específico para monitoramento, como:

```text
/health
```

ou

```text
/ready
```

Isso evita que o monitoramento dependa da lógica principal da aplicação.

---

# 10. Boas Práticas para Kubernetes

Caso a aplicação seja implantada em Kubernetes, recomenda-se complementar a solução com:

- `readinessProbe`;
- `livenessProbe`;
- limites de CPU;
- limites de memória;
- requests de recursos;
- políticas de segurança (`SecurityContext`);
- execução como usuário não privilegiado.

---

# Resumo das Melhorias

| Categoria | Situação Atual | Sugestão |
|-----------|----------------|----------|
| Build | Funcional | Multi-Stage Build |
| Segurança | Boa | Distroless + Scan |
| Dependências | Adequadas | Fixação de versões |
| Observabilidade | Parcial | Métricas e Tracing |
| Supply Chain | Não contemplada | SBOM + Assinatura |
| Kubernetes | Compatível | Probes + Recursos |

---

# Considerações Finais

O Dockerfile produzido durante o experimento atende plenamente aos objetivos propostos pela atividade acadêmica.

As melhorias apresentadas neste documento representam práticas recomendadas para ambientes corporativos de maior criticidade e foram incluídas apenas como complemento técnico.

Dessa forma, preserva-se integralmente o resultado original do experimento, ao mesmo tempo em que se demonstra conhecimento sobre possíveis evoluções para cenários reais de produção.

---

⬅️ [Anterior](06-justificativas.md) | 🏠 [Projeto](../README.md)  | 📑 [Sumário](../SUMMARY.md) | ➡️ [Próximo](07-conclusao.md)

---
