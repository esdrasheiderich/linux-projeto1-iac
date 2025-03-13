#!/bin/bash

echo "Criando usuáros do sistema"

useradd debora -c "Debora Silva" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd debora -e

useradd joao -c "João Silva" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd joao -e

useradd ana -c "Ana Silva" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd ana -e

useradd jose -c "José Silva" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd jose -e

useradd agata -c "Agata Silva" -s /bin/bash -m -p $(openssl passwd -6 Senha123)
passwd agata -e

echo "Finalizado..."

