# Sugestões de Melhoria

## Objetivo

Este documento apresenta oportunidades de evolução identificadas após a análise do script produzido pelo modelo.

As sugestões apresentadas **não alteram o output original**, servindo apenas como recomendações para utilização em ambientes corporativos.

---

# 1. Lifecycle Policy do Amazon S3

A principal melhoria seria remover do script toda a lógica responsável pela exclusão de backups antigos.

Em produção recomenda-se configurar uma **Lifecycle Policy** diretamente no bucket S3.

Benefícios:

- redução da complexidade;
- menor consumo de chamadas da AWS CLI;
- menor risco operacional;
- gerenciamento centralizado da retenção.

---

# 2. Criptografia

Adicionar criptografia durante o upload.

Exemplos:

- SSE-S3
- SSE-KMS

---

# 3. Monitoramento

Enviar métricas para:

- Amazon CloudWatch
- Prometheus

Permitindo alertas automáticos em caso de falhas.

---

# 4. Notificações

Enviar notificações utilizando:

- Amazon SNS
- Slack
- Microsoft Teams
- E-mail

Sempre que ocorrer sucesso ou falha do backup.

---

# 5. Validação do Backup

Após o upload seria interessante validar:

- tamanho do arquivo;
- integridade;
- checksum;
- existência no bucket.

---

# 6. Execução Paralela

Caso existam diversos bancos, o script poderá ser adaptado para execução paralela utilizando GNU Parallel ou filas de processamento.

---

# 7. Segurança

Outras melhorias possíveis:

- princípio do menor privilégio na IAM Role;
- rotação automática de credenciais;
- auditoria via AWS CloudTrail.

---

# Resumo

| Área | Sugestão |
|------|----------|
| Backup | Lifecycle Policy |
| Segurança | SSE-KMS |
| Observabilidade | CloudWatch |
| Auditoria | CloudTrail |
| Notificações | SNS |
| Integridade | Checksum |

---

# Considerações Finais

O script produzido durante o experimento atende plenamente aos requisitos definidos na atividade.

As melhorias apresentadas representam práticas recomendadas para ambientes produtivos de grande porte e demonstram a evolução natural de uma solução inicialmente desenvolvida para fins acadêmicos.
