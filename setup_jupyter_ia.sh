#!/bin/bash

# Definir nome da imagem e container
IMAGE_NAME="jupyter_ia"
CONTAINER_NAME="jupyter_ia_container"
DATA_DIR=~/jupyter-files

echo "=== Criando diretório de armazenamento local: $DATA_DIR ==="
mkdir -p $DATA_DIR

echo "=== Construindo a imagem Docker: $IMAGE_NAME ==="
docker build -t $IMAGE_NAME .

if [ $? -ne 0 ]; then
    echo "Erro: Falha na construção da imagem Docker."
    exit 1
fi

echo "=== Subindo o container com docker-compose ==="
docker-compose up -d

if [ $? -ne 0 ]; then
    echo "Erro: Falha ao iniciar o container."
    exit 1
fi

echo "=== Setup concluído! ==="

