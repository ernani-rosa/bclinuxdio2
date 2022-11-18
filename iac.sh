#Script de IaC do bootcamp da DIO

#! /bin/bash
# Atualizando repositório local
apt-get update -y

# Atualizando dependencias
apt-get upgrade -y

# Instalando apache
apt-get install apache2 -y

# Baixando site
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -O /tmp/main.zip

# Instalando unzip
apt-get install unzip -y

# Descompactando arquivo
cd /tmp
unzip main.zip

# Copiando arquivos para o diretório do apache
cp /tmp/linux-site-dio-main/* /var/www/html -r

# Reiniciando serviço
systemctl restart apache2
