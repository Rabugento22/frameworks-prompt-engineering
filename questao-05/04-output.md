# Output Produzido pelo Modelo

## Objetivo

Este documento registra o manifesto Kubernetes produzido pelo modelo durante o experimento.

O conteúdo foi preservado conforme apresentado na atividade original, recebendo apenas ajustes de formatação em Markdown para facilitar sua leitura e documentação no GitHub. :contentReference[oaicite:1]{index=1}

---

# Modelo Utilizado

**GPT-4o**

---

# Manifest Kubernetes Gerado

```yaml
apiVersion: apps/v1
kind: Deployment

metadata:
  name: chronos-api
  namespace: production

spec:

  replicas: 3

  strategy:

    type: RollingUpdate

    rollingUpdate:
      maxUnavailable: 1
      maxSurge: 1

  selector:

    matchLabels:
      app: chronos-api

  template:

    metadata:

      labels:
        app: chronos-api

    spec:

      containers:

      - name: api

        image: chronos-api:v2.48.0

        ports:

        - containerPort: 8080

        env:

        - name: DB_PASSWORD

          valueFrom:

            secretKeyRef:

              name: chronos-api-secret

              key: db-password

        - name: JWT_SECRET

          valueFrom:

            secretKeyRef:

              name: chronos-api-secret

              key: jwt-secret

        resources:

          requests:

            cpu: "250m"

            memory: "512Mi"

          limits:

            cpu: "1000m"

            memory: "1Gi"

        livenessProbe:

          httpGet:

            path: /health

            port: 8080

          initialDelaySeconds: 30

          periodSeconds: 15

        readinessProbe:

          httpGet:

            path: /ready

            port: 8080

          initialDelaySeconds: 10

          periodSeconds: 10

        securityContext:

          runAsNonRoot: true

          runAsUser: 20000

          runAsGroup: 20000

          allowPrivilegeEscalation: false

          readOnlyRootFilesystem: true

      securityContext:

        seccompProfile:

          type: RuntimeDefault
```

---

# Melhorias Implementadas

O modelo realizou as seguintes alterações:

- aumento do número de réplicas para três;
- substituição da imagem `latest` por uma versão específica;
- remoção das credenciais do manifesto;
- utilização de Kubernetes Secret;
- inclusão de requests e limits;
- configuração de livenessProbe;
- configuração de readinessProbe;
- execução como usuário não-root;
- desabilitação de privilege escalation;
- utilização de sistema de arquivos somente leitura;
- configuração do perfil `RuntimeDefault` do seccomp;
- implementação da estratégia RollingUpdate. :contentReference[oaicite:2]{index=2}

---

# Avaliação Técnica

O manifesto atende aos requisitos definidos na atividade.

| Requisito | Status |
|-----------|:------:|
| Alta disponibilidade | ✅ |
| RollingUpdate | ✅ |
| Secrets | ✅ |
| Requests/Limits | ✅ |
| Liveness Probe | ✅ |
| Readiness Probe | ✅ |
| SecurityContext | ✅ |
| Usuário não-root | ✅ |
| Imagem versionada | ✅ |
| Compatível com Kubernetes 1.30+ | ✅ |

---

# Observações

O Deployment gerado apresenta uma evolução significativa em relação ao manifesto original, incorporando práticas modernas de segurança, disponibilidade e gerenciamento de recursos.

As sugestões de evolução para ambientes corporativos de maior maturidade serão apresentadas separadamente no arquivo **06-melhorias.md**, preservando integralmente o output produzido durante o experimento.
