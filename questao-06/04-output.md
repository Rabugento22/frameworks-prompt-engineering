# Output Produzido pelo Modelo

## Objetivo

Este documento registra o módulo Terraform produzido pelo modelo durante a execução da atividade.

O conteúdo foi preservado conforme apresentado no experimento original, recebendo apenas ajustes de formatação em Markdown para facilitar sua leitura e documentação no GitHub.

---

# Modelo Utilizado

**Gemini 2.5 Pro**

---

# Arquivo `variables.tf`

```terraform
variable "bucket_name" {
  description = "Nome lógico do bucket"
  type        = string
}

variable "owner" {
  description = "Responsável pelo recurso"
  type        = string
}

variable "cost_center" {
  description = "Centro de custo"
  type        = string
}

variable "environment" {
  description = "Ambiente"
  type        = string
}

variable "log_bucket_name" {
  description = "Bucket de logs"
  type        = string
}
```

---

# Arquivo `main.tf`

```terraform
locals {
  common_tags = {
    Owner       = var.owner
    CostCenter  = var.cost_center
    Environment = var.environment
  }
}

resource "aws_s3_bucket" "this" {

  bucket = "hvt-${var.bucket_name}-${var.environment}"

  tags = merge(
    local.common_tags,
    {
      Name = "hvt-${var.bucket_name}-${var.environment}"
    }
  )
}

resource "aws_s3_bucket_versioning" "this" {

  bucket = aws_s3_bucket.this.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "this" {

  bucket = aws_s3_bucket.this.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_public_access_block" "this" {

  bucket = aws_s3_bucket.this.id

  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_logging" "this" {

  bucket        = aws_s3_bucket.this.id
  target_bucket = var.log_bucket_name
  target_prefix = "access-logs/"
}
```

---

# Arquivo `outputs.tf`

```terraform
output "bucket_id" {
  description = "ID do bucket"
  value       = aws_s3_bucket.this.id
}

output "bucket_arn" {
  description = "ARN do bucket"
  value       = aws_s3_bucket.this.arn
}

output "bucket_name" {
  description = "Nome do bucket"
  value       = aws_s3_bucket.this.bucket
}
```

---

# Exemplo de Uso

```terraform
module "application_bucket" {

  source = "./modules/s3"

  bucket_name    = "application-data"

  owner          = "platform-team"

  cost_center    = "IT-001"

  environment    = "production"

  log_bucket_name = "hvt-central-logs-production"
}
```

---

# Avaliação Técnica

O módulo atende aos requisitos definidos pela atividade.

| Requisito | Status |
|-----------|:------:|
| Prefixo corporativo | ✅ |
| Tags obrigatórias | ✅ |
| SSE-S3 | ✅ |
| Versionamento | ✅ |
| Block Public Access | ✅ |
| Logging | ✅ |
| Variables documentadas | ✅ |
| Estrutura reutilizável | ✅ |

---

# Observações

O módulo apresenta uma estrutura clara, organizada e compatível com boas práticas de Infrastructure as Code.

A separação entre os arquivos facilita a reutilização por diferentes equipes e promove maior padronização na criação de buckets Amazon S3.

As oportunidades de evolução serão apresentadas separadamente no arquivo **06-melhorias.md**, preservando integralmente o módulo original produzido durante o experimento.
