# Sugestões de Melhoria

## Objetivo

Este documento apresenta oportunidades de evolução identificadas após a análise do relatório produzido pelo modelo.

As recomendações aqui descritas representam boas práticas adotadas em ambientes corporativos e **não alteram o conteúdo original do experimento**.

---

# 1. AWS Cost Explorer

Complementar a análise utilizando dados históricos obtidos por meio do **AWS Cost Explorer**.

### Benefícios

- análise de tendências;
- identificação de sazonalidade;
- previsão de custos futuros;
- comparação entre períodos.

---

# 2. AWS Compute Optimizer

Utilizar o **AWS Compute Optimizer** para validar automaticamente recomendações de rightsizing.

### Benefícios

- recomendações baseadas em métricas reais;
- maior precisão na redução de custos;
- menor risco de subdimensionamento.

---

# 3. AWS Trusted Advisor

Integrar a análise às recomendações do **AWS Trusted Advisor**, considerando aspectos como:

- recursos ociosos;
- instâncias subutilizadas;
- armazenamento não utilizado;
- boas práticas de arquitetura.

---

# 4. KPIs de FinOps

Incluir indicadores de desempenho financeiro, tais como:

- custo por workload;
- custo por ambiente;
- percentual de economia alcançada;
- utilização média de recursos;
- custo por aplicação.

Esses indicadores facilitam o acompanhamento contínuo das iniciativas de otimização.

---

# 5. Dashboards Executivos

Disponibilizar os resultados em painéis executivos utilizando ferramentas como:

- Amazon QuickSight;
- Grafana;
- Power BI.

Isso melhora a comunicação com gestores e facilita o acompanhamento dos resultados.

---

# 6. Automação

Automatizar a coleta e análise dos dados por meio de pipelines periódicos, reduzindo o esforço manual e permitindo monitoramento contínuo.

---

# 7. Recomendações do Professor

Conforme destacado na atividade, futuras análises podem considerar informações adicionais, como:

- utilização de CPU;
- consumo de memória;
- IOPS dos volumes;
- distribuição dos objetos no Amazon S3.

Esses dados tornam as recomendações mais precisas e reduzem o risco de decisões baseadas apenas em custos financeiros. :contentReference[oaicite:0]{index=0}

---

# Resumo

| Categoria | Sugestão |
|-----------|----------|
| FinOps | KPIs financeiros |
| Custos | AWS Cost Explorer |
| Rightsizing | Compute Optimizer |
| Boas práticas | Trusted Advisor |
| Visualização | QuickSight / Grafana |
| Automação | Pipelines periódicos |

---

# Considerações Finais

O relatório produzido pelo modelo atende aos objetivos da atividade e demonstra boa capacidade analítica.

As melhorias apresentadas ampliam a maturidade da solução, aproximando-a das práticas de governança financeira normalmente adotadas em ambientes corporativos.
