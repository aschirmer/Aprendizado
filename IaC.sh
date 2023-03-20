#!/bin/bash

echo "----Criando diretórios...----"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "----Criando grupos de usuários...----"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "----Criando usuários...----"

useradd carlos -s /bin/bash -m -p $(openssl passws -crypt Senha123) -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria-s /bin/bash -m -p $(openssl passws -crypt Senha123) -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -s /bin/bash -m -p $(openssl passws -crypt Senha123) -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -s /bin/bash -m -p $(openssl passws -crypt Senha123) -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -s /bin/bash -m -p $(openssl passws -crypt Senha123) -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -s /bin/bash -m -p $(openssl passws -crypt Senha123) -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -s /bin/bash -m -p $(openssl passws -crypt Senha123) -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -s /bin/bash -m -p $(openssl passws -crypt Senha123) -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -s /bin/bash -m -p $(openssl passws -crypt Senha123) -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC


echo "----Permissões de diretórios----"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
