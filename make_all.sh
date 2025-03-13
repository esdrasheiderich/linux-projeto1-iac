#!/bin/bash

echo "Criando diretórios..."
mkdir /publico/
mkdir /adm/
mkdir /ven/
mkdir /sec/

echo "Definindo permissões de diretórios..."  
chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Criando groups..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Definindo dono e grupos aos diretórios..."
chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "Criando usuários adm..."
useradd carlos -s /bin/bash -m -G GRP_ADM -p $(openssl passwd -6 adm123)
useradd maria -s /bin/bash -m -G GRP_ADM -p $(openssl passwd -6 adm123)
useradd joao -s /bin/bash -m -G GRP_ADM -p $(openssl passwd -6 adm123)

echo "Criando usuários ven..."
useradd debora -s /bin/bash -m -G GRP_VEN -p $(openssl passwd -6 ven123)
useradd sebastiana -s /bin/bash -m -G GRP_VEN -p $(openssl passwd -6 ven123)
useradd roberto -s /bin/bash -m -G GRP_VEN -p $(openssl passwd -6 ven123)

echo "Criando usuários sec..."
useradd josefina -s /bin/bash -m -G GRP_SEC -p $(openssl passwd -6 sec123)
useradd amanda -s /bin/bash -m -G GRP_SEC -p $(openssl passwd -6 sec123)
useradd rogerio -s /bin/bash -m -G GRP_SEC -p $(openssl passwd -6 sec123)
