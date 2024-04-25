#!/bin/bash

echo "Criação dos diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criação dos grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criação dos usuários"

useradd carlos -m -s /bin/bash -c "Carlos Santos" -p $(openssl passwd 123) -G GRP_ADM
useradd maria -m -s /bin/bash -c "Maria das Graças" -p $(openssl passwd 123) -G GRP_ADM
useradd joao -m -s /bin/bash -c "João Moraes" -p $(openssl passwd 123) -G GRP_ADM

useradd debora -m -s /bin/bash -c "Debora Costa" -p $(openssl passwd 123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -c "Sebastiana Souza" -p $(openssl passwd 123) -G GRP_VEN
useradd roberto -m -s /bin/bash -c "Roberto Silva" -p $(openssl passwd 123) -G GRP_VEN

useradd josefina -m -s /bin/bash -c "Josefina Cardoso" -p $(openssl passwd 123) -G GRP_SEC
useradd amanda -m -s /bin/bash -c "Amanda Pires" -p $(openssl passwd 123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -c "Rogerio Lopes" -p $(openssl passwd 123) -G GRP_SEC

echo "Alteração de permissões de diretórios"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "fim do script"



