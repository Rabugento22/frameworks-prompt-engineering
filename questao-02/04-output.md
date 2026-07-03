---

🏠 [Readme do Projeto](../README.md) | 📑 [Sumário](../SUMMARY.md) | 🧭 [Navegação](../NAVIGATION.md) | 🏠 [Readme da questão 02](README.md)

---

# questao-02/04-output.md

# Output Produzido pelo Modelo

## Objetivo

Este documento registra o output original produzido pelo modelo de IA durante o experimento.

O conteúdo foi preservado conforme apresentado na atividade, recebendo apenas ajustes de formatação para melhorar sua leitura no GitHub. :contentReference[oaicite:1]{index=1}

---

# Modelo Utilizado

**Claude Sonnet 4**

---

# Script Gerado

```bash
#!/bin/bash

set -euo pipefail

DB_HOST="ledger-db.internal.hvt.io"
DB_PORT="5432"
DB_NAME="ledger_prod"
DB_USER="backup_user"

BACKUP_DIR="/var/backups/ledger"
LOG_FILE="/var/log/ledger-backup.log"

S3_BUCKET="s3://hvt-ledger-backups"
AWS_REGION="us-east-1"

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="${DB_NAME}_${TIMESTAMP}.sql"
COMPRESSED_FILE="${BACKUP_FILE}.gz"

log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | tee -a "$LOG_FILE"
}

check_dependencies() {

    for cmd in pg_dump gzip aws
    do

        if ! command -v "$cmd" >/dev/null 2>&1
        then

            log "ERRO: Dependência não encontrada: $cmd"
            exit 1

        fi

    done

}

cleanup_old_backups() {

    log "Removendo backups antigos (>30 dias) do S3"

    aws s3 ls "$S3_BUCKET/" --recursive | while read -r line
    do

        createDate=$(echo "$line" | awk '{print $1" "$2}')
        fileName=$(echo "$line" | awk '{print $4}')

        if [[ -n "$fileName" ]]
        then

            fileDate=$(date -d "$createDate" +%s)
            now=$(date +%s)

            ageDays=$(( (now - fileDate) / 86400 ))

            if (( ageDays > 30 ))
            then

                aws s3 rm "${S3_BUCKET}/${fileName}"
                log "Backup removido: ${fileName}"

            fi

        fi

    done

}

main() {

    mkdir -p "$BACKUP_DIR"

    check_dependencies

    log "Iniciando backup do banco ${DB_NAME}"

    pg_dump \
        -h "$DB_HOST" \
        -p "$DB_PORT" \
        -U "$DB_USER" \
        "$DB_NAME" \
        > "${BACKUP_DIR}/${BACKUP_FILE}"

    log "Dump concluído"

    gzip "${BACKUP_DIR}/${BACKUP_FILE}"

    log "Compactação concluída"

    aws s3 cp \
        "${BACKUP_DIR}/${COMPRESSED_FILE}" \
        "${S3_BUCKET}/" \
        --region "$AWS_REGION"

    log "Upload para S3 concluído"

    cleanup_old_backups

    log "Backup finalizado com sucesso"

}

main
```

---

# Explicação Produzida pelo Modelo

O modelo destacou os seguintes pontos:

- utilização de `set -euo pipefail`;
- validação prévia das dependências;
- parâmetros centralizados em variáveis;
- geração de arquivos utilizando timestamp;
- upload automático para o Amazon S3;
- retenção de backups por 30 dias;
- registro completo em log;
- encerramento automático em caso de erro. :contentReference[oaicite:2]{index=2}

---

# Análise Técnica

O script atende integralmente aos requisitos definidos na atividade.

| Requisito | Status |
|-----------|:------:|
| pg_dump | ✅ |
| gzip | ✅ |
| AWS CLI | ✅ |
| Upload S3 | ✅ |
| Logs | ✅ |
| Timestamp | ✅ |
| Tratamento de erros | ✅ |
| Cron | ✅ |
| Validação de dependências | ✅ |

---

# Observações

Este documento preserva o output original do experimento.

As sugestões de evolução identificadas durante a análise serão apresentadas separadamente no arquivo **06-melhorias.md**, preservando integralmente a solução produzida pelo modelo.

---

⬅️ [Anterior](03-modelo.md) | 🏠 [Projeto](../README.md)  | 📑 [Sumário](../SUMMARY.md) | ➡️ [Próximo](05-justificativa.md)

---
