#!/usr/bin/env bash

###############################################################################
# Projeto : Prompt Engineering Frameworks
# Autor   : Rubens Renato e Silva
# Objetivo: Automatizar a geração de uma release do projeto.
###############################################################################

set -euo pipefail

VERSION="${1:-v1.0.0}"
PROJECT_DIR="$(basename "$(pwd)")"
PACKAGE_NAME="${PROJECT_DIR}-${VERSION}.tar.gz"

GREEN="\033[0;32m"
RED="\033[0;31m"
NC="\033[0m"

echo "============================================================"
echo " Prompt Engineering Frameworks"
echo " Release Script"
echo "============================================================"

echo

###############################################################################
# Validação
###############################################################################

echo "[1/5] Executando validação..."

./validate.sh

echo -e "${GREEN}Validação concluída.${NC}"

echo

###############################################################################
# Atualização da versão do build
###############################################################################

echo "[2/5] Atualizando versão do build..."

sed -i "s/^VERSION=.*/VERSION=\"${VERSION}\"/" build.sh

echo -e "${GREEN}Versão atualizada para ${VERSION}.${NC}"

echo

###############################################################################
# Build
###############################################################################

echo "[3/5] Gerando pacote..."

./build.sh

echo

###############################################################################
# Organização
###############################################################################

echo "[4/5] Organizando artefatos..."

mkdir -p dist

mv -f *.tar.gz dist/

echo -e "${GREEN}Artefatos movidos para ./dist${NC}"

echo

###############################################################################
# Resumo
###############################################################################

echo "[5/5] Release finalizada"

echo

echo "Versão : ${VERSION}"

echo "Pacote : dist/${PACKAGE_NAME}"

echo

echo "============================================================"
echo -e "${GREEN}Release criada com sucesso!${NC}"
echo "============================================================"
