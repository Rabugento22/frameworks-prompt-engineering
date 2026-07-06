---

🏠 [Readme do Projeto](../README.md) | 📑 [Sumário](../SUMMARY.md) | 🧭 [Navegação](../NAVIGATION.md) | 🏠 [Readme da questão 04](README.md)

---

# Sugestões de Melhoria

## Objetivo

Este documento apresenta oportunidades de evolução identificadas após a análise da consulta SQL produzida pelo modelo.

As recomendações descritas aqui representam boas práticas para ambientes corporativos e **não alteram o resultado original do experimento**.

---

# 1. Validar a Regra de Negócio

A principal melhoria consiste em validar com a área de Produto o significado exato da expressão:

> **"últimos seis meses corridos"**

Possíveis interpretações:

- últimos 180 dias;
- últimos seis meses do calendário;
- mês atual mais cinco meses anteriores.

Essa definição impacta diretamente os resultados apresentados pelo relatório.

---

# 2. Utilização de CTEs

Caso a consulta evolua com novos cálculos, recomenda-se utilizar **Common Table Expressions (WITH)**.

Benefícios:

- maior organização;
- melhor legibilidade;
- facilidade de manutenção.

---

# 3. Índices

Para grandes volumes de dados recomenda-se criar índices sobre:

```sql
(status)

(completed_at)

(category)

(status, completed_at)
```

Esses índices reduzem significativamente o tempo de execução da consulta.

---

# 4. EXPLAIN ANALYZE

Antes da implantação recomenda-se validar o plano de execução utilizando:

```sql
EXPLAIN ANALYZE
```

Isso permite identificar:

- Full Table Scan;
- uso de índices;
- custo estimado;
- gargalos de desempenho.

---

# 5. Materialized Views

Caso o relatório seja executado frequentemente, uma alternativa interessante é utilizar **Materialized Views**.

Benefícios:

- redução do tempo de resposta;
- menor consumo de CPU;
- melhor desempenho para consultas analíticas.

---

# 6. Particionamento

Para tabelas contendo milhões de registros pode ser interessante utilizar particionamento por data.

Benefícios:

- consultas mais rápidas;
- menor custo de leitura;
- melhor escalabilidade.

---

# 7. Testes

Antes da utilização em produção recomenda-se validar cenários como:

- meses sem transações;
- categorias vazias;
- valores iguais a zero;
- registros futuros;
- transações canceladas.

---

# Resumo

| Área | Sugestão |
|------|----------|
| Regra de negócio | Validar definição dos últimos seis meses |
| Performance | Índices |
| Performance | EXPLAIN ANALYZE |
| Organização | CTE |
| Escalabilidade | Materialized View |
| Grandes volumes | Particionamento |

---

# Considerações Finais

A consulta produzida pelo modelo atende aos requisitos da atividade.

As melhorias apresentadas representam práticas recomendadas para ambientes produtivos, tornando a solução mais performática, escalável e aderente às melhores práticas de administração de bancos PostgreSQL.

---

⬅️ [Anterior](05-justificativas.md) | 🏠 [Projeto](../README.md)  | 📑 [Sumário](../SUMMARY.md) | ➡️ [Próximo](07-conclusao.md)

---
