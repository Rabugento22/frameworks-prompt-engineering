#!/usr/bin/env bash

###############################################################################
# Projeto : Prompt Engineering Frameworks
# Autor   : Rubens Renato e Silva
# Objetivo: Validar a estrutura do projeto e gerar o pacote de distribuição.
###############################################################################

set -euo pipefail

PROJECT_DIR="$(basename "$(pwd)")"
VERSION="v1.0.0"
PACKAGE_NAME="${PROJECT_DIR}-${VERSION}.tar.gz"

echo "============================================================"
echo " Prompt Engineering Frameworks"
echo " Build Script"
echo "============================================================"

echo
echo "[1/6] Removendo pacote anterior..."

rm -f "${PACKAGE_NAME}"

echo "OK"

echo
echo "[2/6] Validando arquivos obrigatórios..."

required_files=(
    "README.md"
    "LICENSE"
    "CHANGELOG.md"
    "CONTRIBUTING.md"
    "CODE_OF_CONDUCT.md"
    "frameworks.md"
    "framework-comparison.md"
    "decision-tree.md"
    "references.md"
    "lessons-learned.md"
)

for file in "${required_files[@]}"; do
    if [[ ! -f "${file}" ]]; then
        echo
        echo "ERRO: Arquivo obrigatório não encontrado:"
        echo "      ${file}"
        exit 1
    fi
done

echo "OK"

echo
echo "[3/6] Validando estrutura do projeto..."

required_dirs=(
    "assets"
    "questao-01"
    "questao-02"
    "questao-03"
    "questao-04"
    "questao-05"
    "questao-06"
    "questao-07"
    "questao-08"
)

for dir in "${required_dirs[@]}"; do
    if [[ ! -d "${dir}" ]]; then
        echo
        echo "ERRO: Diretório obrigatório não encontrado:"
        echo "      ${dir}"
        exit 1
    fi
done

echo "OK"

echo
echo "[4/6] Gerando pacote..."

(
    cd ..
    tar \
        --exclude=".git" \
        --exclude="*.tar.gz" \
        -czf "${PACKAGE_NAME}" \
        "${PROJECT_DIR}"
)

mv "../${PACKAGE_NAME}" .

echo "OK"

echo
echo "[5/6] Validando pacote gerado..."

tar -tzf "${PACKAGE_NAME}" >/dev/null

echo "OK"

echo
echo "[6/6] Informações do pacote"

echo
echo "Arquivo : ${PACKAGE_NAME}"
du -h "${PACKAGE_NAME}"

echo
echo "============================================================"
echo " Build finalizado com sucesso!"
echo "============================================================"
