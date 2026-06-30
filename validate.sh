#!/usr/bin/env bash

###############################################################################
# Projeto : Prompt Engineering Frameworks
# Autor   : Rubens Renato e Silva
# Objetivo: Validar a estrutura do projeto antes da geração do pacote.
###############################################################################

set -euo pipefail

GREEN="\033[0;32m"
RED="\033[0;31m"
YELLOW="\033[1;33m"
NC="\033[0m"

TOTAL_ERRORS=0
TOTAL_WARNINGS=0

echo "============================================================"
echo " Prompt Engineering Frameworks"
echo " Validation Script"
echo "============================================================"

echo

###############################################################################
# Arquivos obrigatórios
###############################################################################

required_files=(
    README.md
    LICENSE
    CHANGELOG.md
    CONTRIBUTING.md
    CODE_OF_CONDUCT.md
    frameworks.md
    framework-comparison.md
    decision-tree.md
    references.md
    lessons-learned.md
    build.sh
)

echo "[1/6] Validando arquivos obrigatórios..."

for file in "${required_files[@]}"; do
    if [[ -f "$file" ]]; then
        echo -e "${GREEN}✔${NC} $file"
    else
        echo -e "${RED}✘${NC} $file"
        ((TOTAL_ERRORS++))
    fi
done

echo

###############################################################################
# Diretórios
###############################################################################

required_dirs=(
    assets
    questao-01
    questao-02
    questao-03
    questao-04
    questao-05
    questao-06
    questao-07
    questao-08
)

echo "[2/6] Validando diretórios..."

for dir in "${required_dirs[@]}"; do
    if [[ -d "$dir" ]]; then
        echo -e "${GREEN}✔${NC} $dir"
    else
        echo -e "${RED}✘${NC} $dir"
        ((TOTAL_ERRORS++))
    fi
done

echo

###############################################################################
# README das questões
###############################################################################

echo "[3/6] Validando README das questões..."

for i in {1..8}; do

    DIR=$(printf "questao-%02d" "$i")

    if [[ -f "${DIR}/README.md" ]]; then
        echo -e "${GREEN}✔${NC} ${DIR}/README.md"
    else
        echo -e "${YELLOW}!${NC} ${DIR}/README.md não encontrado"
        ((TOTAL_WARNINGS++))
    fi

done

echo

###############################################################################
# Diagramas
###############################################################################

echo "[4/6] Validando diagramas Mermaid..."

for diagram in assets/*.mmd; do

    if [[ -f "$diagram" ]]; then
        echo -e "${GREEN}✔${NC} $(basename "$diagram")"
    fi

done

echo

###############################################################################
# Arquivos vazios
###############################################################################

echo "[5/6] Procurando arquivos vazios..."

while IFS= read -r file; do

    echo -e "${YELLOW}!${NC} $file está vazio"

    ((TOTAL_WARNINGS++))

done < <(find . -type f -empty)

echo

###############################################################################
# Resultado
###############################################################################

echo "[6/6] Resultado Final"

echo

if [[ "$TOTAL_ERRORS" -eq 0 ]]; then

    echo -e "${GREEN}Projeto válido.${NC}"

else

    echo -e "${RED}Projeto possui erros.${NC}"

fi

echo

echo "Erros     : $TOTAL_ERRORS"
echo "Avisos    : $TOTAL_WARNINGS"

echo

if [[ "$TOTAL_ERRORS" -eq 0 ]]; then
    exit 0
else
    exit 1
fi
