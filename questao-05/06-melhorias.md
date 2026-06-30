# Sugestões de Melhoria

## Objetivo

Este documento apresenta oportunidades de evolução identificadas após a análise do Deployment produzido pelo modelo.

As recomendações apresentadas representam boas práticas utilizadas em ambientes Kubernetes corporativos e **não alteram o manifesto original gerado durante o experimento**.

---

# 1. PodDisruptionBudget (PDB)

Adicionar um **PodDisruptionBudget** para garantir disponibilidade mínima durante:

- manutenção dos nós;
- upgrades do cluster;
- operações de drenagem.

Exemplo:

```yaml
minAvailable: 2
```

---

# 2. topologySpreadConstraints

Distribuir os Pods entre diferentes nós e zonas de disponibilidade.

Benefícios:

- maior resiliência;
- tolerância a falhas;
- melhor distribuição da carga.

---

# 3. NetworkPolicy

Criar políticas de rede restringindo o tráfego entre namespaces e aplicações.

Benefícios:

- redução da superfície de ataque;
- comunicação apenas entre serviços autorizados;
- maior isolamento.

---

# 4. External Secrets Operator

Em vez de utilizar Kubernetes Secrets estáticos, integrar o cluster ao **AWS Secrets Manager** por meio do **External Secrets Operator**.

Benefícios:

- rotação automática de segredos;
- gerenciamento centralizado;
- maior segurança operacional.

---

# 5. ServiceAccount Dedicada

Evitar a utilização da ServiceAccount padrão.

Criar uma conta específica para a aplicação com permissões mínimas (princípio do menor privilégio).

---

# 6. Pod Security Standards

Aplicar políticas compatíveis com o perfil **Restricted**, incluindo:

- execução obrigatória como usuário não-root;
- capacidades Linux reduzidas;
- volumes controlados;
- restrições adicionais de segurança.

---

# 7. Observabilidade

Adicionar:

- Prometheus annotations;
- métricas da aplicação;
- logs estruturados;
- tracing distribuído (OpenTelemetry).

---

# 8. Recomendações do Professor

Conforme destacado na atividade, ambientes produtivos podem evoluir ainda mais com:

- PodDisruptionBudget;
- topologySpreadConstraints;
- NetworkPolicy;
- integração com External Secrets Operator e AWS Secrets Manager. :contentReference[oaicite:0]{index=0}

---

# Resumo

| Área | Sugestão |
|------|----------|
| Alta disponibilidade | PodDisruptionBudget |
| Distribuição | topologySpreadConstraints |
| Segurança | NetworkPolicy |
| Secrets | External Secrets Operator |
| IAM | ServiceAccount dedicada |
| Hardening | Pod Security Standards |
| Observabilidade | Prometheus/OpenTelemetry |

---

# Considerações Finais

O Deployment produzido pelo modelo atende plenamente aos requisitos da atividade.

As melhorias apresentadas representam práticas normalmente adotadas em clusters Kubernetes corporativos de maior maturidade operacional, contribuindo para aumentar segurança, disponibilidade, governança e observabilidade.
