#!/bin/bash

echo "Excluindo usuários..."

userdel aj
userdel debora
userdel joao
userdel ana
userdel jose
userdel agata
userdel bruce


echo "Excluindo grupos..."
groupdel GRP_ADM
groupdel GRP_VEN


echo "Excluindo diretórios..."
rm -rfv /publica/

