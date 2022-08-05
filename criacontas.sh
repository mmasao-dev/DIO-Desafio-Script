#! /bin/bash

# adicionando diretórios e alterando permissões

mkdir /publico /adm /ven /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

# adicionar Grupos e atribuindo diretório

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

chgrp GRP_ADM /adm
chgrp GRP_VEN /ven
chgrp GRP_SEC /sec

# adicionando contas

useradd -m -s /bin/bash carlos -G GRP_ADM #testar aqui

useradd -m -s /bin/bash maria
usermod -a -G GRP_ADM maria

useradd -m -s /bin/bash joao_
usermod -a -G GRP_ADM joao_

useradd -m -s /bin/bash debora
usermod -a -G GRP_VEN debora

useradd -m -s /bin/bash sebastiana
usermod -a -G GRP_VEN sebastiana

useradd -m -s /bin/bash roberto
usermod -a -G GRP_VEN roberto

useradd -m -s /bin/bash josefina
usermod -a -G GRP_VEN josefina

useradd -m -s /bin/bash amanda
usermod -a -G GRP_VEN amanda

useradd -m -s /bin/bash rogerio
usermod -a -G GRP_VEN rogerio

