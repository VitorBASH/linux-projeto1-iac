#!/bin/bash

#criando grupos
echo "Criando grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#criando usuários
echo "Criando usuários..."
#grupo ADM
useradd carlos -G GRP_ADM -m -s /bin/bash -p "$(openssl passwd -6 password123)"
useradd maria -G GRP_ADM -m -s /bin/bash -p "$(openssl passwd -6 password123)"
useradd joao -G GRP_ADM -m -s /bin/bash -p "$(openssl passwd -6 password123)"
#grupo VEN
useradd debora -G GRP_VEN -m -s /bin/bash -p "$(openssl passwd -6 password123)"
useradd sebastiana -G GRP_VEN -m -s /bin/bash -p "$(openssl passwd -6 password123)"
useradd roberto -G GRP_VEN -m -s /bin/bash -p "$(openssl passwd -6 password123)"
#grupo SEC
useradd jesefina -G GRP_SEC -m -s /bin/bash -p "$(openssl passwd -6 password123)"
useradd amanda -G GRP_SEC -m -s /bin/bash -p "$(openssl passwd -6 password123)"
useradd rogerio -G GRP_SEC -m -s /bin/bash -p "$(openssl passwd -6 password123)"

#criando diretórios os 4 diretórios de uma vez.
echo "Criando diretórios..."
mkdir /{publico,adm,ven,sec}

#trocando o grupo proprietário dos diretórios.
echo "Gerenciando permissões..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
#definindo as permissões de leitura,escrita,execução.
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado!"
