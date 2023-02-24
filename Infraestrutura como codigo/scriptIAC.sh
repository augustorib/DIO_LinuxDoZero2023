!bin/bash


echo "Criando os diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Iniciando a criação dos grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Iniciando a criação dos usuários..."

echo "Adicionando usuários ao grupo ADM"

#A opção openssl passwd -crypt não funcionou 
useradd  carlos  -c "Carlos da Silva" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM
useradd  maria   -c "Maria Aparecida" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM
useradd  joao    -c "João Alberto"    -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_ADM


echo "Adicionando usuários ao grupo VEN"

useradd debora     -c "Debora Lúcia"       -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Almeida" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN
useradd roberto    -c "Roberto Miguel"     -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_VEN


echo "Adicionando usuários ao grupo SEC"  

useradd josefina  -c "Josefina Lurdes" -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC
useradd amanda    -c "Amanda Kelly"    -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC
useradd rogerio   -c "Rogério Lima"    -m -s /bin/bash -p $(openssl passwd -6 123) -G GRP_SEC

echo "Mudando o dono das pastas para root"

chown root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec 

echo "Permissão dos diretórios"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec


echo "Encerrando o Script..."

